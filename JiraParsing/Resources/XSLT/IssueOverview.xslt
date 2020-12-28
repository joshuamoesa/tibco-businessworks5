<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">  
<xsl:output method="html" indent="yes" version="4.0"/>

<xsl:template match="/resultSet">
<html>
<head>
<title>GetDataResultset</title>
<script type="text/javascript" src="sortable.js">&#160;</script>
<style type="text/css">
table {
	font-family: verdana,arial,sans-serif;
	font-size:11px;
	color:#333333;
	border-width: 1px;
	border-color: #666666;
	border-collapse: collapse;
}
th {
	border-width: 1px;
	padding: 8px;
	border-style: solid;
	border-color: #666666;
	background-color: #dedede;
        cursor: pointer; cursor: hand; 
}
td {
	border-width: 1px;
	padding: 8px;
	border-style: solid;
	border-color: #666666;
	background-color: #ffffff;
}
</style>

</head>
<body>
<table class="sortable">
	<tbody>
		<tr>
			<th>TICKETNR</th>
			<th>INTERNALTICKET</th>
			<th>SUMMARY</th>
			<th>PRIORITY</th>
			<th>STATUS</th>
			<th>COMMENTDATE</th>
			<th>COMMENTAUTHOR</th>
			<th>LATESTCOMMENT</th>
		</tr>
		<xsl:apply-templates/>
	</tbody>
</table>

</body>
</html>

</xsl:template>
<xsl:template match="Record">
		<tr>
			<td><a><xsl:attribute name="href"><xsl:text>https://jira.oss.local/jira/browse/<xsl:value-of select="TICKETNR"/></xsl:text></xsl:attribute><xsl:value-of select="TICKETNR"/></a></td>
			<td><a><xsl:attribute name="href"><xsl:text>https://jira.oss.local/jira/browse/<xsl:value-of select="INTERNALTICKET"/></xsl:text></xsl:attribute><xsl:value-of select="INTERNALTICKET"/></a></td>
			<td><xsl:value-of select="SUMMARY"/></td>
			<td><xsl:value-of select="PRIORITY"/></td>
			<td><xsl:value-of select="STATUS"/></td>
			<td><xsl:value-of select="COMMENTDATE"/></td>
			<td><xsl:value-of select="COMMENTAUTHOR"/></td>
			<td><xsl:value-of select="LATESTCOMMENT"/></td>
		</tr>
</xsl:template>
</xsl:stylesheet>