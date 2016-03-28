<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
  <body>
    <h2>PictureLibrary</h2>
    <table border="1">
      <tr bgcolor="#9acd32">
	  <th><img  width="200" height="260" ></img></th> 
        <th>Title</th>
        <th>id</th>
		<th>labels</th>
		<th>category</th>
		<th>pictureDescription</th>
		<th>EnglishDescription</th>
		<th>resolution</th>
		<th>size</th>
		<th>photoGraphers</th>
		<th>copyright</th>
      </tr>
      <xsl:for-each select="//picture">
	  <xsl:sort select="category"/>
      <tr>
	  		<td><img width="200" height="260"><xsl:attribute name="src"><xsl:value-of 
           select="position"/>.jpg</xsl:attribute></img></td>
        <td><xsl:value-of select="title"/></td>
        <td><xsl:value-of select="id"/></td>

		<td><xsl:value-of select="labels"/></td>
		<td><xsl:value-of select="category"/></td>
		<td><xsl:value-of select="describe/pictureDescription"/></td>
		<td><xsl:value-of select="describe/EnglishDescription"/></td>
		<td><xsl:value-of select="describe/resolution"/></td>
		<td><xsl:value-of select="describe/size"/></td>
		<td><xsl:value-of select="describe/photoGraphers"/></td>
		<td><xsl:value-of select="describe/copyright"/></td>
      </tr>
      </xsl:for-each>
    </table>
  </body>
  </html>
</xsl:template>

</xsl:stylesheet>
