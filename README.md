# RebugCheats

![Foo](https://i.imgur.com/f0ApXbe.png)

Rebug is a cheat full of features from other menus that has been made into one big one. It has a few features from enigma and a few custom ones. The cheat is mainly being released due to having public features. The bhop that rebug has is one that was made in 2017 but is still good to this day.

![Foo](https://i.imgur.com/rlxFY4G.png)

* Easy to setup
* ClientSide bypass
* SNTE = Detour

## Installation
* Place 'external' inside docs folder
* Follow instructions to gameowner.exe
* In-game type in console 'qrextern rebug.lua'
* Insert to open/close

## SNTE Detour
```lua
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
```
![Foo](https://i.imgur.com/yVyd89x.png)

Make sure to credit me :)
