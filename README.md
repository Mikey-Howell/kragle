# kragle
The core gamemode that holds everything together

### Kragle is plugin based
```
<your module name>/
  module.lua
```
example of module.lua
```Lua
if SERVER then AddCSLuaFile() end -- for modules that should run on client
fw.dep(SHARED, 'hook') -- module uses hooks
fw.hook.Add('PlayerSay', function(pl) -- automagically injects the hook into the gamemode table
  pl:Kill() -- speaking out against the authority is death~
end)
```
# Dependencies
Please install and keep the following up to date
 - https://github.com/GMFactionWars/netdoc for networking
 - https://github.com/GMFactionWars/ra
