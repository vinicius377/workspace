require 'options'
local status = pcall(require 'plugins.lazy-installer')
require 'mapping'

local lazy = require('lazy')

lazy.setup('plugins')
