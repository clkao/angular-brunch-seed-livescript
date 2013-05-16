# angular-brunch-seed-livescript
### A started project for AngularJS using Brunch.io, Bower, Bootstrap/MetroUI wiht LiveScript

[AngularJS](http://angularjs.org) + [Brunch](http://brunch.io) + [LiveScript](http://livescript.net/)
[Bower](https://github.com/bower/bower) + [Metro UI CSS](http://metroui.org.ua/)

Features:
* LiveScript / Sass / SCSS / Stylus automatically compiled on save
* auto-reload during development saves you from manually refreshing the page
* Javascript / CSS minification for production
* [karma](https://github.com/karma-runner/karma) integration for
  unit tests
* Bootstrap integration with themes / Metro UI
* Jade for tempaltes

## How to use angular-brunch-seed

* `git clone https://github.com/flyakite/angular-brunch-seed-livescript.git` to clone the **angular-brunch-seed-livescript** repository
* `cd angular-brunch-seed-livescript`
* `./scripts/init.sh` to install node packages

or if you have **Brunch** installed run:

`brunch new myapp --skeleton https://github.com/flyakite/angular-brunch-seed-livescript`

### Running the app during development

* `./scripts/server.sh` to serve using **Brunch**

Then navigate your browser to [http://localhost:3333](http://localhost:3333)

### Running the app in production

* `./scripts/production.sh` to minify javascript and css files.

### Running unit tests

* `./scripts/test.sh` to run unit test with [karma](https://github.com/karma-runner/karma)
* Open the browser you would like to test to [http://localhost:3334](http://localhost:3334)

Notes:

- If you would like to write your test in livescript run `./scripts/compile-tests.sh` in a 
seperate window.
- Testacular will run tests on save. To insure that changes are
saved be sure to have `./script/server.sh` or `./script/development.sh` running in the console.
- If you are on OS X you set the browsers that you would like to target
  in the `/test/testacular_conf.js` file E.g. `browser = ["ChromeCanary", "Firefox"]`

### End to end testing

WIP

### Common issues

`EMFILE` error
- EMFILE means there're too many open files. Brunch watches all your project files and it's usually a pretty big number. You can fix this error with setting max opened file count to bigger number with command ulimit -n <number> (10000 should be enough).

The compelete [Brunch FAQ](https://github.com/brunch/brunch/blob/master/docs/faq.rst)
### Receiving updates from upstream

When we upgrade angular-seed's repo with newer angular or testing library code, you can just
fetch the changes and merge them into your project with git.

`git pull origin master`

## Directory Layout

    _public/                  --> Contains generated file for servering the app
                                  These files should not be edited directly
    app/                      --> all of the files to be used in production
      assets                  --> a place for static assets. These files will be copied to
                                  the public directory un-modified.
        css/                 --> css files
        font/                 --> font files
        img/                  --> image files
        test                  --> angular-scenario test
        index.html            --> app layout file (the main html template file of the app)
      partials                --> angular view partials using jade(partial html templates)
        app
          nav.jade
          partial1.jade
          partial2.jade
      scripts/                --> base directory for app use livescript
        controllers.ls        --> application controllers
        directives.ls         --> custom angular directives
        filters.ls            --> custom angular filters
        services.ls           --> custom angular services
      styles/                 --> all custom styles. Acceptable files types inculde:
                                  less, sass, scss and stylus
        app.less              --> a file for importing styles.
      app.ls                  --> application definition and routes.
      init.ls                 --> application bootstrap

    node_modules              --> NodeJS modules

    scripts/                  --> handy shell scripts
      compile-tests.sh        --> compiles livescript test to javascript
      development.sh          --> compiles files and watches for changes
      init.sh                 --> installs node modules
      production.sh           --> compiles and compresses files for production use
      server.sh               --> runs a development server at `http://localhost:3333`
      test.sh                 --> runs all unit tests

    test/                     --> test source files and libraries
      e2e/                    -->
        scenarios.js          --> end-to-end specs **NOT WORKING YET**
      unit/
        app/
          controllers.spec.js --> specs for controllers
          directives.spec.js  --> specs for directives
          filters.spec.js     --> specs for filters
          services.spec.js    --> specs for services
      vendor/
        angular/              --> angular testing libraries
          angular-mocks.js    --> mocks that replace certain angular services in tests

    vendor/                   --> vendor packages controlled by Bower
      _bootstrap/             --> bootstrap files. **NOTE** the underscore prevents the
                                  files from automatically being added to application.
      _font-awesome/          
      angular/                    files are compiled to `vendor.js`
        angular.js            --> the latest angular js
        angular-*.js          --> angular add-on modules
        bower.json            --> Bower angular control
      jquery/                 --> jquery if needed(with bootstrap-collapse or metro ui)
      metro/                  --> metro ui less, font, and js
      


