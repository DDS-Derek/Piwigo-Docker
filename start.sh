#!/usr/bin/env bash

if [ ! -f "/app/web/galleries/index.php" ]; then
 echo -e "\033[36mgalleries文件夹不存在,正在创建... \033[0m"
 mv /web/galleries/index.php /app/web/galleries
 echo "galleries文件夹创建成功"
else
 echo "galleries文件夹存在"
 chown -R www:www /app/web
 chmod 777 /app/web
fi

if [ ! -f "/app/web/local/index.php" ]; then
 echo -e "\033[36mlocal文件夹不存在,正在创建... \033[0m"
 mv /web/local/config /app/web/local
 mv /web/local/css /app/web/local
 mv /web/local/language /app/web/local
 mv /web/local/index.php /app/web/local
 echo "local文件夹创建成功"
else
 echo "local文件夹存在"
 chown -R www:www /app/web
 chmod 777 /app/web
fi

if [ ! -f "/app/web/plugins/index.php" ]; then
 echo -e "\033[36mplugins文件夹不存在,正在创建... \033[0m"
 mv /web/plugins/AdminTools /app/web/plugins
 mv /web/plugins/language_switch /app/web/plugins
 mv /web/plugins/LocalFilesEditor /app/web/plugins
 mv /web/plugins/TakeATour /app/web/plugins
 mv /web/plugins/index.php /app/web/plugins
 echo "plugins文件夹创建成功"
else
 echo "plugins文件夹存在"
 chown -R www:www /app/web
 chmod 777 /app/web
fi

if [ ! -f "/app/web/themes/index.php" ]; then
 echo -e "\033[36mthemes文件夹不存在,正在创建... \033[0m"
 mv /web/themes/default /app/web/themes
 mv /web/themes/elegant /app/web/themes
 mv /web/themes/modus /app/web/themes
 mv /web/themes/smartpocket /app/web/themes
 mv /web/themes/index.php /app/web/themes
 echo "themes文件夹创建成功"
else
 echo "themes文件夹存在"
 chown -R www:www /app/web
 chmod 777 /app/web
fi

echo -e "\033[36m设置权限中... \033[0m"
chown -R www:www /app/web
chmod 777 /app/web

echo -e "\033[36m启动 \033[0m"
exec /usr/bin/supervisord -n -c /etc/supervisord.conf