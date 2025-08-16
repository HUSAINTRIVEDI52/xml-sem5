<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/">
        <html>
            <head>
                <title>Vendor</title>
            </head>
            <body>
                <h2>Vendor Details</h2>

                <!-- Added a non-breaking space (&#160;) to ensure proper spacing between labels and values -->
                <p><b>Name:</b>&#160;<xsl:value-of select="Vendor/Name"/></p>

                <!-- Wrapped Address value inside a <span> to prevent browser from applying default italic styling -->
                <p><b>Address:</b>&#160;<span><xsl:value-of select="Vendor/PersnolInfo/Address"/></span></p>

                <!-- Added non-breaking spaces (&#160;) for consistent spacing -->
                <p><b>Gender:</b>&#160;<xsl:value-of select="Vendor/PersnolInfo/Gender"/></p>
                <p><b>BirthDate:</b>&#160;<xsl:value-of select="Vendor/PersnolInfo/BirthDate"/></p>
                <p><b>Pincode:</b>&#160;<xsl:value-of select="Vendor/PersnolInfo/Pincode"/></p>

            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
