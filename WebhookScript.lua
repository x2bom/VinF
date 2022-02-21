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
function tabletostr(c)
    m = ""
    for i,v in next, c do
        m = m.." "..(v.Name or v)
    end
    return m
end
pcall(function()
    local LegendaryDF = tabletostr(game:GetService("ReplicatedStorage").Modules.ToolDesc.Fruits.Mythical:GetChildren())..tabletostr(game:GetService("ReplicatedStorage").Modules.ToolDesc.Fruits.Legendary:GetChildren())
end)
getgenv().gettext = function(v,is_force)
    if not is_force then
        if not Settings.MentionLegendary then
            return "@everyone"
        else
            if string.find(LegendaryDF,v) then
                return "@everyone"
            else
                return ""
            end
        end
    else
        return "@everyone"
    end
end
local links ={Gura="https://cdn.discordapp.com/attachments/881835974173265930/932185488872316968/unknown_1.png",Tori="https://cdn.discordapp.com/attachments/934829635114508428/935052379005546496/unknown.png"}
local sendmsg = function(title,itemname,name,forceping)
    if links[itemname] then
        msg1 = {content=links[itemname].." omg "..itemname:lower()}
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
