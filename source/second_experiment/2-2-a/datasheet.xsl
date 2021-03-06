<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://www.w3.org/1999/xhtml" >

<xsl:output method="xml" />
    <xsl:template match="/">
    <html>
    <body bgcolor="blue">
    	<div id="group">
		    <h2>group name:<xsl:value-of select="page/group/group_name" /></h2>
		    <h2>our icon:</h2><img src="../2-4/icon.svg"  width="400" height="400" />
		    <h2><a href="https://xml.upchen.cn">our site</a></h2>
			<table border="1">
			    <tr bgcolor="#9acd32">
				    <th>name</th>
				    <th>id</th>
				    <th>e-mail</th>
			    </tr>
			    <xsl:for-each select="page/group/group_member/student">
				    <tr>
					    <td><xsl:value-of select="name"/></td>
					    <td><xsl:value-of select="ID"/></td>
					    <td><xsl:value-of select="e-mail"/></td>
				    </tr>
			    </xsl:for-each>
			</table>
		</div>
		<div id="source">
			<h2>source</h2>
			<p><a href="http://www.quanjing.com"><xsl:value-of select='page/source/source_site'/></a></p>
		</div>
        
    </body>
    </html>
</xsl:template>
</xsl:stylesheet>