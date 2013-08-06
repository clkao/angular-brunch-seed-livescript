exports.config =
  # See docs at http://brunch.readthedocs.org/en/latest/config.html.
  conventions:
    ignored: /(^|\/)node_modules\/|(^|\/)_/
    assets: /^app\/assets\//
  modules:
    definition: false
    wrapper: (path, data) ->
      """
(function() {
  'use strict';
  #{data}
}).call(this);\n\n
      """
  paths:
    public: '_public'
  files:
    javascripts:
      joinTo:
        'js/app.js': /^app/
        'js/vendor.js': /^vendor/
        'test/scenarios.js': /^test(\\|\/)e2e/
      order:
        before: [
          'vendor/console-polyfill/index.js'
          'vendor/jquery/jquery.js'
          'vendor/angular/angular.js'
          'vendor/angular-resource/angular-resource.js'
          'vendor/angular-cookies/angular-cookies.js'
          'vendor/angular-sanitize/angular-sanitize.js'
          #'vendor/bootstrap/docs/assets/js/bootstrap.js'
        ]
    stylesheets:
      joinTo:
        'css/app.css': /^app/
        'css/vendor.css': /^vendor(\\|\/)metro(\\|\/)less(\\|\/)modern.*less/

    templates:
      joinTo: 
        'js/dontUseMe' : /^app/ # dirty hack for Jade compiling.

  plugins:
    jade:
      pretty: yes # Adds pretty-indentation whitespaces to output (false by default)
    jade_angular:
      modules_folder: 'partials'
      locals: {}

    bower:
      extend:
        #bootstrap : 'vendor/bootstrap/docs/assets/js/bootstrap.js'
        'angular-mocks': []
        styles: []
      asserts:
        img: /metro(\\|\/)images/
        font: /metro(\\|\/)fonts/
        #img : /bootstrap(\\|\/)img/
        #font: /font-awesome(\\|\/)font/    
  # Enable or disable minifying of result js / css files.
  # minify: true
