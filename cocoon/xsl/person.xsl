<?xml version="1.0" encoding="UTF-8"?>

<!-- Person profile stylesheet for CBW.
    
    Created May 2009 by Joseph Gilbert -->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
    <xsl:include href="header.xsl"/>
    <xsl:include href="footer.xsl"/>

	<xsl:param name="id"/>
    <xsl:variable name="person" select="//div1[@id=$id]"/>
    
    <xsl:template match="/">
        <html>
            <head>
                <link type="text/css" href="style.css" rel="stylesheet"></link>
                <title>The Collective Biographies of Women: Biographies</title>
                <script src="javascript/illus.js" language="javascript" type="text/javascript"></script>
                <script src="javascript/jcarousel/lib/jquery-1.2.3.pack.js" type="text/javascript"></script>
                <script src="javascript/jcarousel/lib/jquery.jcarousel.pack.js" type="text/javascript"></script>
                <script src="javascript/jcarousel/lib/thickbox/thickbox.js" type="text/javascript"></script>
                <link href="javascript/jcarousel/lib/jquery.jcarousel.css" type="text/css" rel="stylesheet"></link>
                <link href="thickbox.css" type="text/css" rel="stylesheet"></link>
                <link href="javascript/jcarousel/skins/tango/skin.css" type="text/css" rel="stylesheet"></link>
                            <script type="text/javascript">
                                // Set thickbox loading image
                                tb_pathToImage = "loading-thickbox.gif";
                                
                                jQuery(document).ready(function() {
                                // Initialise the first and second carousel by class selector.
                                // Note that they use both the same configuration options (none in this case).
                                jQuery('.image-carousel').jcarousel();
                                var loc = document.location.href;
                                var section = loc.split('section=')[1];
                                document.getElementById(section).className='selected';
                                if(section == 1 || section > 25) {
                                document.getElementById('select-link').className='selected';
                                } else if(section > 1 &amp;&amp; section &lt; 26) {
                                document.getElementById('anno-link').className='selected';
                                }
                                });
                            </script>
                            
            </head>
            <body onload="document.getElementById('home-link').className='selected';">
                <div id="wrap" class="person">
                    <table>
                    <tr>
                        <td class="headfoot">
                            <xsl:call-template name="header"/>
                        </td>
                    </tr>
                    </table>
                        <div id="hd">
                            <h1><xsl:value-of select="$person/head/name[@type='full']"/></h1>
                        </div>
                        <div id="bd">
                            <div id="intro">
                                <div id="pic">
                                    <xsl:apply-templates select="//div1[@id=$id]/div2[@type='images']"/>
                                </div>
                                <div id="milestones">
                                    <xsl:apply-templates select="//div1[@id=$id]/div2[@type='milestones']"/>
                                </div>
                                <div id="links">
                                    <xsl:apply-templates select="//div1[@id=$id]/div2[@type='links']"/>
                                </div>
                                <div id="texts">
                                    <div id="cbw_search"><a href="search?rows=20&amp;start=0&amp;fulltext={$person/head/name[@type='search']}&amp;action=Submit">Search for <xsl:value-of select="$person/head/name[@type='search']"/> in CBW.</a></div>
                                </div>
                            </div>
                            <div class="clearfix"/>
                            <div id="bio">
                                <xsl:apply-templates select="//div1[@id=$id]/div2[@n=1]"/> 
                            </div>
                            <div id="essay">
                                 <xsl:apply-templates select="//div1[@id=$id]/div2[@type='essay']"/>
                            </div>
                        </div>
                    <table>
                    <tr>
                        <td class="headfoot">
                            <xsl:call-template name="footer"/>
                        </td>
                    </tr>
                    </table>
                </div>
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="div2[@type='images']">
        <div class="full">
            <img src="banner_img2.jpg" alt="Queen Elizabeth" class="full_img"/>
        </div>
        <div class="carousel">
            <ul class="image-carousel jcarousel-skin-tango">
                <xsl:for-each select="list/item">
                <li>
                    <a onclick="displayIllus('{figure/@n}', '')" title="{label}"><img alt="{label}" src="thumbs/{figure/@n}.jpg"/><div class="illus"><xsl:value-of select="label"/></div></a>                                                
                </li>
                </xsl:for-each>
            </ul>
        </div>
    </xsl:template>
    
    <xsl:template match="div2[@n or @type='essay']">
        <h3 class="text_title"><xsl:value-of select="head/title"/></h3>
        <h4 class="text_author"><xsl:value-of select="docAuthor"/></h4>
        <xsl:copy-of select="p[1]"></xsl:copy-of>
        <div class="attr"><em><xsl:value-of select="head/bibl"/></em></div>
        <a href="#">Read more...</a>
    </xsl:template>
    
    <xsl:template match="div2[@type='links']">
        <h3>Links</h3>
        <ul class="links">
            <xsl:for-each select="list/item">
                <li class="item"><em><a href="{address/addrLine}"><xsl:value-of select="label"/></a></em><br/><xsl:value-of select="p"/></li>    
            </xsl:for-each>
        </ul>
    </xsl:template>
    
    <xsl:template match="div2[@type='milestones']">
        <h3>Milestones</h3>
        <ul class="milestones">
            <xsl:for-each select="list/item">
                <li class="item"><em><xsl:value-of select="date"/></em> - <xsl:value-of select="label"/></li>
            </xsl:for-each>
        </ul> 
    </xsl:template>
</xsl:stylesheet>