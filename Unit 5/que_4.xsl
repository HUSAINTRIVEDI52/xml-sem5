<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.1">
	<xsl:template match="/">
<html>
	<head>
		<title>Student's Information</title>
	</head>
	<body>
		<table border="1">
		<tr>
			<th>Name</th>
			<th>PersonalInfo</th>
			<th>Address</th>
			<th>BirthDate</th>
			<th>Gender</th>
			<th>MobileNo</th>
			<th>Address</th>
			<th>Result</th>
		</tr>
		<xsl:for-each select="Student_info/Student">
			<xsl:sort select="Result" data-type="number" order="ascending"/>
			<tr>
				<td>Name:<xsl:value-of select="Name"/></td>
				<td>Persnol Info:Address<xsl:value-of select="PersonalInfo/Address"/></td>
				<td>BirthDate:<xsl:value-of select="PersonalInfo/Birthdate"/></td>
				<td>Gender:<xsl:value-of select="PersonalInfo/Gender"/></td>
				<td>MobileNo:<xsl:value-of select="PersonalInfo/MobileNo"/></td>
				<td>Result:<xsl:value-of select="Result"/></td>
			</tr>
		</xsl:for-each>
		</table>
	</body>
</html>
	</xsl:template>
</xsl:stylesheet>