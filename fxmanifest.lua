fx_version 'cerulean'
game 'gta5'

author 'DonHulieo'
description 'Jewellery Store Heist for QBCore'
version '1.3.5'

shared_scripts {
  '@gr_lib/init.lua',
  '@bridge/init.lua',
  'locale/en.lua', 
  'locale/*.lua', 
  'config.lua'
}

client_script {
  'client/main.lua'
}

server_scripts {
  '@oxmysql/lib/MySQL.lua', 
  'server/main.lua'
}

dependencies {
  'gr_lib',
  'bridge',
  'ox_lib',
  'oxmysql'
}

lua54 'yes'
