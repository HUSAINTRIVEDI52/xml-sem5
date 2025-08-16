<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.1">
	<xsl:template match="/">
		<html>
			<head>
				<title>Books information</title>
			</head>
			<body>
				<table border="1">
					<th>
						<td>Book Title</td>
						<td>Book Author</td>
						<td>Book Year</td>
						<td>Book Publisher</td>
					</th>
											<xsl:for-each select="Books/book[Year &lt; 1998]">
					<tr>

						<td><xsl:value-of select="@title"/></td>
						<td><xsl:value-of select="author"/></td>   
						<td><xsl:value-of select="Year"/></td>
						<td><xsl:value-of select="Publisher"/></td>

					</tr>
						</xsl:for-each>
				</table>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>