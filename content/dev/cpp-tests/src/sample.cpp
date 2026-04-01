#include "sample.h"

#include <cctype>
#include <utility>

namespace kit {

static bool is_space(unsigned char c) {
  return std::isspace(c) != 0;
}

std::string trim(std::string s) {
  auto begin = s.begin();
  while (begin != s.end() && is_space(static_cast<unsigned char>(*begin))) {
    ++begin;
  }

  auto end = s.end();
  while (end != begin) {
    auto prev = std::prev(end);
    if (!is_space(static_cast<unsigned char>(*prev))) {
      break;
    }
    end = prev;
  }

  return std::string(begin, end);
}

}

