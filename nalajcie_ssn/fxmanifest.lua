-- [[ Fx info ]] --

fx_version 'bodacious'
game 'gta5'
lua54 'yes'

-- [[ Autor info ]] --

author 'NaLajcie#4754'
version '1.0.0'
description 'NaLajcie System SSN'

-- [[ server Scripts ]] --

server_scripts {
    '@oxmysql/lib/MySQL.lua',
    'server/server.lua.lua',
}

-- [[ Shared Scripts]] --

shared_scripts {
    '@es_extended/imports.lua',
    '@ox_lib/init.lua'
}

-- [[ Dependency ]] --

dependency {
    'oxmysql',
    'ox_lib'
}
