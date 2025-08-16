<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.1">
	<xsl:template match="/">
	<html>
		<head>
			<title>Ranks</title>
		</head>
		<body>
			<table>
				<tr>
					<th>Roll_no></th>
					<th>Name</th>
					<th>Marks</th>
					<th>Ranks</th>
					<th>Result</th>
				</tr>
				<xsl:for-each select="Students/Student">
					<tr>
				<td><xsl:value-of select="Roll_no"/></td>
				<td><xsl:value-of select="Name"/></td>
				<td><xsl:value-of select="Marks"/></td>
				<td><xsl:value-of select="Rank"/></td>
				<td>
					<xsl:choose>
						<xsl:when test="Marks &gt;= 70">Dist</xsl:when>
						<xsl:when test="Marks &gt;= 60">First</xsl:when>
						<xsl:when test="Marks &gt;= 40">Second</xsl:when>
						<xsl:otherwise>Fail</xsl:otherwise>
					</xsl:choose>
				</td>
				</tr>
				</xsl:for-each>
			</table>
		</body>
	</html>
	</xsl:template>
</xsl:stylesheet>