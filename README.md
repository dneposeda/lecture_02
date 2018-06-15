Docker образ собирается на базе Ubuntu 16.04.

В образе устанавлино NodeJS и NPM.


Из папки "project" копируется файлы в /var/www/


При запуске образа стартует web-server nodejs порт 80.


Команда для сборки

docker build -t dneposeda/ubuntu-node .

Запуск образа 

docker run -p 30000:80 dneposeda/ubuntu-node

Результат можно посмотреть в браузере localhost:30000
