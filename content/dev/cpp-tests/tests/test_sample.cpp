#include "doctest.h"

#include "sample.h"

TEST_CASE("kit::trim removes surrounding whitespace") {
  CHECK(kit::trim("  a") == "a");
  CHECK(kit::trim("a  ") == "a");
  CHECK(kit::trim("  a  ") == "a");
  CHECK(kit::trim("\t a \r\n") == "a");
  CHECK(kit::trim("") == "");
  CHECK(kit::trim("   ") == "");
}

