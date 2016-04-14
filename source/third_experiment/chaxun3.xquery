xquery version "1.0";
<pictureLibrary>{
let $tem:=(for $x in doc("picture.xml")/pictureLibrary/picture
where $x/@format  ="jpg" and $x/describe/size>52
order by $x/size
return $x)
for $y in $tem 
let $z :=$y/category
let $a :=$y/describe/photoGraphers
where $z="汽车"
return if($a="N/A")
       then<nographer>{$y}</nographer>
       else<grapher>{$y}</grapher>
}</pictureLibrary>