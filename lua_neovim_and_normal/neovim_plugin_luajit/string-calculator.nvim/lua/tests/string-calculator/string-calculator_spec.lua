describe("String calculator tests --", function()
  before_each(function()
    -- Run time path is not getting loaded automatically, so modify it before each test
    -- This will find the first directory named 'lua' and add the directory one level above to vim run time path
    local path_to_plugin = debug.getinfo(1).source:match("@(.*)[/\\]lua[/\\]"):gsub('"', "")
    vim.cmd([[set runtimepath+=]] .. path_to_plugin)
    print(string.format("Adding: %s to neovim runtimepath because plenary tests fail without this", path_to_plugin))
  end)

  it("Require the module", function()
    local package = require("string-calculator").calculator
    local type_of_package = type(package)
    assert.are.same(type_of_package, "function")
  end)
end)
