-- obfuscation by Neko Network v2.4
-- NekoHub public loader — checks the game, then loads its script
local BASE = "https://raw.githubusercontent.com/nyatoru/public-script/refs/heads/main/"
repeat task.wait() until game:IsLoaded()
local Players = game:GetService("Players")
local player = Players.LocalPlayer or Players.PlayerAdded:Wait()
local Games = {
    [93978595733734] = "games/ViolenceDistrict.lua",
    [8534845015] = "games/SakuraStand.lua",
    [119048529960596] = "games/RestaurantTycoon3.lua",
}
local path = Games[game.PlaceId]
if not path then
    player:Kick(("\nNekoHub\n\nThis game is not supported.\nPlaceId: %d"):format(game.PlaceId))
    return
end
loadstring(game:HttpGet(BASE .. path))()
