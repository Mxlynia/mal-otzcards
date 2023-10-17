fx_version 'cerulean'
game 'gta5'

author 'Chamallaw, Malynia and Jimmy'
description 'OutlawZ Cards'
version '1.0'

shared_script {'shared/config.lua', 'shared/language.lua', 'shared/event.lua'} 
client_script 'client/client.lua'
server_script 'server/server.lua'

ui_page 'html/index.html'

files {
  'html/*.html',
  'html/*.jpg',
  'html/*.png',
  'html/js/*.js',
  'html/css/*.css',
  'html/img/*.jpg',
  'html/img/*.png',
}
