This is Bootstrap workflow. Currently based on Bootstrap 3.2.0, It is fitted to be used as simple front-end projects. Its include collection of tools to speed up development

<h2> What tools are included:</h2>
<ol>
    <li><a href="https://github.com/twbs/bootstrap">Boostrap</a></li>
    <li><a href="http://jquery.com/">jQuery 2.1.1 </a></li>
    <li><a href="http://bower.io/">bower</a> to manage front-end dependencies</li>
    <li>grunt to <a href="https://github.com/gruntjs/grunt-contrib-less">auto-compile LESS</a></li>
    <li>grunt to <a href="https://github.com/gruntjs/grunt-contrib-concat">concat</a> javascript files"</li>
    <li><a href="https://github.com/gmarty/grunt-closure-compiler">closure compile</a> your JavaScript</li>
    <li>grunt to auto <a href="https://github.com/shakyshane/grunt-browser-sync">sync browser</a></li>
    <li><a href="https://github.com/ehynds/grunt-remove-logging">remove console.log()</a> from javascript</li>
    <li><a href="https://github.com/nDmitry/grunt-autoprefixer">autoprefix</a> your css</li>
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

<h2>How to use it during development</h2> 
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
        <li>grunt          → watch for changes and Compile LESS to CSS, concat javascript, refresh browser </li>
        </ul>
    </li>
    <li>Add generated sniped to your index.html before the end of body</li>
</ol>
When you want to write CSS/LESS do it in app/assets/stylesheets/less/main.less, use import if page is big enough.
When you want to write javascript do it in  app/assets/javascripts/interaction.js, to add another jvascript use grunfile concat config
Idealy webage will have only one css and one javascript during producton.



<h2>How to use it during production</h2> 
<ol>
    <li>Remove modernizer from html
    </li>
    <li>Remove console.log and use google closure compiler also add prefixes to you css by:
        <ul>
            <li>grunt build</li>
        </ul>
    </li>
    <li>Remove browser-sync script from html</li>
    <li>change javascript into this one: interaction.closure-compiled.min.js',</li>
</ol>



<h2>Updating Dependencies</h2>
Do it before you rename Bootstrap3-Workflow folder
<p>If you use linux(ubuntu) , you can run: </p>
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
    └ jquery             → jQuery
  └ closure-compiler     → As name suggest
  └ node_modules         → npm and grunt stuff
  package.json           → npm project definition
  Gruntfile.js           → Grunt configuartion
public                   → Public assets
 └ stylesheets           → Compiled CSS
 └ javascripts           → Production versions of javascript also HTML5shiv, Respond
 └ images                → Images files 
 └ fonts                 → Bootstrap fonts and any other
index.html               → Working basic template.
</pre>


