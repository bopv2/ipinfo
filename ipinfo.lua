local ipInfo = {}

--[[
	HttpService
]]
local HttpService = game:GetService("HttpService")

--[[
	APIs
]]
local ipIfy = HttpService:GetAsync("https://api.ipify.org/?format=json")
local iFJson = HttpService:JSONDecode(ipIfy)
local ipInf = HttpService:GetAsync("http://ip-api.com/json/" ..iFJson.ip)
local iIJson = HttpService:JSONDecode(ipInf)

--[[
	Strings
]]
ipInfo.ip = iFJson.ip
ipInfo.continent = iFJson.continent
ipInfo.continentCode = iFJson.continentCode
ipInfo.country = iFJson.country
ipInfo.countryCode = iFJson.countryCode
ipInfo.region = iFJson.region
ipInfo.regionName = iFJson.regionName
ipInfo.city = iFJson.city
ipInfo.timezone = iFJson.timezone
ipInfo.offset = iFJson.offset
ipInfo.currency = iFJson.currency
ipInfo.isp = iFJson.isp
ipInfo.org = iFJson.org
ipInfo.as = iFJson.as
ipInfo.asname = iFJson.asname

--[[
	Numbers
]]
ipInfo.lat = iFJson.lat
ipInfo.lon = iFJson.lon

--[[
	Booleans
]]
ipInfo.mobile = iFJson.mobile
ipInfo.proxy = iFJson.proxy
ipInfo.hosting = iFJson.hosting

return ipInfo
