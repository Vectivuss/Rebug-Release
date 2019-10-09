# Rebug Script Release

![Foo](https://i.imgur.com/f0ApXbe.png)

Rebug is a cheat full of features from other menus that has been made into one big one. It has a few features from enigma and a few custom ones. The cheat is mainly being released due to having public features. The bhop that rebug has is one that was made in 2017 but is still good to this day.

![Foo](https://i.imgur.com/rlxFY4G.png)

* Easy to setup
* ClientSide bypass
* SNTE = Detour

## Installation
* Place 'rebug.lua' inside 'garrysmod/lua' folder
* In-Game in console type 'lua_openscript_cl rebug.lua
* Press insert to open/close menu

## SNTE Detour
```lua
Plist5.OnEnter = function(self)

	surface.PlaySound("buttons/button18.wav")

	noob.Notify("Targeting: '" .. Plist5:GetValue() .. "'")

	channel = self:GetValue()
end
```
![Foo](https://i.imgur.com/yVyd89x.png)

Make sure to credit me :)
