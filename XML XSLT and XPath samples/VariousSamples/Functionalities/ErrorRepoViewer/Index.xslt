<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:output method="html" indent="yes" version="4.0"/>
	<xsl:template match="/resultSet">
		<html>
			<head>
				<title>GetDataResultset</title>
			</head>
			<body>
<table style="margin: 0px auto;">
<tr><td><h1>Error mapping overview</h1>
				<form method="get" action="ErrorMappingList">
					Choose your TargetSystem:<br />
					<select name="targetsystem">
						<xsl:apply-templates/>
					</select>
					<input type="submit" value="Submit"/>
				</form>
<pre>
          .  .          
          |\_|\         
          | a_a\        
          | | "]        
      ____| '-\___      
     /.----.___.-'\     
    //        _    \    
   //   .-. (~v~) /|    
  |'|  /\:  .--  / \    
 // |-/  \_/____/\/~|   
|/  \ |  []_|_|_] \ |   
| \  | \ |___   _\ ]_}  
| |  '-' /   '.'  |     
| |     /    /|:  |     
| |     |   / |:  /\    
| |     /  /  |  /  \   
| |    |  /  /  |    \  
\ |    |/\/  |/|/\    \ 
 \|\ |\|  |  | / /\/\__\
  \ \| | /   | |__      
       / |   |____)     
       |_/                  
</pre>
</td></tr></table>
			</body>
		</html>
	</xsl:template>
	<xsl:template match="Record">
		<option Value="{targetSystemName}">
			<xsl:value-of select="targetSystemName"/>
		</option>
	</xsl:template>
</xsl:stylesheet>
