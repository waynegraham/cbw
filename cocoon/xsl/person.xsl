<?xml version="1.0" encoding="UTF-8"?>

<!-- Person profile stylesheet for CBW.
    
    Created May 2009 by Joseph Gilbert
	Edited July 2009 by Ethan Gruber-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
	<xsl:include href="header.xsl"/>
	<xsl:include href="footer.xsl"/>

	<xsl:param name="id"/>

	<xsl:template match="/">
		<html>
			<head>
				<link type="text/css" href="style.css" rel="stylesheet"/>
				<title>The Collective Biographies of Women: Biographies</title>
				<script src="javascript/illus.js" language="javascript" type="text/javascript"/>
				<script src="javascript/jcarousel/lib/jquery-1.2.3.pack.js" type="text/javascript"/>
				<script src="javascript/jcarousel/lib/jquery.jcarousel.pack.js" type="text/javascript"/>
				<script src="javascript/jcarousel/lib/thickbox/thickbox.js" type="text/javascript"/>
				<link href="javascript/jcarousel/lib/jquery.jcarousel.css" type="text/css"
					rel="stylesheet"/>
				<link href="thickbox.css" type="text/css" rel="stylesheet"/>
				<link href="javascript/jcarousel/skins/tango/skin.css" type="text/css"
					rel="stylesheet"/>
				<script type="text/javascript" src="javascript/toggle_essays.js"/>
				<script type="text/javascript" src="javascript/initialize.js"/>
			</head>
			<body onload="document.getElementById('home-link').className='selected';">
				<div id="wrap">
					<table>
						<tr>
							<td class="headfoot">
								<xsl:call-template name="header"/>
							</td>
						</tr>
					</table>
					<div class="content">
						<xsl:apply-templates select="descendant::div1[@id = $id]"/>
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

	<xsl:template match="div1">
		<div id="bd">
			<div id="intro">
				<div class="pic">
					<xsl:apply-templates select="div2[@type='images']"/>
				</div>
				<div class="data" id="data_top">
					<h1>
						<xsl:value-of select="head/name[@type='full']/text()"/>
					</h1>
					<xsl:if test="head/name[@type='full']/seg[@type='alt_name']">					
						<h2>
							<xsl:value-of select="head/name[@type='full']/seg[@type='alt_name']"/>
						</h2>
					</xsl:if>
					<div id="milestones">
						<xsl:apply-templates select="div2[@type='milestones']"/>
					</div>
				</div>
				<div class="data" id="data_bottom">
					<div id="cbw_search">
						<a
							href="search?rows=20&amp;start=0&amp;fulltext={head/name[@type='search']}&amp;action=Submit"
							>Search for <xsl:value-of select="head/name[@type='search']"/> in
							CBW.</a>
					</div>
					<div id="pop_link">
						<a href="popchart#{head/name[@type='search']}">Find <xsl:value-of
								select="head/name[@type='search']"/> on the Pop Chart.</a>
					</div>
				</div>
			</div>

			<xsl:apply-templates select="div2[@type='bio']"/>
			<xsl:apply-templates select="div2[@type='essay']"/>
			<xsl:apply-templates select="div2[@type='links']"/>

		</div>
	</xsl:template>

	<xsl:template match="div2[@type='images']">
		<div class="full">
			<img src="banner_img2.jpg" alt="Queen Elizabeth" class="full_img"/>
		</div>
		<div class="carousel">
			<ul class="image-carousel jcarousel-skin-tango">
				<xsl:for-each select="list/item">
					<li>
						<a onclick="displayIllus('{figure/@n}', '')" title="{label}">
							<img alt="{label}" src="thumbs/{figure/@n}.jpg"/>
							<div class="illus">
								<xsl:value-of select="label"/>
							</div>
						</a>
					</li>
				</xsl:for-each>
			</ul>
		</div>
	</xsl:template>

	<xsl:template match="div2[@type='essay'] | div2[@type='bio']">
		<div class="{@type}">
			<h3 class="text_title">
				<xsl:value-of select="head/title"/>
			</h3>
			<xsl:if test="string(docAuthor)">
				<h4 class="text_author">
					<xsl:value-of select="docAuthor"/>
				</h4>
			</xsl:if>
			<xsl:apply-templates select="p[1]"/>
			<div id="{generate-id(.)}_div" style="display:none;" class="hidden">
				<xsl:apply-templates select="p | note"/>
			</div>
			<div class="attr">
				<em>
					<xsl:value-of select="head/bibl"/>
				</em>
			</div>
			<xsl:if test="p[2]">
				<a id="toggle_{generate-id(.)}" class="toggle_link">Read more...</a>
			</xsl:if>
		</div>
	</xsl:template>

	<xsl:template match="div2[@type='links']">
		<div id="links">
			<h3>Links</h3>
			<ul class="links">
				<xsl:for-each select="list/item">
					<li class="item">
						<b>
							<a href="{address/addrLine}">
								<xsl:value-of select="label"/>
							</a>
						</b>
						<br/>
						<xsl:value-of select="p"/>
					</li>
				</xsl:for-each>
			</ul>
		</div>
	</xsl:template>

	<xsl:template match="div2[@type='milestones']">
		<h3>Milestones</h3>
		<dl class="milestones">
			<xsl:for-each select="list/item">
				<div>
					<dt>
						<xsl:value-of select="date"/>
					</dt>
					<dd>
						<xsl:value-of select="label"/>
					</dd>
				</div>
			</xsl:for-each>
		</dl>
	</xsl:template>

	<xsl:template match="div2[@type='bio']/p | div2[@type='essay']/p">
		<xsl:choose>
			<xsl:when test="position() = 1">
				<p id="{generate-id(parent::node())}_p">
					<xsl:apply-templates/>
				</p>
			</xsl:when>
			<xsl:otherwise>
				<p>
					<xsl:apply-templates/>
				</p>
			</xsl:otherwise>
		</xsl:choose>

	</xsl:template>

	<xsl:template match="name">
		<xsl:choose>
			<xsl:when test="@corresp = $id or not(string(@corresp))">
				<xsl:value-of select="."/>
			</xsl:when>
			<xsl:otherwise>
				<a href="?id={@corresp}">
					<xsl:value-of select="."/>
				</a>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>

	<xsl:template match="note">
		<div class="endnote">
			<xsl:apply-templates/>
		</div>
	</xsl:template>

</xsl:stylesheet>
