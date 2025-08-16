<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.1">
	<xsl:output method="xml" indent="yes"/> 
	<xsl:template match="/Student">
		
		<Students>
			<xsl:for-each select="Name">
				<xsl:element name="{@fname}">
					
				<xsl:attribute name="ID">
				<xsl:value-of select="following=sibling::ID[1]"/>
				</xsl:attribute>
				<xsl:for-each select="following-sibling::Plan[1/courses]">
				<Courses>
					<xsl:value-of select="."/>
				</Courses>
				</xsl:for-each>
				</xsl:element>
			</xsl:for-each>
		</Students>

	</xsl:template>
</xsl:stylesheet>