<?xml version="1.0" encoding="UTF-8"?>

<!-- This is the stylesheet for browsing the bibliography for CBW and for displaying a bibliography from a search result.
	
	Created July 2007 by Ethan Gruber -->

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
			</head>
			<body onLoad="JavaScript:SearchHighlight();">
				<table id="wrap">
					<tr>
						<td class="headfoot">
							<xsl:call-template name="header"/>
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
			<xsl:value-of select="head"/>
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
			<br/>
			<br/>
			<a href="http://www.worldcat.org/search?q={title/hi}">Search OCLC WorldCat for this
			title.</a>
			<a href="http://www.worldcat.org/search?ti%3A{title/hi}+au%3A{auth/name[@type=last]}+su%3Asubj1&amp;fq=yr%3A{date}+%3E&amp;qt=advanced">new</a>
			<br/>
			<a href="http://books.google.com/books?q={title/hi}">Search Google Books for this
			title.</a>
		</div>

	</xsl:template>

</xsl:stylesheet>
