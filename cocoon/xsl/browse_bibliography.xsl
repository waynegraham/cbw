<?xml version="1.0" encoding="UTF-8"?>

<!-- This is the stylesheet for browsing the bibliography for CBW and for displaying a bibliography from a search result.
	
	Created July 2007 by Ethan Gruber.  Modified 2008 by Joseph Gilbert -->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
	<xsl:include href="header.xsl"/>
	<xsl:include href="footer.xsl"/>
	<xsl:include href="biblio.xsl"/>

	<xsl:param name="section"/>
	
	<xsl:variable name="entries" select="//text/body//div2"/>
	<xsl:variable name="count" select="count($entries)"/>	

	<xsl:param name="searchstring"/>

	<xsl:template match="/">
		<html>
			<head>
				<link type="text/css" href="style.css" rel="stylesheet"/>
				<script type="text/javascript" language="javascript" src="javascript/searchhi.js"/>
				<script type="text/javascript" src="javascript/overlib.js"><!-- overLIB (c) Erik Bosrup --></script>
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
					document.getElementById(section).className='selected';
					if(section == 1 || section &gt; 25) {
						document.getElementById('select-link').className='selected';
					} else if(section &gt; 1 &amp;&amp; section &lt; 26) {
						document.getElementById('anno-link').className='selected';
					}
					});
				</script>
			</head>
			<body onLoad="JavaScript:SearchHighlight(); document.getElementById('browse-link').className='selected';">
				<div id="overDiv" style="position:absolute; visibility:hidden; z-index:1000;"></div>
				<table id="wrap">
					<tr>
						<td class="headfoot">
							<xsl:call-template name="header"/>
						</td>
					</tr>
					<tr>
						<td>
							<div id="subNav">
								<a href="browse?section=2" id="anno-link">Annotated Bibliography, 1830-1940</a>
								<a href="browse?section=1" id="select-link">Earlier and Later Examples</a>
							</div>
						</td>
					</tr>
					<xsl:if test="$section &gt; 1 and $section &lt; 26">
					<tr>
						<td>
							<div id="page-nav">
								<a href="browse?section=2" id="2" onmouseover="return overlib('Entries {//div1/div2[@n='A']/bibl[1]/@id} to {//div1/div2[@n='A']/bibl[last()]/@id}');" onmouseout="return nd();">A</a>
								<a href="browse?section=3" id="3" onmouseover="return overlib('Entries {//div1/div2[@n='B']/bibl[1]/@id} to {//div1/div2[@n='B']/bibl[last()]/@id}');" onmouseout="return nd();">B</a>
								<a href="browse?section=4" id="4" onmouseover="return overlib('Entries {//div1/div2[@n='C']/bibl[1]/@id} to {//div1/div2[@n='C']/bibl[last()]/@id}');" onmouseout="return nd();">C</a>
								<a href="browse?section=5" id="5" onmouseover="return overlib('Entries {//div1/div2[@n='D']/bibl[1]/@id} to {//div1/div2[@n='D']/bibl[last()]/@id}');" onmouseout="return nd();">D</a>
								<a href="browse?section=6" id="6" onmouseover="return overlib('Entries {//div1/div2[@n='E']/bibl[1]/@id} to {//div1/div2[@n='E']/bibl[last()]/@id}');" onmouseout="return nd();">E</a>
								<a href="browse?section=7" id="7" onmouseover="return overlib('Entries {//div1/div2[@n='F']/bibl[1]/@id} to {//div1/div2[@n='F']/bibl[last()]/@id}');" onmouseout="return nd();">F</a>
								<a href="browse?section=8" id="8" onmouseover="return overlib('Entries {//div1/div2[@n='G']/bibl[1]/@id} to {//div1/div2[@n='G']/bibl[last()]/@id}');" onmouseout="return nd();">G</a>
								<a href="browse?section=9" id="9" onmouseover="return overlib('Entries {//div1/div2[@n='H']/bibl[1]/@id} to {//div1/div2[@n='H']/bibl[last()]/@id}');" onmouseout="return nd();">H</a>
								<a href="browse?section=10" id="10" onmouseover="return overlib('Entries {//div1/div2[@n='I']/bibl[1]/@id} to {//div1/div2[@n='I']/bibl[last()]/@id}');" onmouseout="return nd();">I</a>
								<a href="browse?section=11" id="11" onmouseover="return overlib('Entries {//div1/div2[@n='J']/bibl[1]/@id} to {//div1/div2[@n='J']/bibl[last()]/@id}');" onmouseout="return nd();">J</a>
								<a href="browse?section=12" id="12" onmouseover="return overlib('Entries {//div1/div2[@n='K']/bibl[1]/@id} to {//div1/div2[@n='K']/bibl[last()]/@id}');" onmouseout="return nd();">K</a>
								<a href="browse?section=13" id="13" onmouseover="return overlib('Entries {//div1/div2[@n='L']/bibl[1]/@id} to {//div1/div2[@n='L']/bibl[last()]/@id}');" onmouseout="return nd();">L</a>
								<a href="browse?section=14" id="14" onmouseover="return overlib('Entries {//div1/div2[@n='M']/bibl[1]/@id} to {//div1/div2[@n='M']/bibl[last()]/@id}');" onmouseout="return nd();">M</a>
								<a href="browse?section=15" id="15" onmouseover="return overlib('Entries {//div1/div2[@n='N']/bibl[1]/@id} to {//div1/div2[@n='N']/bibl[last()]/@id}');" onmouseout="return nd();">N</a>
								<a href="browse?section=16" id="16" onmouseover="return overlib('Entries {//div1/div2[@n='O']/bibl[1]/@id} to {//div1/div2[@n='O']/bibl[last()]/@id}');" onmouseout="return nd();">O</a>
								<a href="browse?section=17" id="17" onmouseover="return overlib('Entries {//div1/div2[@n='P']/bibl[1]/@id} to {//div1/div2[@n='P']/bibl[last()]/@id}');" onmouseout="return nd();">P</a>
								<a><span class='no-entries'>Q</span></a>
								<a href="browse?section=18" id="18" onmouseover="return overlib('Entries {//div1/div2[@n='R']/bibl[1]/@id} to {//div1/div2[@n='R']/bibl[last()]/@id}');" onmouseout="return nd();">R</a>
								<a href="browse?section=19" id="19" onmouseover="return overlib('Entries {//div1/div2[@n='S']/bibl[1]/@id} to {//div1/div2[@n='S']/bibl[last()]/@id}');" onmouseout="return nd();">S</a>
								<a href="browse?section=20" id="20" onmouseover="return overlib('Entries {//div1/div2[@n='T']/bibl[1]/@id} to {//div1/div2[@n='T']/bibl[last()]/@id}');" onmouseout="return nd();">T</a>
								<a href="browse?section=21" id="21" onmouseover="return overlib('Entries {//div1/div2[@n='U']/bibl[1]/@id} to {//div1/div2[@n='U']/bibl[last()]/@id}');" onmouseout="return nd();">U</a>
								<a href="browse?section=22" id="22" onmouseover="return overlib('Entries {//div1/div2[@n='V']/bibl[1]/@id} to {//div1/div2[@n='V']/bibl[last()]/@id}');" onmouseout="return nd();">V</a>
								<a href="browse?section=23" id="23" onmouseover="return overlib('Entries {//div1/div2[@n='W']/bibl[1]/@id} to {//div1/div2[@n='W']/bibl[last()]/@id}');" onmouseout="return nd();">W</a>
								<a><span class='no-entries'>X</span></a>
								<a href="browse?section=24" id="24" onmouseover="return overlib('Entries {//div1/div2[@n='Y']/bibl[1]/@id} to {//div1/div2[@n='Y']/bibl[last()]/@id}');" onmouseout="return nd();">Y</a>
								<a href="browse?section=25" id="25" onmouseover="return overlib('Entries {//div1/div2[@n='Z']/bibl[1]/@id} to {//div1/div2[@n='Z']/bibl[last()]/@id}');" onmouseout="return nd();">Z</a>
							</div>
						</td>
					</tr>
					</xsl:if>
					<xsl:if test="$section = 1 or $section &gt; 25">
						<tr>
							<td>
								<div id="page-nav">
									<a href="browse?section=1" id="1">Collections before 1830</a>
									<a href="browse?section=26" id="26">Collections after 1940</a>
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
											<xsl:variable name="searchTitle">
												<xsl:choose>
													<xsl:when test="title[@type='search']">
														<xsl:value-of select="normalize-space(title[@type='search'])"/>
													</xsl:when>
													<xsl:when test="contains(title/hi, ':')">
														<xsl:value-of select="substring-before(normalize-space(title/hi), ':')"/>
													</xsl:when>
													<xsl:otherwise>
														<xsl:value-of select="normalize-space(title/hi)"/>
													</xsl:otherwise>
												</xsl:choose>																							
											</xsl:variable>
											<xsl:variable name="searchAuthor">
												<xsl:choose>
													<xsl:when test="author/name[@type='last']">
														<xsl:value-of select="author/name[@type='last']"/>
													</xsl:when>
													<xsl:when test="author/abbr/@expan">
														<xsl:value-of select="substring-before(author/abbr/@expan, ',')"/>
													</xsl:when>
													<xsl:when test="editor/name[@type='last']">
														<xsl:value-of select="editor/name[@type='last']"/>
													</xsl:when>
													<xsl:otherwise>
														<xsl:value-of select="''"/>
													</xsl:otherwise>
												</xsl:choose>																							
											</xsl:variable>
											<a
												href="http://www.worldcat.org/search?q=%22{$searchTitle}%22+au%3A{$searchAuthor}"
												>Search OCLC WorldCat for this title.</a>
											<br/>
											<a
												href="http://books.google.com/books?as_q=%22{$searchTitle}%22&amp;as_auth={$searchAuthor}"
												>Search Google Books for this title.</a>
										</div>
									</xsl:for-each>
								</xsl:when>
								<!-- otherwise, it is applied to the bibl with an id of $bibl_id -->
								<xsl:otherwise>
									<div class="bibl">
									<xsl:apply-templates select="//bibl[@id=$bibl_id]"/>
									<xsl:if test="//bibl[@id=$bibl_id]/image">
										<ul class="image-carousel jcarousel-skin-tango">
											<xsl:for-each select="//bibl[@id=$bibl_id]/image">
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
										<xsl:variable name="searchTitle">
											<xsl:choose>
												<xsl:when test="contains(//bibl[@id=$bibl_id]/title/hi, ':')">
													<xsl:value-of select="substring-before(normalize-space(//bibl[@id=$bibl_id]/title/hi), ':')"/>
												</xsl:when>
												<xsl:otherwise>
													<xsl:value-of select="normalize-space(//bibl[@id=$bibl_id]/title/hi)"/>
												</xsl:otherwise>
											</xsl:choose>																							
										</xsl:variable>
										<xsl:variable name="searchAuthor">
											<xsl:choose>
												<xsl:when test="//bibl[@id=$bibl_id]/author/name[@type='last']">
													<xsl:value-of select="//bibl[@id=$bibl_id]/author/name[@type='last']"/>
												</xsl:when>
												<xsl:when test="//bibl[@id=$bibl_id]/author/abbr/@expan">
													<xsl:value-of select="substring-before(//bibl[@id=$bibl_id]/author/abbr/@expan, ',')"/>
												</xsl:when>
												<xsl:when test="//bibl[@id=$bibl_id]/editor/name[@type='last']">
													<xsl:value-of select="//bibl[@id=$bibl_id]/editor/name[@type='last']"/>
												</xsl:when>
												<xsl:otherwise>
													<xsl:value-of select="''"/>
												</xsl:otherwise>
											</xsl:choose>																							
										</xsl:variable>
										<a
											href="http://www.worldcat.org/search?q=%22{$searchTitle}%22+au%3A{$searchAuthor}"
											>Search OCLC WorldCat for this title.</a>
										<br/>
										<a
											href="http://books.google.com/books?as_q=%22{$searchTitle}%22&amp;as_auth={$searchAuthor}"
											>Search Google Books for this title.</a>
									</div>
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
