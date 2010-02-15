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
            <body onload="document.getElementById('featured-link').className='selected';">
                <div id="wrap">
                    <div class="headfoot">
                        <xsl:call-template name="header"/>
                    </div>
                    <div id="subjects">
                        <h2>Featured Subjects</h2>
                        <div class="subject-list">
                            <xsl:apply-templates select="//body/div1[not(@type='nonfs')]"/>
                        </div>
                    </div>
                </div>
            </body>
        </html>
    </xsl:template>
      
    <xsl:template match="div1">
        <div class="subject">
            <h3 class="subject-title">
                <a class="subject-link" href="/featured?id={@id}">
                    <xsl:value-of select="head/name[@type='full']"/>
                </a>
                <xsl:if test="head/name[@type='alias']">					
                    <xsl:text> (</xsl:text><xsl:value-of select="head/name[@type='alias']"/><xsl:text>)</xsl:text>
                </xsl:if>
            </h3>   
            <xsl:if test="div2[@type='images']">
                <div class="subject-image">
                    <img src="/thumbs/{div2[@type='images']/list[1]/item[1]/figure[1]/@n}.jpg" alt=""/>
                </div>
            </xsl:if>
                <div class="subject-caption">
                    <p>Some text here.</p>
                </div>
        </div>
    </xsl:template>
    
</xsl:stylesheet>
