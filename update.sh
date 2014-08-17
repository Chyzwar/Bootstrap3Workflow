#!/bin/bash


#Install bower update and ant 
apt-get -u install ant
npm install -g bower-update


cd Sources

bower-update

cd ..

# update to new versions
cp -r Sources/html5shiv/dist/* NewProject/public/javascripts/
cp -r Sources/jquery/* NewProject/app/assets/jquery/
cp -r Sources/respond/dest/* NewProject/public/javascripts/
cp -r Sources/modernizr/modernizr.js NewProject/app/assets/javascripts/
cp -r Sources/bootstrap/dist/fonts/* NewProject/public/fonts/
cp -r Sources/bootstrap/dist/js/* NewProject/app/assets/javascripts/
cp -r Sources/bootstrap/dist/css/bootstrap.min.css NewProject/public/stylesheets/main.css
cp -r Sources/bootstrap/less/* NewProject/app/assets/stylesheets/less/



cd Sources/
git clone --depth=1 https://github.com/google/closure-compiler.git
cd closure-compiler
git pull
ant clean
ant
cp -r build ../../NewProject/app/closure-compiler/

cd ..
cd ..


cd NewProject/app/

npm install

