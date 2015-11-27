<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
  <body> 
     <xsl:apply-templates select="fn"/>
  </body>
  </html>
</xsl:template>


  <xsl:template match="fn">
 	 <div class="foot-note" id="{@id}"> 
	   <xsl:apply-templates select="p"/>
	</div>
	</xsl:template>



  <xsl:template match="p"> 
  <p>
	 <xsl:apply-templates/>
  </p>
	</xsl:template>


     <xsl:include href="formatting.xsl"/>
</xsl:stylesheet>


