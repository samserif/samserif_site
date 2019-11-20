#SamSerif Web Generator

##What is this?
This harp project is a static site generator that you can use to build and update your site.  

##Getting started

You must have harp.js installed to use this project (`sudo npm install -g harp`).  From the root directory (this one!) you can serve the project using `harp server` and you can compile to static files using `harp compile`.

You should `bower install` before attempting to compile or serve.

##Using the project
You edit files inside the public directory.  When you compile, your static files are located in the www/ directory.  This is what is deployed to the remote servers.

##Deploying
In command line: ./deploy.sh
pw: in .local
