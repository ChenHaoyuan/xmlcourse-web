xquery version "1.0";
<pictureLibrary>{
for $x in doc("picture.xml")/pictureLibrary/picture
order by $x/describe/size
return $x
}</pictureLibrary>