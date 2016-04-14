xquery version "1.0";
<picture1>
{
for $category in doc("picture.xml")/pictureLibrary/picture
return 
<category name="{$category/category}">
{
for $id in doc("picture.xml")/pictureLibrary/picture/id
let $z :=doc("picture.xml")/pictureLibrary/picture
where $category/id=$id
return
<id name="{$id}">
{
for $size in doc("picture.xml")/pictureLibrary/picture
where $category/id=$size/id

return
<size name="{$size/describe/size}">
{
for $position in doc("picture.xml")/pictureLibrary/picture/position
where some $z5 in $z satisfies($id=$z5/id and $position=$z5/position)
return 
<position name="{$position}">
{
for $labels in doc("picture.xml")/pictureLibrary/picture
where some $z7 in $z satisfies($id=$z7/id and $z7/labels=$labels/labels)
return <labels>{$labels/labels/label}{$labels/describe/EnglishDescription}</labels>
}{$size/describe/pictureDescription}{$size/describe/EnglishDescription}{$size/title}</position>
}</size>
}</id>
}</category>
}</picture1>