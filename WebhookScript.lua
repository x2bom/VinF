local http_request = syn.request or http_request
local tablestatus = {
    dungeonfarm = "Dungeon",
    krakenfarm = "Sea Creature",
    shipfarm = "Ship",
    ["so ez bro"] = "Mentally farming to max",
    ["helo"] = "Testing webhook"
}
function getstatus(c)
    if c ~= "helo" and c ~= "so ez bro" then
        for i,v in next, tablestatus do
            if Settings[tostring(i)] then
                return v 
            end
        end
    end
    return tablestatus[c]
end
local sendmsg = function(title,itemname,name,forceping)
    if itemname == "Gura" then
        msg1 = {content="https://cdn.discordapp.com/attachments/881835974173265930/932185488872316968/unknown_1.png omg gura"}
        local response = http_request(
        {
        Url = getgenv().Settings.webhookurl,
        Method = "POST",
        Headers = {
        ["Content-Type"] = "application/json"
        },
        Body = game:GetService("HttpService"):JSONEncode(msg1)
        }
        )
    end
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
                },
                {
                    ["name"] = "Information",
                    ["value"] = "Method : "..getstatus(itemname).."\n".."Time : "..os.date("%X"),
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
