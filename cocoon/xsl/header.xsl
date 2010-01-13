<?xml version="1.0" encoding="UTF-8"?>

<!-- This is the header stylesheet for CBW.
	
	Created July 2007 by Ethan Gruber, edited 2008 by Joseph Gilbert -->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
	<xsl:output method="xml" indent="yes"/>
	<xsl:param name="title"></xsl:param>
	<xsl:template name="header">
		<div id="head">
			<div id="headTop">
					<div id="headImg">
						<img src="banner_img1.jpg"/>
						<img src="banner_img2.jpg"/>
						<img src="banner_img3.jpg"/>
					</div>
					<div id="headTitle">
						<em>Collective Biographies of Women</em>
						<small><xsl:value-of select="$title"/></small>
					</div>
			</div>
			<h2 id="byline">
				<i>Alison Booth</i>
			</h2>
			<div class="headBorder"/>
			<xsl:if test="$title = 'Annotated Bibliography'">
			<p id="subheading">
				<i>An annotated bibliography of collections of three or more biographies of women published in English-language books since 1830, with comprehensive lists of publications before 1830 and after 1950.</i>
			</p>
			</xsl:if>
		</div>
		<div id="navbar">
			<span class="nav-item">
				<a href="." id="home-link">Home</a>
			</span> &#160; <span class="nav-item">
				<a href="about" id="about-link">About</a>
			</span> &#160; <span class="nav-item">
				<a href="browse?section=2" id="browse-link">Browse the Bibliography</a>
			</span> &#160; <span class="nav-item">
				<a href="search" id="search-link">Search the Bibliography</a>
			</span> &#160; <span class="nav-item">
				<a href="popchart" id="pop-link">Pop Chart</a>
			</span>
		</div>
	</xsl:template>

</xsl:stylesheet>
