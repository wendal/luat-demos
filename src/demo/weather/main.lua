MODULE_TYPE = "Air202"
PROJECT = "GET WEATHER"
VERSION = "0.0.1"
require "sys"

--- prepare the PRODUCT_KEY for the lbsLoc
PRODUCT_KEY = "c4JOdFOj4rMWL522LSnMKEW5ZIOLJREE"

--- setup log
require "log"
LOG_LEVEL = log.LOGLEVEL_TRACE

-- main logic
require "get_weather"

--- feed the watchdog
require "wdt"
wdt.setup(pio.P0_30, pio.P0_31)

sys.init(0,0)
sys.run()
