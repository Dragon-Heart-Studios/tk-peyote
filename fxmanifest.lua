fx_version 'cerulean'
game 'gta5'

description 'DHS-Peyote'
version '1.1.0'

use_experimental_fxv2_oal 'yes'
bridge 'DHS-Bridge'

server_scripts {
    'server.lua'
}

shared_scripts {
    '@DHS-Bridge/bridge.lua',
}

client_scripts {
	'client.lua'
}

lua54 'yes'

escrow_ignore {
    'server.lua',
    'client.lua'
}