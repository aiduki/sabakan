#!/bin/bash
server=sv_web_aiduki

# Link処理
sudo ln -nfs /sabakan/${server}/etc/nginx/conf.d/blog.aiduki.com.conf /etc/nginx/conf.d/blog.aiduki.com.conf

# その他処理
sudo mkdir -p /var/www/html/blog.aiduki.com
sudo mkdir -p /var/log/blog.aiduki.com