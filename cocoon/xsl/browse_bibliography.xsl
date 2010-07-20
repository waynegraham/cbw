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
	<xsl:variable name="apos"><xsl:text>'</xsl:text></xsl:variable>
	<xsl:variable name="aposfix">&#39;</xsl:variable>

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
								<span id="anno-link"><a href="browse?section=2">Annotated Bibliography, 1830-1940</a></span>
								<span id="select-link"><a href="browse?section=1">Earlier and Later Examples</a></span>
							</div>
						</td>
					</tr>
					<xsl:if test="$section &gt; 1 and $section &lt; 26">
					<tr>
						<td>
							<div id="page-nav">
								<span id="2"><a href="browse?section=2"  onmouseover="return overlib('Entries {//div1/div2[@n='A']/bibl[1]/@id} to {//div1/div2[@n='A']/bibl[last()]/@id}');" onmouseout="return nd();">A</a>    </span>
								<span id="3"><a href="browse?section=3"  onmouseover="return overlib('Entries {//div1/div2[@n='B']/bibl[1]/@id} to {//div1/div2[@n='B']/bibl[last()]/@id}');" onmouseout="return nd();">B</a>    </span>
								<span id="4"><a href="browse?section=4"  onmouseover="return overlib('Entries {//div1/div2[@n='C']/bibl[1]/@id} to {//div1/div2[@n='C']/bibl[last()]/@id}');" onmouseout="return nd();">C</a>    </span>
								<span id="5"><a href="browse?section=5"  onmouseover="return overlib('Entries {//div1/div2[@n='D']/bibl[1]/@id} to {//div1/div2[@n='D']/bibl[last()]/@id}');" onmouseout="return nd();">D</a>    </span>
								<span id="6"><a href="browse?section=6"  onmouseover="return overlib('Entries {//div1/div2[@n='E']/bibl[1]/@id} to {//div1/div2[@n='E']/bibl[last()]/@id}');" onmouseout="return nd();">E</a>    </span>
								<span id="7"><a href="browse?section=7"  onmouseover="return overlib('Entries {//div1/div2[@n='F']/bibl[1]/@id} to {//div1/div2[@n='F']/bibl[last()]/@id}');" onmouseout="return nd();">F</a>    </span>
								<span id="8"><a href="browse?section=8"  onmouseover="return overlib('Entries {//div1/div2[@n='G']/bibl[1]/@id} to {//div1/div2[@n='G']/bibl[last()]/@id}');" onmouseout="return nd();">G</a>    </span>
								<span id="9"><a href="browse?section=9"  onmouseover="return overlib('Entries {//div1/div2[@n='H']/bibl[1]/@id} to {//div1/div2[@n='H']/bibl[last()]/@id}');" onmouseout="return nd();">H</a>    </span>
								<span id="10"><a href="browse?section=10"  onmouseover="return overlib('Entries {//div1/div2[@n='I']/bibl[1]/@id} to {//div1/div2[@n='I']/bibl[last()]/@id}');" onmouseout="return nd();">I</a>  </span>
								<span id="11"><a href="browse?section=11"  onmouseover="return overlib('Entries {//div1/div2[@n='J']/bibl[1]/@id} to {//div1/div2[@n='J']/bibl[last()]/@id}');" onmouseout="return nd();">J</a>  </span>
								<span id="12"><a href="browse?section=12"  onmouseover="return overlib('Entries {//div1/div2[@n='K']/bibl[1]/@id} to {//div1/div2[@n='K']/bibl[last()]/@id}');" onmouseout="return nd();">K</a>  </span>
								<span id="13"><a href="browse?section=13"  onmouseover="return overlib('Entries {//div1/div2[@n='L']/bibl[1]/@id} to {//div1/div2[@n='L']/bibl[last()]/@id}');" onmouseout="return nd();">L</a>  </span>
								<span id="14"><a href="browse?section=14"  onmouseover="return overlib('Entries {//div1/div2[@n='M']/bibl[1]/@id} to {//div1/div2[@n='M']/bibl[last()]/@id}');" onmouseout="return nd();">M</a>  </span>
								<span id="15"><a href="browse?section=15"  onmouseover="return overlib('Entries {//div1/div2[@n='N']/bibl[1]/@id} to {//div1/div2[@n='N']/bibl[last()]/@id}');" onmouseout="return nd();">N</a>  </span>
								<span id="16"><a href="browse?section=16"  onmouseover="return overlib('Entries {//div1/div2[@n='O']/bibl[1]/@id} to {//div1/div2[@n='O']/bibl[last()]/@id}');" onmouseout="return nd();">O</a>  </span>
								<span id="17"><a href="browse?section=17"  onmouseover="return overlib('Entries {//div1/div2[@n='P']/bibl[1]/@id} to {//div1/div2[@n='P']/bibl[last()]/@id}');" onmouseout="return nd();">P</a>  </span>
								<span><a><span class='no-entries'>Q</span></a>                                                                                                                                                  </span>
								<span id="18"><a href="browse?section=18"  onmouseover="return overlib('Entries {//div1/div2[@n='R']/bibl[1]/@id} to {//div1/div2[@n='R']/bibl[last()]/@id}');" onmouseout="return nd();">R</a>  </span>
								<span id="19"><a href="browse?section=19"  onmouseover="return overlib('Entries {//div1/div2[@n='S']/bibl[1]/@id} to {//div1/div2[@n='S']/bibl[last()]/@id}');" onmouseout="return nd();">S</a>  </span>
								<span id="20"><a href="browse?section=20"  onmouseover="return overlib('Entries {//div1/div2[@n='T']/bibl[1]/@id} to {//div1/div2[@n='T']/bibl[last()]/@id}');" onmouseout="return nd();">T</a>  </span>
								<span id="21"><a href="browse?section=21"  onmouseover="return overlib('Entries {//div1/div2[@n='U']/bibl[1]/@id} to {//div1/div2[@n='U']/bibl[last()]/@id}');" onmouseout="return nd();">U</a>  </span>
								<span id="22"><a href="browse?section=22"  onmouseover="return overlib('Entries {//div1/div2[@n='V']/bibl[1]/@id} to {//div1/div2[@n='V']/bibl[last()]/@id}');" onmouseout="return nd();">V</a>  </span>
								<span id="23"><a href="browse?section=23"  onmouseover="return overlib('Entries {//div1/div2[@n='W']/bibl[1]/@id} to {//div1/div2[@n='W']/bibl[last()]/@id}');" onmouseout="return nd();">W</a>  </span>
								<span><a><span class='no-entries'>X</span></a>                                                                                                                                                  </span>
								<span id="24"><a href="browse?section=24"  onmouseover="return overlib('Entries {//div1/div2[@n='Y']/bibl[1]/@id} to {//div1/div2[@n='Y']/bibl[last()]/@id}');" onmouseout="return nd();">Y</a>  </span>
								<span id="25"><a href="browse?section=25"  onmouseover="return overlib('Entries {//div1/div2[@n='Z']/bibl[1]/@id} to {//div1/div2[@n='Z']/bibl[last()]/@id}');" onmouseout="return nd();">Z</a>  </span>
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
															<a title="{./imgDesc}" onclick='displayIllus("{@n}", "{./imgDesc}")'>
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
													<xsl:variable name="imageDesc"><xsl:value-of select="replace(./imageDesc,$apos,$aposfix)"/></xsl:variable>
													<a title="{./imgDesc}" onclick="displayIllus('{@n}', '{$imageDesc}')">
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
