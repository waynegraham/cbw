<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
    <xsl:include href="header.xsl"/>
    <xsl:include href="footer.xsl"/>
    
    <xsl:template match="/">
        <html>
            <head>
                <link type="text/css" href="style.css" rel="stylesheet"/>
                <title>The Collective Biographies of Women: test</title>
            </head>
            <body onload="document.getElementById('about-link').className='selected';">
                <div id="wrap">
                    <div class="headfoot">
                        <xsl:call-template name="header"/>
                    </div>
                    <div id="subjects">
                        <h2>Featured Subjects</h2>
                    </div>
                    <div class="subject-list">
                        <xsl:apply-templates select="body/div1"/>
                    </div>
                </div>
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="div1">
        <div class="subject">
            <h3 class="subject-title"><a class="subject-link" href="/featured?id={@id}"><xsl:value-of select="head/name[@type='full']"/></a></h3>      
        </div>
    </xsl:template>
    
</xsl:stylesheet>
