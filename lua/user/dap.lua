require('dap-python').setup('~/.virtualenvs/debugpy/bin/python')
table.insert(require('dap').configurations.python, {
  type = 'python',
  request = 'launch',
  name = 'My custom launch configuration',
  program = '${file}',
  -- ... more options, see https://github.com/microsoft/debugpy/wiki/Debug-configuration-settings
})

require('dapui').setup()
require('nvim-dap-virtual-text').setup()
