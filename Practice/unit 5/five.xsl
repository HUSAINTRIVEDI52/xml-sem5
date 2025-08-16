<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.1">
	<xsl:output method="xml" indent="yes"/>
	<xsl:template match="/">
			<student_info>
				<xsl:for-each select="Student_info/Student">
					<Student>
						<Name>
							<fname><xsl:value-of select="Student/@fname"/></fname>
							<lname><xsl:value-of select="Name/@lname"/></lname>
						</Name>
						<ID><xsl:value-of select="ID"/></ID>
						<Plan>
							<xsl:for-each select="Plan/Course">
							<courses><xsl:value-of select="."/></courses>
							</xsl:for-each>
						</Plan>
					</Student>


				</xsl:for-each>
				</student_info>
	</xsl:template>
</xsl:stylesheet>