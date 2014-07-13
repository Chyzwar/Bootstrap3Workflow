This is Bootstrap workflow. Currently based on Bootstrap 3.2.0, It is fitted to be used as simple front-end projects. Its include collection of tools to speed up development

<h2> What tools are included:</h2>
<ol>
    <li><a href="https://github.com/twbs/bootstrap">Boostrap</a></li>
    <li>jQuery 2.1.1</li>
    <li>bower to manage Dependency</li>
    <li>grunt to auto-compile LESS</li>
    <li>grunt to auto sync browser</li>
    <li><a href="http://modernizr.com/docs/">modernizr</a> to work with browsers</li>
    <li><a href="https://github.com/scottjehl/Respond">respond</a> for IE8 media queries</li>
    <li><a href="http://code.google.com/p/html5shiv/"> html5shiv</a> to support HTML5 in IE</li>
</ol>

<h2>Requirements: </h2>
<ol>
    <li><a href="http://nodejs.org/">node.js</a></li>
    <li><a href="https://www.npmjs.org/doc/README.html">npm</a></li>
    <li><a href="http://gruntjs.com/getting-started">grunt</a></li>
    <li><a href="https://github.com/bower/bower">bower</a></li>
</ol>

<h2>How to use it</h2> 
<ol>
    <li>Clone this repository
     <ul>
        <li>Use folder -> Bootstrap3-Workflow for your new project copy/rename and move to desired location</li>
     </ul>
    </li>
    <li>Configure your Gruntfile.js depends on how you serve you website
        <ul>
            <li>https://github.com/shakyShane/grunt-browser-sync#options</li>
        </ul>
    </li>
    <li>cd to app/asssets and run this commands:
        <ul>
        <li>npm install    → This will install grunt dependencies</li>
        <li>npm install grunt-browser-sync --save-dev →This will install broser-sync</li>
        <li>grunt          → This will watch Less folder and compile main.less to main.css when changes detected also reload browsers</li>
        </ul>
    </li>
    <li>Add generated sniped to your index.html before the end of body</li>

</ol>



<h2>Updating Dependencies, before you Bootstrap3-Workflow </h2>
<p>If you use linux , you can run: </p>
<ol>
    <li>chmod 755 update.sh</li>
    <li>sudo ./update.sh</li>
</ol>

<p>On any other OS us bower</p>
<ol>
    <li>go to Sources and run bower update</li>
    <li>Then manualy copy/paste stuff to correct folders  </li>
</ol>
<pre>
This project anatomy:

app                      → Application sources
 └ assets                → Compiled asset sources
    └ stylesheets        → Typically LESS CSS sources
    	└ less        	 → Bootstrap LESS sources
    └ javascripts        → modernizr.js 
  Gruntfile.js           → Grunt configuartion
public                   → Public assets
 └ stylesheets           → Bootstrap compiled CSS files
 └ javascripts           → Custom Javascript files and compilled javascrpit for Bootstrap, also HTML5shiv, Respond
 └ images                → Images files 
 └ fonts                 → Bootstrap fonts and any other
 └ jquery                → jQuery 
index.html               → Working basic template.
</pre>

