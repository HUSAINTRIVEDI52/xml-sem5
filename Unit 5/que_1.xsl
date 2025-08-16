<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.1">
	<xsl:template match="/">
			<html>
			<head>
				<title>Employee Information</title>
			</head>
			<body>
				<xsl:for-each  select="emp_info/employee">
					<h1>Emp name: <xsl:value-of select="firstname"/> <xsl:value-of select="lastname"/></h1>
					<p>Employee ID:<xsl:value-of select="@empID"/></p>
				</xsl:for-each>
			</body>
			</html>
	</xsl:template>
</xsl:stylesheet>