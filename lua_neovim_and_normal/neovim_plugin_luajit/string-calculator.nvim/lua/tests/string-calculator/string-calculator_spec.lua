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
end)