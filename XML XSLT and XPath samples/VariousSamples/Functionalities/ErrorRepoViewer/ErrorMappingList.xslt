<?xml version="1.0"?> 
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
    version="1.0">
    
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
			<th>sourceSystem</th>
			<th>sourceOperation</th>
			<th>targetSystem</th>
			<th>targetOperation</th>
			<th>sourceErrorCode</th>
			<th>targetErrorCode</th>
			<th>targetErrorMessage</th>
			<th>targetErrorCategory</th>
			<th>sourceErrorCategory</th>
			<th>targetErrorClassification</th>
			<th>targetErrorBehavior</th>
			<th>mutationDate</th>
		</tr>
		<xsl:apply-templates/>
	</tbody>
</table>

</body>
</html>
</xsl:template>

<xsl:template match="Record">
		<tr>
			<td><xsl:value-of select="sourceSystem"/></td>
			<td><xsl:value-of select="sourceOperation"/></td>
			<td><xsl:value-of select="targetSystem"/></td>
			<td><xsl:value-of select="targetOperation"/></td>
			<td><xsl:value-of select="sourceErrorCode"/></td>
			<td><xsl:value-of select="targetErrorCode"/></td>
			<td><xsl:value-of select="targetErrorMessage"/></td>
			<td><xsl:value-of select="targetErrorCategory"/></td>
			<td><xsl:value-of select="sourceErrorCategory"/></td>
			<td><xsl:value-of select="targetErrorClassification"/></td>
			<td><xsl:value-of select="targetErrorBehavior"/></td>
			<td><xsl:value-of select="mutationDate"/></td>
		</tr>
</xsl:template>

</xsl:stylesheet>