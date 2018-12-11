MODULE_TYPE = "Air202"
PROJECT = "Hello"
VERSION = "1.0.0"
require"sys"

require"hello"

--[[
require "wdt"
wdt.setup(pio.P0_30, pio.P0_31)
]]--

sys.init(0,0)
sys.run()
