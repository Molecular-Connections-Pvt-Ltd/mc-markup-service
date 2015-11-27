<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xlink="http://www.w3.org/1999/xlink" exclude-result-prefixes="xlink">

<xsl:template match="/">
	<html>
	<body>
		<xsl:apply-templates/>
	</body>
	</html>
</xsl:template>

<xsl:template match="contrib">
<div class="elife-article-info-reviewingeditor-text">
<xsl:apply-templates/>
</div>

</xsl:template>

<xsl:template match="name">
<span class="nlm-given-names"><xsl:value-of select="given-names"/></span>
<span class="nlm-surname"><xsl:value-of select="surname"/>
</span>, 
</xsl:template>

<xsl:template match="aff">
<span class="nlm-institution"><xsl:value-of select="institution"/></span>, 
<span class="nlm-country"><xsl:value-of select="country"/></span>
</xsl:template>

<xsl:template match="role">
<span class="nlm-role"><xsl:value-of select="."/></span>, 
</xsl:template>





<xsl:include href="formatting.xsl" />
</xsl:stylesheet>



