<?xml version="1.0" encoding="UTF-8"?>

<!-- This is the stylesheet for browsing the bibliography for CBW and for displaying a bibliography from a search result.
	
	Created July 2007 by Ethan Gruber.  Modified 2008 by Joseph Gilbert -->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
	<xsl:include href="header.xsl"/>
	<xsl:include href="footer.xsl"/>
	<xsl:include href="biblio.xsl"/>

	<xsl:param name="bibl_id"/>
	<xsl:param name="start"/>
	<xsl:param name="end"/>
	
	<xsl:variable name="entries" select="//text//bibl"/>
	<xsl:variable name="count" select="count($entries)"/>
	<xsl:variable name="pageRange" select="5"/>
	<xsl:variable name="hitsPerPage" select="15"/>	

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
					});
					
				</script>
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
								<a href="browse?start=1&amp;end=15">Early Examples</a>
								<a href="browse?start=53&amp;end=60">Alphabetical, 1830-1940</a>
								<a href="browse?start=987&amp;end=990">Examples after 1940</a>
							</div>
						</td>
					</tr>
					<tr>
						<td class="content">
							<xsl:choose>
								<!-- when the bibl_id is not passed as a parameter, i. e. the page is not accessed from a search result, the stylesheet is applied to all of //text -->
								<xsl:when test="not($bibl_id)">
									<div class="head1">
										<a name="{$entries[position() = $start]/../../head}">
											<xsl:value-of select="$entries[position() = $start]/../../head"/>
										</a>
									</div>
									<div class="head2">
										<a name="{$entries[position() = $start]/../head}">
											<xsl:value-of select="$entries[position() = $start]/../head"/>
										</a>										
									</div>									
									<div id="results-count">Entries <xsl:value-of select="$start"/> - <xsl:value-of select="$end"/> of <xsl:value-of select="count($entries)"/></div>
									<xsl:for-each select="$entries[position() &lt;= $end and position() &gt;= $start]">
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
									</xsl:for-each>
									<div id="page-nav">
										<xsl:call-template name="pageList"/>
									</div>
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
	
	<!--
		list of pages
	-->
	<xsl:template name="pageList">
		<xsl:variable name="currPage" select="floor(($start - 1) div $hitsPerPage + 1)"/>
		<xsl:variable name="minPage">
			<xsl:choose>
				<xsl:when test="$currPage > $pageRange">
					<xsl:value-of select="$currPage - $pageRange"/>
				</xsl:when>
				<xsl:otherwise>1</xsl:otherwise>
			</xsl:choose>
		</xsl:variable>
		<xsl:variable name="maxPage">
			<xsl:choose>
				<xsl:when
					test="$currPage &lt; floor(($count - 1) div $hitsPerPage + 1 - $pageRange)">
					<xsl:value-of select="$currPage + $pageRange"/>
				</xsl:when>
				<xsl:otherwise>
					<xsl:value-of select="floor(($count - 1) div $hitsPerPage + 1)"/>
				</xsl:otherwise>
			</xsl:choose>
		</xsl:variable>
		<xsl:if test="$currPage = $minPage">
			<xsl:text>&lt;&lt; First </xsl:text>
			<xsl:text>&lt; Previous</xsl:text>
		</xsl:if>
		<xsl:if test="$currPage &gt; $minPage">
			<xsl:variable name="prevFrom" select="$start - $hitsPerPage"/>
			<xsl:variable name="prevTo" select="$end - $hitsPerPage"/>
			<a href="browse?start=1&amp;end={$hitsPerPage}">
				<xsl:text>&lt;&lt; First </xsl:text>
			</a>
			<a href="browse?start={$prevFrom}&amp;end={$prevTo}">
				<xsl:text>&lt; Previous</xsl:text>
			</a>
		</xsl:if>
		<xsl:call-template name="pageLoop">
			<xsl:with-param name="minPage" select="$minPage"/>
			<xsl:with-param name="currPage" select="$currPage"/>
			<xsl:with-param name="maxPage" select="$maxPage"/>
		</xsl:call-template>
		<xsl:if test="$currPage = $maxPage">
			<xsl:text>Next &gt; </xsl:text>
			<xsl:text>Last &gt;&gt;</xsl:text>
		</xsl:if>
		<xsl:if test="$currPage &lt; $maxPage">
			<xsl:variable name="nextFrom" select="$start + $hitsPerPage"/>
			<xsl:variable name="nextTo">
				<xsl:choose>
					<xsl:when test="$count &lt; $end + $hitsPerPage - 1">
						<xsl:value-of select="$count"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:value-of select="$end + $hitsPerPage - 1"/>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:variable>
			<a href="browse?start={$nextFrom}&amp;end={$nextTo}">
				<xsl:text>Next &gt; </xsl:text>
			</a>
			<a href="browse?start={$count - $hitsPerPage}&amp;end={$count}">
				<xsl:text>Last &gt;&gt;</xsl:text>
			</a>
		</xsl:if>
	</xsl:template>
	
	<xsl:template name="pageLoop">
		<xsl:param name="minPage"/>
		<xsl:param name="currPage"/>
		<xsl:param name="maxPage"/>
		
		<xsl:if test="$minPage &lt;= $maxPage">
			<xsl:choose>
				<xsl:when test="$minPage = $currPage">
				<span class="current">
					<xsl:value-of select="$minPage"/>
				</span>
				</xsl:when>
				<xsl:otherwise>
				<xsl:call-template name="pageLink">
					<xsl:with-param name="page" select="$minPage"/>
					<xsl:with-param name="label" select="$minPage"/>
				</xsl:call-template>
				</xsl:otherwise>
			</xsl:choose>
			<xsl:call-template name="pageLoop">
				<xsl:with-param name="minPage" select="$minPage + 1"/>
				<xsl:with-param name="currPage" select="$currPage"/>
				<xsl:with-param name="maxPage" select="$maxPage"/>
			</xsl:call-template>
		</xsl:if>
	</xsl:template>
	
	<xsl:template name="pageLink">
		<xsl:param name="page"/>
		<xsl:param name="label"/>
		
		<xsl:variable name="from" select="($page - 1) * $hitsPerPage + 1"/>
		<xsl:variable name="to">
			<xsl:choose>
				<xsl:when test="$count &lt; $from + $hitsPerPage - 1">
					<xsl:value-of select="$count"/>
				</xsl:when>
				<xsl:otherwise>
					<xsl:value-of select="$from + $hitsPerPage - 1"/>
				</xsl:otherwise>
			</xsl:choose>
		</xsl:variable>
		<a class="page-link" href="browse?start={$from}&amp;end={$to}">
			<xsl:value-of select="$label"/>
		</a>
	</xsl:template>
	
</xsl:stylesheet>
