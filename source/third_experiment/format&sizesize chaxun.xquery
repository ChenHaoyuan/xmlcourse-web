xquery version "1.0";
<pictureLibrary>{
let $tem :=(
for $x in doc("picture.xml")/pictureLibrary/picture
where $x/@format  ="jpg" and $x/describe/size>52
order by $x/size
return $x)
for $y in $tem 
where $y /describe/size=111
return $y
}</pictureLibrary>