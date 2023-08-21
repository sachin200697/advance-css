SCSS -> Compile(using node-scss) -> Concatinate(using concat) -> add prefix(autoprefixer)


npm i live-server   //for live watch
npm i node-sass //to compile sass/scss files into css files
npm i concat --save-dev //to combine all css files into a single one
npm i autoprefixer --save-dev   //to add -webkit- prefix
npm i postcss-cli   //to work autoprefixer postcss-cli is needed
npm i npm-run-all --save-dev    //to run all scripts

//add below scripts into package.json -> scripts

"watch:css": "node-sass sass/main.scss css/style.css -w",   //to compile scss file to css and continuous watch
"devserver": "live-server", //for watch live continuously
"start": "npm-run-all --parallel devserver watch:css",  //to start live-server and watch:css //--parallel is used to run scripts parallel not one one by one
"compile:css": "node-sass sass/main.scss css/style.comp.css",   //to only compile the scss file, not watch  
"concat:css": "concat -o css/style.concat.css css/basic-icon.css css/style.comp.css",   //to concat all css files into a single one
"prefix:css": "postcss --use autoprefixer -b 'last 5 versions' css/style.concat.css -o css/style.prefix.css"    //to add prefix like -webkit-
"compress:css": "node-sass css/style.prefix.css css/style.css",
"build:css": "npm-run-all compile:css concat:css prefix:css compress:css"

Using Concat:
--------------
concat -o output.css ./1.css ./2.css ./3.css

// here output.css is the output css file and 1.css, 2.css, 3.css are input css files.