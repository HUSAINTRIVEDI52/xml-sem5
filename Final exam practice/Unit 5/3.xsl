<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.1">
	<xsl:template match="/">
<html>
	<head>
		<title>Demo</title>
	</head>
	<body>

			<table>
				<tr>
						<th>Title:</th>
						<th>Author:</th>
						<th>Year</th>
						<th>Publisher</th>
				</tr>
				
						<xsl:for-each select="Books/book[year &lt; 1998]">
				<tr>
					<td><xsl:value-of select="@title"/></td>
					<td><xsl:value-of select="author"/></td>
					<td><xsl:value-of select="year"/></td>
					<td><xsl:value-of select="publisher"/></td>
				</tr>
									</xsl:for-each>
			</table>


	</body>
</html>
	</xsl:template>
</xsl:stylesheet>