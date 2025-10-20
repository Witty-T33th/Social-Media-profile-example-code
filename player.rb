# player.rb
# Запуск простого локального веб-сервера

require 'webrick'

root = File.expand_path('.')
server = WEBrick::HTTPServer.new :Port => 8000, :DocumentRoot => root

trap 'INT' do
  server.shutdown
end

puts "🌐 Сервер запущен! Открой http://localhost:8000/index.html в браузере"
server.start



#Ruby в этом проекте работает как локальный сервер, который запускает сайт и отдаёт файлы браузеру (HTML, CSS, музыку и картинки).
#Без Ruby сайт просто будет открываться как файлы,
#а с Ruby — он работает как настоящий мини-веб-сервер,
#примерно как настоящий сайт в интернете.