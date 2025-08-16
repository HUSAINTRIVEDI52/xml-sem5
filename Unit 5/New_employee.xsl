<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:template match="/">
		<html>
			<head>
				<title>Employee Information</title>
				
			</head>
			<body>
				<h1>Employee_Details</h1>
				<xsl:apply-templates select="emp_info/employee"/>
			</body>
		</html>
				</xsl:template>
		<xsl:template match="employee">
			<div>
				<h2>Emp name:<xsl:value-of select="fname"/><xsl:text/> <xsl:value-of select="lname"/></h2>
				<p class="emp_id">Employee ID:<xsl:value-of select="@emp_id"/></p>
			</div>
		</xsl:template>
</xsl:stylesheet>