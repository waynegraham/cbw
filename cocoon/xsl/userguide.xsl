<?xml version="1.0" encoding="UTF-8"?>

<!-- This is the userguide stylesheet for CBW.
	
	Created July 2007 by Ethan Gruber, modified April 2008 by Joseph Gilbert -->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">

<!-- header and footer are called and biblio is used for formatting -->
	
	<xsl:include href="header.xsl"/>
	<xsl:include href="footer.xsl"/>
	<xsl:include href="biblio.xsl"/>
    
    <xsl:template match="/">
        <html>
        	<head>
        		<link type="text/css" href="style.css" rel="stylesheet"/>
        		<title>The Collective Biographies of Women: User's Guide</title>
        	</head>
            	<body>
            		<table id="wrap">
            			<tr>
            				<td class="headfoot">
            					<xsl:call-template name="header"/>
            				</td>
            			</tr>
            			<tr>
            				<td class="content">
            					<xsl:apply-templates select="/TEI.2/text/front/div1[@type='userguide']"/>
            				</td>
            			</tr>
            			<tr>
            				<td class="headfoot">
            					<xsl:call-template name="footer"/>
            				</td>
            			</tr>
            		</table>
            	</body>
                
            
        </html>
    </xsl:template>
    
    <xsl:template match="/TEI.2/text/front/div1[@type='userguide']">
        <xsl:apply-templates/>    
    </xsl:template>
    
    <xsl:template match="p">
        <p><xsl:apply-templates/></p>
    </xsl:template>
	
</xsl:stylesheet>
