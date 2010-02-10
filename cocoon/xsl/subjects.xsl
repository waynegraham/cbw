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
                </div>
            </body>
        </html>
    </xsl:template>
    
</xsl:stylesheet>
