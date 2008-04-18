<?xml version="1.0" encoding="UTF-8"?>

<!-- This is the header stylesheet for CBW.
	
	Created July 2007 by Ethan Gruber, edited 2008 by Joseph Gilbert -->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
	<xsl:output method="xml" indent="yes"/>
	<xsl:template name="header">
		<div id="head" style="margin: 20px 75px;">
			<table id="headTop">
				<tr>
					<td id="headImg" style="width: 330px">
						<img src="banner_img1.jpg"/>
						<img src="banner_img2.jpg"/>
						<img src="banner_img3.jpg"/>
					</td>
					<td id="headTitle" style="width: 460px; font-size: 24pt; color: #991818;">
						<i>Collective Biographies of Women: A Bibliography, with Annotations</i>
					</td>
				</tr>
			</table>
			<h2 id="byline" style="position:relative; left: 630px; margin-top: -5px">
				<i>Alison Booth</i>
			</h2>
			<div
				style="background:transparent url(banner_border.jpg) repeat-x scroll left bottom; width: 780px; height: 20px;"> </div>
			<p id="subheading" style="font-size:10pt; margin-left: 10px;">
				<i>Includes Volumes of Three or More Female Biographies Published in English
					1830-1940 &#x2022; With a Select Chronological Bibliography Prior to 1830</i>
			</p>
		</div>
		<hr/>

		<div id="navbar">
			<b>
				<a href=".">Home</a>
			</b> &#160; <b>
				<a href="userguide">User Guide</a>
			</b> &#160; <b>
				<a href="browse">Browse the Bibliography</a>
			</b> &#160; <b>
				<a href="search">Search the Bibliography</a>
			</b> &#160; <b>
				<a href="http://etext.lib.virginia.edu">Etext</a>
			</b>
		</div>
		<hr/>

	</xsl:template>

</xsl:stylesheet>
