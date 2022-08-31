describe("String calculator tests", function()
  -- Run time path is not getting loaded automatically, so modify it before each test
  before_each(function()
    local path_to_plugin = debug.getinfo(1).source:match("@(.*)/.*/.*/.*/.*"):gsub('"', "")
    vim.cmd([[set runtimepath+=]] .. path_to_plugin)
    P(path_to_plugin)
  end)

  it("Require the module", function()
    local package = require("string-calculator").calculator
    local type_of_package = type(package)
    assert.are.same(type_of_package, "function")
  end)
end)
