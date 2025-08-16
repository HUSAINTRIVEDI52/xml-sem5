<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.1">
	<xsl:template match="/">
 		<html>
 			<head>
 				<title>Orders Information</title>
 			</head>
 			<body>
 				<table border="1">
 					<tr>
 						<th>Order NUmber</th>
 						<th>Order Rate</th>
 						<th>Order Amount</th>
 						<th>Item Price</th>
 						<th>Item Name</th>
 						<th>Quantity</th>
 					</tr>
 					<xsl:for-each select="Order_Detail">
 						<tr>
 							<td>Order number:<xsl:value-of select="OrderNumber"/></td>
 							<td>Order Rate: <xsl:value-of select="Orderrate"/></td>
 							<td>Order Amount: <xsl:value-of select="OrderAmount"/></td>
 							<td>Item Price: <xsl:value-of select="ItemPrice"/></td>
 							<td>Item Name:<xsl:value-of select="ItemName"/></td>
 							<td>Quantity:<xsl:value-of select="Quantity"/></td>
 						</tr>
 					</xsl:for-each>
 				</table>
 			</body>
 		</html>
	</xsl:template>
</xsl:stylesheet>