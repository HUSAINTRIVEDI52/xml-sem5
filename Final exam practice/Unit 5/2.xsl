<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.1">
	<xsl:template match="/">
		<html>
			<head>
				<title>This is demo</title>
			</head>
			<body>
				<xsl:for-each select="Order_Detail">
					<h1>OrderNumber: <xsl:value-of select="OrderNumber"/></h1>
					<h1>OrderRate: <xsl:value-of select="Orderate"/></h1>
					<h1>OrderAmount: <xsl:value-of select="OrderAmount"/></h1>
					<h1>ItemPrice: <xsl:value-of select="ItemPrice"/></h1>
					<h1>ItemName <xsl:value-of select="ItemName"/></h1>
					<h1>Quantity: <xsl:value-of select="Quantity"/></h1>
				
				</xsl:for-each>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>