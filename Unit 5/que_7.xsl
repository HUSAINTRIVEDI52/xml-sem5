<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.1">
	<xsl:template match="/">
		<html>
		<head>
			<title>Rank Holders</title>
		</head>
		<body>
			<table border="1">
				<tr>
					<th>Roll_no</th>
					<th>Name</th>
					<th>Marks</th>
					<th>Rank</th>
				</tr>
				<xsl:for-each select="Students/Student">
					<tr>
						<td><xsl:value-of select="Roll_no"/></td>
						<td><xsl:value-of select="Name"/></td>
						<td><xsl:value-of select="Marks"/></td>
						<td><xsl:value-of select="Rank"/></td>

					<td>
					<xsl:choose>
						<xsl:when test="Rank &lt;=  5">Top Students</xsl:when>
						<xsl:when test="Rank &gt; 5 and Rank  &lt;=  10">Top 10 Students</xsl:when>
						<xsl:otherwise>Average students</xsl:otherwise>
					</xsl:choose>
					</td>
					</tr>
				</xsl:for-each>
			</table>
		</body>
		</html>
	</xsl:template>
</xsl:stylesheet>