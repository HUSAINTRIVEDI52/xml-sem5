<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.1">
	<xsl:template match="/">
		<html>
			<head>
				<title>Student's Information</title>
			</head>
			<body>
				<xsl:for-each select="Student/Student_info">
				<xsl:sort select="Name" data-type="text" order="ascending"/>	
					<h1>Name: <xsl:value-of select="Name"/></h1>
					<p>Personal Info:
					<xsl:for-each select="PersonalInfo">
						<p>Address: <xsl:value-of select="Address"/></p>
						<p>BirthDate: <xsl:value-of select="BirthDate"/></p>
						<p>Gender: <xsl:value-of select="Gender"/></p>
						<p>MobileNo: <xsl:value-of select="MobileNo"/></p>
					</xsl:for-each>
					</p>
					<p>Result:<xsl:value-of select="Result"/></p>
				</xsl:for-each> 
			</body>
		</html>
			
	</xsl:template>
</xsl:stylesheet>