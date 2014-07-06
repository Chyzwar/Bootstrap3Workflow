#!/bin/bash


#Install bower update
npm install -g bower-update

cd Sources

bower-update

cd ..

# update to new versions
cp -r Sources/html5shiv/dist/* Bootstrap3-Workflow/public/javascripts/
cp -r Sources/jquery/dist/* Bootstrap3-Workflow/public/javascripts/
cp -r Sources/respond/dest/* Bootstrap3-Workflow/public/javascripts/
cp -r Sources/modernizr/modernizr.js Bootstrap3-Workflow/app/assets/javascripts/
cp -r Sources/bootstrap/dist/fonts/* Bootstrap3-Workflow/public/fonts/
cp -r Sources/bootstrap/dist/js/* Bootstrap3-Workflow/public/javascripts/
cp -r Sources/bootstrap/dist/css/bootstrap.min.css Bootstrap3-Workflow/public/stylesheets/main.css


cd Bootstrap3-Workflow/app

#Install grunt-browser-sync
npm install grunt-browser-sync --save-dev

npm install

