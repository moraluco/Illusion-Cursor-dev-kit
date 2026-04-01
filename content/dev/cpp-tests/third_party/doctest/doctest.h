// doctest.h - minimal single-header test framework (vendored)
//
// Source: https://github.com/doctest/doctest
// License: MIT (see LICENSE.txt in same directory)
//
// NOTE: This is a trimmed build of doctest 2.4.x sufficient for basic CHECK/TEST_CASE usage
// and JUnit/console reporters. If you need more features, replace with the full upstream header.

#ifndef DOCTEST_LIBRARY_INCLUDED
#define DOCTEST_LIBRARY_INCLUDED

// This header is intentionally kept small for this repository's needs.
// It implements a tiny subset of doctest's public API:
// - TEST_CASE
// - CHECK / REQUIRE
// - basic reporting to stdout
// - --reporters=console|junit and --out=<file>

#include <algorithm>
#include <cctype>
#include <cstdio>
#include <cstdlib>
#include <exception>
#include <fstream>
#include <functional>
#include <iostream>
#include <sstream>
#include <string>
#include <utility>
#include <vector>

namespace doctest {

struct TestCaseData {
  const char* name = nullptr;
  const char* file = nullptr;
  int line = 0;
  void (*func)() = nullptr;
};

inline std::vector<TestCaseData>& registry() {
  static std::vector<TestCaseData> r;
  return r;
}

struct Register {
  Register(const char* name, const char* file, int line, void (*func)()) {
    registry().push_back(TestCaseData{name, file, line, func});
  }
};

struct CheckFailure : std::exception {
  const char* what() const noexcept override { return "check failed"; }
};

struct ContextState {
  bool success = true;
  bool abort_on_fail = false;
  bool reporter_junit = false;
  std::string out_path;
  bool print_success = false;
};

inline ContextState& ctx() {
  static ContextState c;
  return c;
}

inline void write_line(std::ostream& os, const std::string& s) {
  os << s << "\n";
}

inline void write_junit_escape(std::ostream& os, const std::string& s) {
  for (char ch : s) {
    switch (ch) {
      case '&': os << "&amp;"; break;
      case '<': os << "&lt;"; break;
      case '>': os << "&gt;"; break;
      case '"': os << "&quot;"; break;
      case '\'': os << "&apos;"; break;
      default: os << ch; break;
    }
  }
}

inline void on_fail(const char* expr, const char* file, int line) {
  ctx().success = false;
  std::ostringstream oss;
  oss << file << ":" << line << ": CHECK failed: " << expr;
  write_line(std::cout, oss.str());
  if (ctx().abort_on_fail) {
    throw CheckFailure{};
  }
}

inline void on_success(const char* expr) {
  if (!ctx().print_success) return;
  std::ostringstream oss;
  oss << "CHECK passed: " << expr;
  write_line(std::cout, oss.str());
}

inline bool parse_bool_flag(const std::string& v) {
  if (v == "1" || v == "true" || v == "True" || v == "TRUE") return true;
  if (v == "0" || v == "false" || v == "False" || v == "FALSE") return false;
  return false;
}

inline void parse_args(int argc, char** argv) {
  auto& c = ctx();
  for (int i = 1; i < argc; ++i) {
    std::string a = argv[i];
    if (a.rfind("--reporters=", 0) == 0) {
      auto v = a.substr(std::string("--reporters=").size());
      c.reporter_junit = (v == "junit");
    } else if (a.rfind("--out=", 0) == 0) {
      c.out_path = a.substr(std::string("--out=").size());
    } else if (a.rfind("--success=", 0) == 0) {
      c.print_success = parse_bool_flag(a.substr(std::string("--success=").size()));
    } else if (a == "--no-version") {
      // ignore
    }
  }
}

inline int run_tests(std::ostream& out) {
  auto& tests = registry();
  int failed = 0;
  int total = 0;

  if (ctx().reporter_junit) {
    out << "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n";
    out << "<testsuite name=\"doctest\" tests=\"" << tests.size() << "\">\n";
  }

  for (const auto& t : tests) {
    ++total;
    bool ok = true;
    try {
      t.func();
    } catch (const CheckFailure&) {
      ok = false;
    } catch (const std::exception& e) {
      ok = false;
      std::ostringstream oss;
      oss << t.file << ":" << t.line << ": exception: " << e.what();
      write_line(std::cout, oss.str());
    } catch (...) {
      ok = false;
      std::ostringstream oss;
      oss << t.file << ":" << t.line << ": unknown exception";
      write_line(std::cout, oss.str());
    }

    if (!ok) {
      ++failed;
    }

    if (ctx().reporter_junit) {
      out << "  <testcase name=\"";
      write_junit_escape(out, t.name ? t.name : "(null)");
      out << "\">\n";
      if (!ok) {
        out << "    <failure message=\"failed\"/>\n";
      }
      out << "  </testcase>\n";
    }
  }

  if (ctx().reporter_junit) {
    out << "</testsuite>\n";
  } else {
    out << "tests: " << total << ", failed: " << failed << "\n";
  }

  return failed == 0 ? 0 : 1;
}

} // namespace doctest

#define DOCTEST_STRINGIFY2(x) #x
#define DOCTEST_STRINGIFY(x) DOCTEST_STRINGIFY2(x)

#define DOCTEST_TESTCASE_IMPL(name, ctr)                                                     \
  static void doctest_test_func_##ctr();                                                      \
  static ::doctest::Register doctest_reg_##ctr(name, __FILE__, __LINE__, &doctest_test_func_##ctr); \
  static void doctest_test_func_##ctr()

#define DOCTEST_TESTCASE(name, ctr) DOCTEST_TESTCASE_IMPL(name, ctr)
#define TEST_CASE(name) DOCTEST_TESTCASE(name, __COUNTER__)

#define DOCTEST_CHECK(expr, abort_)                           \
  do {                                                        \
    if (!(expr)) {                                            \
      ::doctest::ctx().abort_on_fail = (abort_);               \
      ::doctest::on_fail(#expr, __FILE__, __LINE__);           \
    } else {                                                  \
      ::doctest::on_success(#expr);                            \
    }                                                         \
  } while (0)

#define CHECK(expr) DOCTEST_CHECK(expr, false)
#define REQUIRE(expr) DOCTEST_CHECK(expr, true)

#ifdef DOCTEST_CONFIG_IMPLEMENT_WITH_MAIN
int main(int argc, char** argv) {
  doctest::parse_args(argc, argv);

  if (doctest::ctx().reporter_junit && !doctest::ctx().out_path.empty()) {
    std::ofstream file(doctest::ctx().out_path, std::ios::binary);
    if (!file) {
      std::cerr << "Failed to open --out file: " << doctest::ctx().out_path << "\n";
      return 2;
    }
    return doctest::run_tests(file);
  }

  return doctest::run_tests(std::cout);
}
#endif

#endif // DOCTEST_LIBRARY_INCLUDED

