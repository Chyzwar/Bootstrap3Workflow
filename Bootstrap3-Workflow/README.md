This is Bootstrap workflow. Currently based on Bootstrap 3.1.1, It is fitted to be used as simple front-end projects. Its include collection of tools to speed up development

<h1> What tools are included:</h1>
<ol>
    <li>Boostrap 3.1.1</li>
    <li>jQuery 2.1.1</li>
    <li>bower to manage Dependency</li>
    <li>grunt to auto-compile LESS</li>
    <li>grunt to auto sync browser</li>
    <li>modernizr to work with browsers</li>

</ol>

<h1>Requirements: </h1>
<ol>
    <li><a href="http://nodejs.org/">node.js</a></li>
    <li><a href="https://www.npmjs.org/doc/README.html">npm</a></li>
    <li><a href="http://gruntjs.com/getting-started">grunt</a></li>
    <li><a href="https://github.com/shakyShane/grunt-browser-sync">grunt-browser-sync</a></li>
</ol>
<pre>
<h1>How to use it</h1> 

1. Clone this repository
    Use folder -> Bootstrap3-Workflow for your new project copy/rename and move to desired location
2. Configure your Gruntfile depends on how you serve you website
    https://github.com/shakyShane/grunt-browser-sync#options
3. cd to app/asssets and run this commands:
    npm install    → This will install grunt dependencies
    npm install grunt-browser-sync --save-dev →This will install broser-sync
    grunt          → This will watch Less folder and compile main.less to main.css when changes detected also reload browsers
4. Add generated sniped to your index.html before the end of body


This project anatomy:

app                      → Application sources
 └ assets                → Compiled asset sources
    └ stylesheets        → Typically LESS CSS sources
    	└ less        	 → Bootstrap LESS sources
    └ javascripts        → modernizr.js 
  Gruntfile.js           → Grunt configuartion, It will compile less on changes to css
public                   → Public assets
 └ stylesheets           → Bootstrap compiled CSS files
 └ javascripts           → Custom Javascript files and compilled javascrpit for Bootstrap, also HTML5shiv
 └ images                → Images files 
 └ fonts                 → Bootstrap fonts and any other
 └ jquery                → jQuery 
index.html


</pre>

