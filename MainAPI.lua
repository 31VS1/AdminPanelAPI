local players = game:GetService("Players")
local httpservice = game:GetService("HttpService")
local lplr = players.LocalPlayer

local function formatTime(seconds)
    local time = {
        hours = math.floor(seconds / 3600),
        minutes = math.floor((seconds % 3600) / 60),
        seconds = seconds % 60
    }
    time.formatted = string.format("%dh %dm %ds", time.hours, time.minutes, time.seconds)
    return time
end

local function getcurrentDate()
    local script = Instance.new('LocalScript', TextLabel_6)
    local currentDate = os.date("%m/%d/%Y")
    script.Parent.Text = " "..currentDate
end

local API = {
    Playercount = #players:GetPlayers(),
    formatTime = formatTime,
    Time = formatTime(os.time()),
    Ostime = os.time(),
    getcurrentDate = getcurrentDate
}

return API
