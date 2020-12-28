<xsl:stylesheet version="1.0"
 xmlns:xsl="http://www.w3.org/1999/XSL/Transform"  xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
 <xsl:output method="xml" omit-xml-declaration="yes" indent="yes"/>
 <xsl:strip-space elements="*"/>

 <!-- Match all nodes in the document -->
 <xsl:template match="node()|@*">
	<!-- Create a copy of the current node -->
     <xsl:copy>
       <xsl:apply-templates select="node()|@*"/>
     </xsl:copy>
 </xsl:template>

 <!-- Only keep the nodes that we're interested in -->
 <!-- -Keep the element with the nil attribute --> 
 <!-- -Keep the elements wth attributes that have a value --> 
 <!-- -The normalize-space removes leading and trailing spaces from the current node --> 
 <xsl:template match="*[not(*|comment()|processing-instruction()) and normalize-space()='']"/>

</xsl:stylesheet>