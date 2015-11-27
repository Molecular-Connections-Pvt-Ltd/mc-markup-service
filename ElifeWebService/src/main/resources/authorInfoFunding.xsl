<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
  <html>
  <body>
       <xsl:apply-templates/>
  </body>
  </html>
</xsl:template>
<xsl:template match="funding-group">
    <ul class="funding-group">
 	 <xsl:apply-templates select="award-group"/></ul>
   	 <xsl:apply-templates select="funding-statement"/>
</xsl:template>

<xsl:template match="award-group">
	<xsl:for-each select=".">
	<li>
   		 <span class="funding-source"> 
			<span class="institution">
			<xsl:value-of select="funding-source/institution-wrap/institution"/>
			</span>
		</span>
   		<span class="award-id"><xsl:value-of select="award-id"/></span>
		<span class="principal-award-recipient"> 
			<xsl:apply-templates select="principal-award-recipient"/>
		</span>
        
 	 </li>
 	</xsl:for-each>
</xsl:template>

<xsl:template match="principal-award-recipient">
            <xsl:for-each select="name">
		<span class="name">
                 <xsl:value-of select="given-names"/>
                 <xsl:text> </xsl:text>
                 <xsl:value-of select="surname"/>
              </span>
            </xsl:for-each>
</xsl:template>
<xsl:template match="funding-statement">
	<p class="funding-statement"><xsl:value-of select="."/></p>
</xsl:template>

<xsl:include href="formatting.xsl"/>
</xsl:stylesheet>


