<?xml version="1.0" encoding="UTF-8" ?> 
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"> 
<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes" /> 


<xsl:template match="*[local-name(.)='RESULT_STATUS' or local-name(.)='CMH' or local-name(..)='TRACKING' ]">
   <xsl:copy-of select="current()"/>
</xsl:template>


<xsl:template match="/"> 
<xsl:apply-templates /> 
</xsl:template> 

<xsl:template match="*[not( local-name(.)='CMH' or local-name(.)='RESULT_STATUS' or local-name(..)='TRACKING' )]">
<xsl:variable name="inside"> 
<xsl:apply-templates /> 
</xsl:variable> 
<xsl:if test="(.!='') or ($inside!='')"> 
<xsl:copy> 
<xsl:copy-of select="$inside" /> 
</xsl:copy> 
</xsl:if> 
</xsl:template> 


</xsl:stylesheet>
