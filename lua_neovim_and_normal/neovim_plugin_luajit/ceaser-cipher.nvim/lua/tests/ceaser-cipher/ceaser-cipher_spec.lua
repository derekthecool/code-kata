describe("Ceaser cipher tests --", function()
	before_each(function()
		-- Run time path is not getting loaded automatically, so modify it before each test
		-- This will find the first directory named 'lua' and add the directory one level above to vim run time path
		local path_to_plugin = debug.getinfo(1).source:match("@(.*)[/\\]lua[/\\]"):gsub('"', "")
		vim.cmd([[set runtimepath+=]] .. path_to_plugin)
		print(string.format("Adding: %s to neovim runtimepath because plenary tests fail without this", path_to_plugin))
	end)

	it("Require the module", function()
		local package = require("ceaser-cipher").cipher
		local type_of_package = type(package)
		assert.are.same(type_of_package, "function")
	end)

	it("Single letter conversion", function()
		local cipher = require("ceaser-cipher").cipher
		local output = cipher("A", 2)
		assert.are.same("C", output)
	end)

	it("Single letter conversion with wrap", function()
		local cipher = require("ceaser-cipher").cipher
		local output = cipher("B", 25)
		assert.are.same("A", output)
	end)

	it("Entire word", function()
		local cipher = require("ceaser-cipher").cipher
		local output = cipher("ABC", 1)
		assert.are.same("BCD", output)
	end)
end)
