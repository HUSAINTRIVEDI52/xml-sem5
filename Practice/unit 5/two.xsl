<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.1">
	<xsl:template match="/">
		<html>
			<head>
				<title>Order Information</title>
			</head>
			<body>
				<xsl:for-each select="Order/Order_Detail">
					<p>Order Number: <xsl:value-of select="OrderNumber"/></p>
					<p>Order Rate: <xsl:value-of select="Orderate"/> </p>
					<p>Order Amount: <xsl:value-of select="OrderAmount"/></p>
					<p>ItemPrice: <xsl:value-of select="ItemPrice"/></p>
					<p>ItemName: <xsl:value-of select="ItemName"/></p>
					<p>Quantity: <xsl:value-of select="Quantity"/></p>
				</xsl:for-each>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>