<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.1">
	<xsl:template match="/">
		<html>
			<head>
				<title>Students information</title>
			</head>
			<body>
				<table>
					<tr>
						<th>Roll_no</th>
						<th>Name</th>
						<th>Marks</th>
						<th>Rank</th>
						<th>Result</th>
					</tr>
					
					<xsl:for-each select="Student/Students[starts-with(Roll_no,'1')]">
						<td><xsl:value-of select="Roll_no"/></td>
						<td><xsl:value-of select="Name"/></td>
						<td><xsl:value-of select="Marks"/></td>
						<td><xsl:value-of select="Rank"/></td>
						<td><xsl:value-of select="Result"/></td>
					</xsl:for-each>
				</table>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>