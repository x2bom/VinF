local http_request = syn.request or http_request
local sendmsg = function(title,itemname,name,forceping)
    msg = {
        ["content"] = getgenv().gettext(itemname,forceping),
        ["embeds"] = {
            {
                ["color"] = tonumber(0x78B2DD),
                ["title"] = "Vin Hub",
                ["fields"] = {
                    {
                    ["name"] = "Username",
                    ["value"] = "||"..name.."||",
                    ["inline"] = false
                },
                {
                    ["name"] = title,
                    ["value"] = itemname,
                    ["inline"] = false,  
                }
                },
                ["thumbnail"] = {
                    ["url"] = getgenv().thumbnails[itemname],
                },
                ["footer"] = {
                    ["icon_url"] = "https://cdn.discordapp.com/icons/880044612343955457/90fee66ba0963828fcf37edf0ff73184.png",
                    ["text"] = "Grand Piece Online - Vin Hub",
                }
            }
        }
    }  
    local response = http_request(
    {
    Url = getgenv().Settings.webhookurl,
    Method = "POST",
    Headers = {
    ["Content-Type"] = "application/json"
    },
    Body = game:GetService("HttpService"):JSONEncode(msg)
    }
    )
end
return sendmsg
