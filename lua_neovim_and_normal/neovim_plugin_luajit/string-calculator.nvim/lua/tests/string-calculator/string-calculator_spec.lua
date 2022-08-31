describe("String calculator tests", function()
  before_each(function()
    --[[
    Run time path is not getting loaded automatically, so modify it before each test

    Project directory tree view:
    lua/
    ├── string-calculator
    │   ├── init.lua
    │   └── string-calculator-function.lua
    └── tests
        └── string-calculator
            └── string-calculator_spec.lua

    Our test files are the '_spec.lua' files. So adding the directory 4 levels up will set our runtimepath properly.
    ]]

    local path_to_plugin = debug.getinfo(1).source:match("@(.*)/.*/.*/.*/.*"):gsub('"', "")
    vim.cmd([[set runtimepath+=]] .. path_to_plugin)
    print(string.format("Adding: %s to neovim runtimepath because plenary tests fail without this", path_to_plugin))
  end)

  it("Require the module", function()
    local package = require("string-calculator").calculator
    local type_of_package = type(package)
    assert.are.same(type_of_package, "function")
  end)

  it("Empty string", function()
    local calculator = require("string-calculator").calculator
    local output = calculator("")
    assert.are.equals(0, output)
  end)

  it("Single number", function()
    local calculator = require("string-calculator").calculator
    for number = 0, 1000 do
      local output = calculator(tostring(number))
      assert.are.equals(number, output)
    end
  end)

  it("Two numbers", function()
    local calculator = require("string-calculator").calculator
    for _ = 1, 100 do
      local number1 = math.random(0, 1000)
      local number2 = math.random(0, 1000)
      local output = calculator(string.format("%d,%d", number1, number2))
      assert.are.equals(number1 + number2, output)
    end
  end)
end)
