@echo off&(pushd %~dp0)
title curl tool
set env_dir=%~dp0curl-7.81.0-win32-mingw\
set path="%env_dir%";%path%;

echo # curl下载地址
echo https://curl.se/windows/
echo # get请求
echo curl https://www.baidu.com
echo # get请求(显示全过程解析)
echo curl -v "http://www.baidu.com"
echo # post请求
echo curl -d "param1=value1&param2=value2" "http://www.baidu.com"
echo curl -l -H "Content-type: application/json" -X POST -d '{"phone":"13521389587","password":"test"}' http://domain/apis/users.json
echo # 测试网页返回值
echo curl -o /dev/null -s -w %{http_code} www.linux.com
echo # 使用代理
echo curl -x 192.168.100.100:1080 http://www.linux.com
echo # 修改useragent
echo curl -A "Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.0)" http://www.linux.com
echo # 修改referer
echo curl -e "www.linux.com" http://mail.linux.com
echo # 下载网页
echo curl https://www.baidu.com >> baidu.html
echo # 下载文件
echo curl -o dodo1.jpg http:www.linux.com/dodo1.JPG
echo curl -O http://www.linux.com/dodo1.JPG
echo # 循环下载
echo curl -O http://www.linux.com/dodo[1-5].JPG
echo curl https://127.0.0.1 -k
echo # 分块下载
echo curl -r 0-100 -o dodo1_part1.JPG http://www.linux.com/dodo1.JPG
echo curl -r 100-200 -o dodo1_part2.JPG http://www.linux.com/dodo1.JPG
echo curl -r 200- -o dodo1_part3.JPG http://www.linux.com/dodo1.JPG
echo cat dodo1_part* > dodo1.JPG