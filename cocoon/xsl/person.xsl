<?xml version="1.0" encoding="UTF-8"?>

<!-- This is the preface stylesheet for CBW.
    
    Created May 2009 by Joseph Gilbert -->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
    <xsl:include href="header.xsl"/>
    <xsl:include href="footer.xsl"/>
    
    <xsl:template match="/">
        <html>
            <head>
                <link type="text/css" href="../style.css" rel="stylesheet"></link>
                <title>The Collective Biographies of Women: Biographies</title>
                <script src="../javascript/illus.js" language="javascript" type="text/javascript"></script>
                <script src="../javascript/jcarousel/lib/jquery-1.2.3.pack.js" type="text/javascript"></script>
                <script src="../javascript/jcarousel/lib/jquery.jcarousel.pack.js" type="text/javascript"></script>
                <script src="../javascript/jcarousel/lib/thickbox/thickbox.js" type="text/javascript"></script>
                <link href="../javascript/jcarousel/lib/jquery.jcarousel.css" type="text/css" rel="stylesheet"></link>
                <link href="../thickbox.css" type="text/css" rel="stylesheet"></link>
                <link href="../javascript/jcarousel/skins/tango/skin.css" type="text/css" rel="stylesheet"></link>
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
                            <h1>Name goes here.</h1>
                        </div>
                        <div id="bd">
                            <div id="intro">
                                <div id="pic">
                                    <div class="full">
                                        <img src="../banner_img2.jpg" alt="Queen Elizabeth" class="full_img"/>
                                    </div>
                                    <div class="carousel">
                                        <ul class="image-carousel jcarousel-skin-tango">
                                            <li>
                                                <a onclick="displayIllus('no41', '')" title=""><img alt="" src="thumbs/no41.jpg"/><div class="illus">Harriet Beecher Stowe</div>
                                                </a>
                                                
                                            </li>
                                            <li>
                                                <a onclick="displayIllus('no42', '')" title=""><img alt="" src="thumbs/no42.jpg"/><div class="illus">Elizabeth Fry</div>
                                                </a>
                                            </li>
                                            <li>
                                                <a onclick="displayIllus('no43', '')" title=""><img alt="" src="thumbs/no43.jpg"/><div class="illus">Mary Lyon</div>
                                                </a>
                                            </li>
                                            <li>
                                                <a onclick="displayIllus('no44', '')" title=""><img alt="" src="thumbs/no44.jpg"/><div class="illus">Elizabeth Cady Stanton</div>
                                                </a>
                                            </li>
                                            <li>
                                                
                                                <a onclick="displayIllus('no45', '')" title=""><img alt="" src="thumbs/no45.jpg"/><div class="illus">Florence Nightingale</div>
                                                </a>
                                            </li>
                                            <li>
                                                <a onclick="displayIllus('no46', '')" title=""><img alt="" src="thumbs/no46.jpg"/><div class="illus">Clara Barton</div>
                                                </a>
                                            </li>
                                            <li>
                                                <a onclick="displayIllus('no47', '')" title=""><img alt="" src="thumbs/no47.jpg"/><div class="illus">Julia Ward Howe</div>
                                                </a>
                                            </li>
                                            <li>
                                                <a onclick="displayIllus('no48', '')" title=""><img alt="" src="thumbs/no48.jpg"/><div class="illus">Frances E. Willard</div>
                                                    
                                                </a>
                                            </li>
                                            <li>
                                                <a onclick="displayIllus('no49', '')" title=""><img alt="" src="thumbs/no49.jpg"/><div class="illus">J. Ellen Foster</div>
                                                </a>
                                            </li>
                                            <li>
                                                <a onclick="displayIllus('no50', '')" title=""><img alt="" src="thumbs/no50.jpg"/><div class="illus">Jane Adams</div>
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <div id="milestones">
                                    <h3>Milestones</h3>
                                    <ul class="milestones">
                                        <li class="item">Item one.</li>
                                        <li class="item">Item two.</li>
                                        <li class="item">Item three.</li>
                                    </ul>                                    
                                </div>
                                <div id="links">
                                    <h3>Links</h3>
                                    <ul class="links">
                                        <li class="item">Site one is <a href="#">here</a>.</li>
                                        <li class="item">Site two is <a href="#">here</a>.</li>
                                        <li class="item">Site three <a href="#">here</a>.</li>
                                    </ul>
                                </div>
                                <div id="texts">
                                    <h3>Texts in CBW</h3>
                                    <div id="cbw_search">Search results go here.</div>
                                </div>
                            </div>
                            <div class="clearfix"/>
                            <div id="bio">
                                <xsl:apply-templates select="//div1[@id='SISTER_DORA']/div2[@n=1]"/> 
                            </div>
                            <div id="essay">
                                <h3>Title</h3>
                                <h4>by Author</h4>
                                <p>Long text goes here. Long text goes here. Long text goes here. Long text goes here. Long text goes here. Long text goes here. Long text goes here. Long text goes here. Long text goes here. Long text goes here. Long text goes here. Long text goes here. Long text goes here. Long text goes here. Long text goes here. Long text goes here. Long text goes here. Long text goes here. Long text goes here.</p> 
                            </div>
                        </div>
                        <div id="ft">
                            <p>Utility links here.</p>
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
    
    <xsl:template match="div2[@n]">
        <xsl:copy-of select="p[1]"></xsl:copy-of>
        <a href="#">Read more...</a>
    </xsl:template>
    
</xsl:stylesheet>
