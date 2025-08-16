<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/">
        <html>
            <head>
                <title>Employee Information</title>
            </head>
            <body>
                <h2>Employee Details</h2>
                <xsl:apply-templates select="emp_info/employee"/>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="employee">
        <p><b>Emp_name:</b> <xsl:value-of select="firstname"/> <xsl:value-of select="lastname"/></p>
        <p>Employee Number: <xsl:value-of select="@empID"/></p>
        <hr/>
    </xsl:template>
</xsl:stylesheet>
