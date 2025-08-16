<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.1">
	<xsl:template match="/">
		<html>
			<head>
				<title>Demo</title>
			</head>
			<body>
				<xsl:for-each select="Student">
					<h1>Name <xsl:value-of select="name"/></h1>
					<h1>Name:<xsl:value-of select="name/@fname"/> <xsl:value-of select="name/@lname"/></h1>
					<h1>ID: <xsl:value-of select="ID"/> </h1>
					<h1>Plan: <xsl:value-of select="Plan/course"/></h1>
				</xsl:for-each>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>