<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.1">
	<xsl:template match="/">
		<html>
			<head>
				<title>Result based on marks</title>
			</head>
			<body>
				<table border="1">
				<tr>
					<td>Roll_no:</td>
					<td>Name:</td>
					<td>Marks</td>
					<td>Rank</td>
					<td>Result</td>
					<td>Category:</td>
				</tr>
				
				<xsl:for-each select="Student/Student_info">
					<tr>
						<td><xsl:value-of select="Roll_no"/></td>
						<td><xsl:value-of select="Name"/></td>
						<td><xsl:value-of select="Marks"/></td>
						<td><xsl:value-of select="Rank"/></td>
						<td><xsl:value-of select="Result"/></td>
						<td>
							<xsl:choose>
			<xsl:when test="Marks &gt;= 70">Dist </xsl:when>
		<xsl:when test="Marks &gt;= 60 and Marks &lt;= 70">First</xsl:when>
	<xsl:when test="Marks &gt;= 40 and Marks &lt; 60">Second</xsl:when>
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