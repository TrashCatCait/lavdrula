# Lavdrula color scheme nvim 


## Install Guide:
To install just use whatever nvim package manager you normally use e.g. packer or vim-plug. Adding this to your vimrc 
```lua
    --- init.lua 
    use { "TrashCatCait/lavdrula" }

```

##Setting color scheme 
Currently we don't support the vim colorschme selection at runtime instead we just set up the colorscheme by the following LUA code 
```lua 
    require("lavdrula").setup() 
```
