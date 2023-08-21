https://icomoon.io/app/#/select/library  -> Add icon to one of availeble catagories ->

select icons -> generate svg -> setting icon -> remove png -> download zip -> copy svg folder 
and symbol-defs(se can rename it to sprite.svg file) -> paste to project -> then use like this:

<svg>
 <use xlink:href="path_to_symbol-defs file/symbol-defs.svg#name_of_icon"
</svg>

How to get name of icon: In the zip file there is a html file demo-external-svg with all names.
