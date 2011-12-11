require "luaunit"

local string_ext = require "string_ext"

TestStringExt = {}

  function TestStringExt:testDoubleQuote()
    local expectedResult = '"The quick brown fox"'
    local result = string_ext.string.doublequote('The quick brown fox')
    assertEquals( result, expectedResult )
  end

  function TestStringExt:testSingleQuote()
    local expectedResult = "'The quick brown fox'"
    local result = string_ext.string.singlequote("The quick brown fox")
    assertEquals( result, expectedResult )
  end

LuaUnit:run()
