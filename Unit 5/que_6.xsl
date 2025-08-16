<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.1">
	<xsl:output method="xml" indent="yes"/>
	<xsl:template match="/Student">
		
			<Students>
				<xsl:for-each select="Name">
					<Student>
						<xsl:element name="{@fname}">
							<xsl:attribute name="ID">
								<xsl:value-of select="following-sibling::ID[1]"/>
								
							</xsl:attribute>
							<xsl:for-each select="following-sibling::Plan[1]/courses">
								<courses>
									<xsl:value-of select="."/>
								</courses>
							</xsl:for-each>
						</xsl:element>
					</Student>
				</xsl:for-each>
			</Students>

	</xsl:template>
</xsl:stylesheet>