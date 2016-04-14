xquery version "1.0";
<pictureLibrary>{
for $x in doc("picture.xml")/pictureLibrary/picture
where $x/@format  ="jpg" and $x/describe/size>60
order by $x/size
return $x
}</pictureLibrary>