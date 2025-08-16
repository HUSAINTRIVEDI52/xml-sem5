<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.1">
	<xsl:template match="/">

		<html>
			<head>
				<title>Demo</title>
			</head>
			<body>
				<table>
					<tr>
						<th>Name</th>
						<th>Personal_info:</th>
						<th>Birthdate</th>
						<th>Gender:</th>
						<th>Mobile:</th>
					</tr>
					<xsl:for-each select="Student">
					<xsl:sort select="Name" order="ascending"/>
					<tr>
					<td>Name: <xsl:value-of select="Name"/></td>
					<td>Personal:info
						<tr>
						<xsl:for-each select="Personal_info">
						<td>Address <xsl:value-of select="Address"/></td>
						<td>Birthdate: <xsl:value-of select="Birthdate"/></td>
						<td>Gender:<xsl:value-of select="Gender"/></td>
						<td>Mobile:<xsl:value-of select="Mobile"/></td>
						</xsl:for-each>
						</tr>
					</td>
					<td>Result<xsl:value-of select="Result"/></td>
					</tr>
					
					</xsl:for-each>
				</table>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>