<?xml version="1.0" encoding="UTF-8"?>

<!-- This is the stylesheet for browsing the bibliography for CBW and for displaying a bibliography from a search result.
	
	Created July 2007 by Ethan Gruber.  Modified 2008 by Joseph Gilbert -->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
	<xsl:include href="header.xsl"/>
	<xsl:include href="footer.xsl"/>
	<xsl:include href="biblio.xsl"/>

	<xsl:param name="bibl_id"/>

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
					tb_pathToImage = "images/loading-thickbox.gif";
					
					jQuery(document).ready(function() {
					// Initialise the first and second carousel by class selector.
					// Note that they use both the same configuration options (none in this case).
					jQuery('.image-carousel').jcarousel();
					});
					
				</script>
				<style type="text/css">
					.bibl .jcarousel-skin-tango .jcarousel-container-horizontal {
						width: 650px;
						height: 160px;
						background: #FFFAF0;
						border: none;
						}  
					.bibl .jcarousel-skin-tango .jcarousel-clip-horizontal {
						height: 160px;
						width: 100%;
					} 
					.bibl .jcarousel-skin-tango .jcarousel-container-horizontal ul {
						height: 160px;
					}
					.bibl .jcarousel-skin-tango .jcarousel-next-horizontal,
					.bibl .jcarousel-skin-tango .jcarousel-prev-horizontal {
						top: 55px;
						}
					.bibl img {
						max-height: 75px;
						max-width: 75px;
						border: none;
					}
					#TB_overlay {
					background: #DDD;
					opacity: 0.7;
					}
				</style>
			</head>
			<body onLoad="JavaScript:SearchHighlight();">
				<table id="wrap">
					<tr>
						<td class="headfoot">
							<xsl:call-template name="header"/>
						</td>
					</tr>
					<tr>
						<td>
							<div id="subNav">
								<a href="#1">Early Examples</a>
								<a href="#2">Alphabetical, 1830-1940</a>
								<a href="#3">Examples after 1940</a>
							</div>
						</td>
					</tr>
					<tr>
						<td class="content">
							<xsl:choose>
								<!-- when the bibl_id is not passed as a parameter, i. e. the page is not accessed from a search result, the stylesheet is applied to all of //text -->
								<xsl:when test="not($bibl_id)">
									<xsl:apply-templates select="//text"/>
								</xsl:when>
								<!-- otherwise, it is applied to the bible with an id of $bibl_id -->
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

	<xsl:template match="text">

		<xsl:apply-templates select="//div1[@type='biblio']"/>

	</xsl:template>

	<xsl:template match="div1[@type='biblio']">

		<div class="head1">
			<a name="{./@n}">
				<xsl:value-of select="head"/>
			</a>
		</div>

		<xsl:apply-templates select="div2"/>

	</xsl:template>

	<xsl:template match="div2">

		<div class="head2">
			<xsl:value-of select="head"/>
		</div>

		<xsl:apply-templates select="bibl"/>

	</xsl:template>

	<xsl:template match="bibl">

		<div class="bibl">
			<xsl:apply-templates/>
			<xsl:if test="image">
				<ul class="image-carousel jcarousel-skin-tango">
				<xsl:for-each select="image">
				<li>
					<a href="full/{@n}.jpg" class="thickbox" title="{./imgDesc}">
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

	</xsl:template>
</xsl:stylesheet>
