#!/bin/bash


#Install bower update
apt-get -u install ant
npm install -g bower-update


cd Sources

bower-update

cd ..

# update to new versions
cp -r Sources/html5shiv/dist/* Bootstrap3-Workflow/public/javascripts/
cp -r Sources/jquery/* Bootstrap3-Workflow/app/assets/jquery/
cp -r Sources/respond/dest/* Bootstrap3-Workflow/public/javascripts/
cp -r Sources/modernizr/modernizr.js Bootstrap3-Workflow/app/assets/javascripts/
cp -r Sources/bootstrap/dist/fonts/* Bootstrap3-Workflow/public/fonts/
cp -r Sources/bootstrap/dist/js/* Bootstrap3-Workflow/app/assets/javascripts/
cp -r Sources/bootstrap/dist/css/bootstrap.min.css Bootstrap3-Workflow/public/stylesheets/main.css
cp -r Sources/bootstrap/less/* Bootstrap3-Workflow/app/assets/stylesheets/less/


cd Sources/closure-compiler/
git pull
ant clean
ant
cp -r closure-compiler/build/ ../../Bootstrap3-Workflow/app/closure-compiler/

cd..


cd Bootstrap3-Workflow/app/
npm install 

