<?xml version="1.0" encoding="UTF-8"?>

<!-- This is the header stylesheet for CBW.
	
	Created July 2007 by Ethan Gruber, edited 2008 by Joseph Gilbert -->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
	<xsl:output method="xml" indent="yes"/>
	<xsl:template name="header">
		<div id="head">
			<table id="headTop">
				<tr>
					<td id="headImg">
						<img src="banner_img1.jpg"/>
						<img src="banner_img2.jpg"/>
						<img src="banner_img3.jpg"/>
					</td>
					<td id="headTitle">
						<i>Collective Biographies of Women: An Annotated Bibliography</i>
					</td>
				</tr>
			</table>
			<h2 id="byline">
				<i>Alison Booth</i>
			</h2>
			<div class="headBorder"/> 
			<p id="subheading">
				<i>Includes Volumes of Three or More Female Biographies Published in English
					1830-1940 <br/>  With Selected Bibliographies of Collections Published before 1830 and after 1940</i>
			</p>
		</div>
		<div id="navbar">
			<span class="nav-item">
				<a href="." id="home-link">Home</a>
			</span> &#160; <span class="nav-item">
				<a href="about" id="about-link">About</a>
			</span> &#160; <span class="nav-item">
				<a href="dimensions" id="dimens-link">Dimensions</a>
			</span> &#160; <span class="nav-item">
				<a href="userguide" id="guide-link">User's Guide</a>
			</span> &#160; <span class="nav-item">
				<a href="browse?section=1" id="browse-link">Browse the Bibliography</a>
			</span> &#160; <span class="nav-item">
				<a href="search" id="search-link">Search the Bibliography</a>
			</span> &#160; <span class="nav-item">
				<a href="popchart" id="pop-link">Pop Chart</a>
			</span>
		</div>
	</xsl:template>

</xsl:stylesheet>
