xquery version "1.0";
<category>{
for $date in doc("jiedianbian.xml")/picture1/category
where $date/id/@name<"f"
order by $date/id/@name
return $date }</category>