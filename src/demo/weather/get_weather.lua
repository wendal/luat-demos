module(...,package.seeall)
---------------------------------------------------------------
require "net"
net.startQueryAll(60000, 60000)
---------------------------------------------------------------
require "lbsLoc"
---------------------------------------------------------------
_LP = "DEMO.weather"
---------------------------------------------------------------
local function reqLbsLoc()
    lbsLoc.request(getLocCb)
end
---------------------------------------------------------------
-- {"lat":"040.0500488","result":0,"lng":"116.3105545"}
log.info(_LP, "welcome ^_^")
function getLocCb(result,lat,lng,addr) 
    log.info(_LP, result,lat,lng)
    --获取经纬度成功
    if result==0 then
        local re = {
            result = result,
            lat = lat,
            lng = lng,
            addr = addr
        }
        local json = json.encode(re)
        log.info(_LP, "lbsLoc result OK:", json)
    --失败
    else
        log.info(_LP, "lbsLoc Result fail:", result)
        sys.timerStart(reqLbsLoc,10000)
    end
end
---------------------------------------------------------------
reqLbsLoc()

