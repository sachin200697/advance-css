on window:

#>notepad file.js        //it is used to create file in the folder


//install sass locally using npm
1. first install node, npm will comes with node automatically
2. npm init   //to create a package.json file
3. npm install --save-dev node-sass

How to compile sass file:
-------------------------
1. Add script inside package.json file:
    "scripts": {
        //remaining scripts
        // "compile:scss": "node-sass sass/main.scss css/style.css"
        // we can also use below script to compile scss file automatically after first run of the script
        "compile:scss": "node-sass sass/main.scss css/style.css -w" //-w is for continuous watch
    }

2. npm run compile:scss 






// we can also install jquery as well from npm
npm install --save jquery

npm install -g live-server  //for live reloading //cd to_the_folder then run #> live-server
