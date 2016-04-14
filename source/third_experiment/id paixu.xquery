xquery version "1.0";
<pictureLibrary>{
for $x in doc("picture.xml")/pictureLibrary/picture
order by $x/id
return $x
}</pictureLibrary>