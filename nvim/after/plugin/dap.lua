local dap = require("dap")
dap.adapters.php = {
	type = "executable",
	command = "php-debug-adapter",
	--args = { '/path/to/vscode-php-debug/out/phpDebug.js' }
}

dap.configurations.php = {
	{
		type = "php",
		request = "launch",
		name = "Listen for Xdebug",
		port = 9000,
	},
}
