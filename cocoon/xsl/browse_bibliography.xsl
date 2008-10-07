<?xml version="1.0" encoding="UTF-8"?>

<!-- This is the stylesheet for browsing the bibliography for CBW and for displaying a bibliography from a search result.
	
	Created July 2007 by Ethan Gruber.  Modified 2008 by Joseph Gilbert -->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
	<xsl:include href="header.xsl"/>
	<xsl:include href="footer.xsl"/>
	<xsl:include href="biblio.xsl"/>

	<xsl:param name="bibl_id"/>
	<xsl:param name="section"/>
	
	<xsl:variable name="entries" select="//text/body//div2"/>
	<xsl:variable name="count" select="count($entries)"/>	

	<xsl:param name="searchstring"/>

	<xsl:template match="/">
		<html>
			<head>
				<link type="text/css" href="style.css" rel="stylesheet"/>
				<script type="text/javascript" language="javascript" src="javascript/searchhi.js"/>
				<title>The Collective Biographies of Women: Bibliography</title>
				<script type="text/javascript" language="javascript" src="javascript/illus.js"/>
				<!--	jQuery library	-->
				<script type="text/javascript" src="javascript/jcarousel/lib/jquery-1.2.3.pack.js"></script>
				<!--	jCarousel library	-->
				<script type="text/javascript" src="javascript/jcarousel/lib/jquery.jcarousel.pack.js"></script>
				<!--	Thickbox 3 library	-->
				<script type="text/javascript" src="javascript/jcarousel/lib/thickbox/thickbox.js"></script>
				<!--	jCarousel core stylesheet	-->
				<link rel="stylesheet" type="text/css" href="javascript/jcarousel/lib/jquery.jcarousel.css" />
				<!--	Thickbox stylesheet	 -->
				<link rel="stylesheet" type="text/css" href="thickbox.css" />
				<!--	jCarousel skin stylesheets	-->
				<link rel="stylesheet" type="text/css" href="javascript/jcarousel/skins/tango/skin.css" />
				
				<script type="text/javascript">
					// Set thickbox loading image
					tb_pathToImage = "loading-thickbox.gif";
					
					jQuery(document).ready(function() {
					// Initialise the first and second carousel by class selector.
					// Note that they use both the same configuration options (none in this case).
					jQuery('.image-carousel').jcarousel();
					var loc = document.location.href;
					var section = loc.split('section=')[1];
					if(section == 1) {
						document.getElementById('early-link').className='selected';
					} else if(section &gt; 1 &amp;&amp; section &lt; 26) {
						document.getElementById('alpha-link').className='selected';
						document.getElementById(section).className='selected';
					} else if(section &gt; 25) {
						document.getElementById('post-link').className='selected';
					}
					});
				</script>
			</head>
			<body onLoad="JavaScript:SearchHighlight(); document.getElementById('browse-link').className='selected';">
				<table id="wrap">
					<tr>
						<td class="headfoot">
							<xsl:call-template name="header"/>
						</td>
					</tr>
					<tr>
						<td>
							<div id="subNav">
								<a href="browse?section=1" id="early-link">Early Examples</a>
								<a href="browse?section=2" id="alpha-link">Alphabetical, 1830-1940</a>
								<a href="browse?section=26" id="post-link">Examples after 1940</a>
							</div>
						</td>
					</tr>
					<xsl:if test="$section &gt; 1 and $section &lt; 26">
					<tr>
						<td>
							<div id="page-nav">
								<a href="browse?section=2" id="2">A</a>
								<a href="browse?section=3" id="3">B</a>
								<a href="browse?section=4" id="4">C</a>
								<a href="browse?section=5" id="5">D</a>
								<a href="browse?section=6" id="6">E</a>
								<a href="browse?section=7" id="7">F</a>
								<a href="browse?section=8" id="8">G</a>
								<a href="browse?section=9" id="9">H</a>
								<a href="browse?section=10" id="10">I</a>
								<a href="browse?section=11" id="11">J</a>
								<a href="browse?section=12" id="12">K</a>
								<a href="browse?section=13" id="13">L</a>
								<a href="browse?section=14" id="14">M</a>
								<a href="browse?section=15" id="15">N</a>
								<a href="browse?section=16" id="16">O</a>
								<a href="browse?section=17" id="17">P</a>
								<a><span class='no-entries'>Q</span></a>
								<a href="browse?section=18" id="18">R</a>
								<a href="browse?section=19" id="19">S</a>
								<a href="browse?section=20" id="20">T</a>
								<a href="browse?section=21" id="21">U</a>
								<a href="browse?section=22" id="22">V</a>
								<a href="browse?section=23" id="23">W</a>
								<a><span class='no-entries'>X</span></a>
								<a href="browse?section=24" id="24">Y</a>
								<a href="browse?section=25" id="25">Z</a>
							</div>
						</td>
					</tr>
					</xsl:if>
					<tr>
						<td class="content">
							<xsl:choose>
								<!-- when the bibl_id is not passed as a parameter, i. e. the page is not accessed from a search result, the stylesheet is applied to all of //text -->
								<xsl:when test="not($bibl_id)">
									<div class="head1">
										<a name="{$entries[position() = $section]/../head}">
											<xsl:value-of select="$entries[position() = $section]/../head"/>
										</a>
									</div>
									<div class="head2">
										<a name="{$entries[position() = $section]/head}">
											<xsl:value-of select="$entries[position() = $section]/head"/>
										</a>										
									</div>									
									<xsl:for-each select="$entries[position() = $section]/bibl">
										<div class="bibl">
											<xsl:apply-templates/>
											<xsl:if test="image">
												<ul class="image-carousel jcarousel-skin-tango">
													<xsl:for-each select="image">
														<li>
															<a title="{./imgDesc}" onclick="displayIllus('{@n}', '{./imgDesc}')">
																<img src="thumbs/{@n}.jpg" alt="{./imgDesc}"/>
																<div class="illus"><xsl:value-of select="./imgName"/></div>
															</a>
														</li>
													</xsl:for-each>
												</ul>
											</xsl:if>
											<br clear="all"/>
											<br/>
											<a
												href="http://www.worldcat.org/search?q=%22{title/hi}%22+au%3A{author/name[@type='last']}"
												>Search OCLC WorldCat for this title.</a>
											<br/>
											<a
												href="http://books.google.com/books?as_q=%22{title/hi}%22&amp;as_auth={author/name[@type='last']}"
												>Search Google Books for this title.</a>
										</div>
									</xsl:for-each>
								</xsl:when>
								<!-- otherwise, it is applied to the bibl with an id of $bibl_id -->
								<xsl:otherwise>
									<xsl:apply-templates select="//bibl[@id=$bibl_id]"/>
								</xsl:otherwise>
							</xsl:choose>
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
</xsl:stylesheet>
