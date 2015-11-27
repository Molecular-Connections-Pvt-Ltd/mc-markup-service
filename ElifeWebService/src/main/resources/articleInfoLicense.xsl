<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xlink="http://www.w3.org/1999/xlink" exclude-result-prefixes="xlink" >

<xsl:template match="/">
  <html>
  <body>
  <xsl:apply-templates/>
  </body>
  </html>
</xsl:template>

<xsl:template match="permissions">
 <xsl:apply-templates select="copyright-statement"/>
  <xsl:apply-templates select="license"/>
</xsl:template>


<xsl:template match="license">
<xsl:apply-templates select="license-p"/>
	 
</xsl:template>

<xsl:template match="license-p">
<div class="license">
		<p>
	    <xsl:apply-templates/>
	    </p>
    </div>
   
</xsl:template>

<xsl:template match="copyright-statement">
 <ul class="copyright-statement"> 
      <li><xsl:value-of select="."/></li>
  </ul>
   
</xsl:template>




<xsl:include href="formatting.xsl" />

</xsl:stylesheet>


