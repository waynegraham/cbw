<?xml version="1.0" encoding="UTF-8"?>

<!-- This is the preface stylesheet for CBW.
	
	Created July 2007 by Ethan Gruber.  Modified March, April, May 2008 by Joseph Gilbert -->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
	<xsl:include href="header.xsl"/>
	<xsl:include href="footer.xsl"/>
	<xsl:include href="biblio.xsl"/>

	<xsl:template match="/">
		<html>
			<head>
				<link type="text/css" href="style.css" rel="stylesheet"/>
				<title>The Collective Biographies of Women: Preface</title>
				<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
				<script src="javascript/jcarousel/lib/jquery.jcarousel.pack.js" type="text/javascript"/>
				<script type="text/javascript">
					$(function() {
						jQuery('#featured').jcarousel({
							'scroll': 1,
							'wrap':'last'
						});
					});
				</script>
				<link href="javascript/jcarousel/lib/jquery.jcarousel.css" type="text/css"
					rel="stylesheet"/>
				<link href="javascript/jcarousel/skins/tango/skin.css" type="text/css"
					rel="stylesheet"/>
			</head>
			<body onload="document.getElementById('home-link').className='selected';">
				<div id="wrap">
					<div class="headfoot">
						<xsl:call-template name="header"/>
					</div>
					<div id="top-container">
						<div id="featured-container">
							<ul id="featured" class="jcarousel-skin-tango">
								<li><img src="full/no386.jpg" width="300" height="430" alt="" /><div class="featured-cap"><a href="featured?id=JOAN_OF_ARC"><xsl:value-of select="//div1[@id='JOAN_OF_ARC']/head/note[@type='caption']/name"/></a><xsl:value-of select="//div1[@id='JOAN_OF_ARC']/head/note[@type='caption']/text()"/></div></li>
								<li><img src="full/no434.jpg" width="330" height="443" alt="" /><div class="featured-cap"><a href="featured?id=QUEEN_ELIZABETH_I"><xsl:value-of select="//div1[@id='QUEEN_ELIZABETH_I']/head/note[@type='caption']/name"/></a><xsl:value-of select="//div1[@id='QUEEN_ELIZABETH_I']/head/note[@type='caption']/text()"/></div></li>
								<li><img src="full/no425.jpg" width="300" height="430" alt="" /><div class="featured-cap"><a href="featured?id=LADY_JANE_GREY"><xsl:value-of select="//div1[@id='LADY_JANE_GREY']/head/note[@type='caption']/name"/></a><xsl:value-of select="//div1[@id='LADY_JANE_GREY']/head/note[@type='caption']/text()"/></div></li>
								<li><img src="full/no416.jpg" width="300" height="430" alt="" /><div class="featured-cap"><a href="featured?id=POCAHONTAS"><xsl:value-of select="//div1[@id='POCAHONTAS']/head/note[@type='caption']/name"/></a><xsl:value-of select="//div1[@id='POCAHONTAS']/head/note[@type='caption']/text()"/></div></li>
								<li><img src="full/no426.jpg" width="300" height="430" alt="" /><div class="featured-cap"><a href="featured?id=LADY_RACHEL_RUSSELL"><xsl:value-of select="//div1[@id='LADY_RACHEL_RUSSELL']/head/note[@type='caption']/name"/></a><xsl:value-of select="//div1[@id='LADY_RACHEL_RUSSELL']/head/note[@type='caption']/text()"/></div></li>
								<li><img src="full/no240.jpg" width="300" height="430" alt="" /><div class="featured-cap">The bluestocking, the eminent conservative educator, <a href="featured?id=HANNAH MORE"><xsl:value-of select="//div1[@id='HANNAH_MORE']/head/note[@type='caption']/name"/></a><xsl:value-of select="//div1[@id='HANNAH_MORE']/head/note[@type='caption']/text()"/></div></li>
								<li><img src="full/no238.jpg" width="300" height="430" alt="" /><div class="featured-cap"><a href="featured?id=CAROLINE_HERSCHEL"><xsl:value-of select="//div1[@id='CAROLINE_HERSCHEL']/head/note[@type='caption']/name"/></a><xsl:value-of select="//div1[@id='CAROLINE_HERSCHEL']/head/note[@type='caption']/text()"/></div></li>
								<li><img src="full/no450.jpg" width="300" height="430" alt="" /><div class="featured-cap"><a href="featured?id=MADAME_ROLAND"><xsl:value-of select="//div1[@id='MADAME_ROLAND']/head/note[@type='caption']/name"/></a><xsl:value-of select="//div1[@id='MADAME_ROLAND']/head/note[@type='caption']/text()"/></div></li>
								<li><img src="full/no382.jpg" width="300" height="430" alt="" /><div class="featured-cap"><a href="featured?id=MADAME_DE_STAEL"><xsl:value-of select="//div1[@id='MADAME_DE_STAEL']/head/note[@type='caption']/name"/></a><xsl:value-of select="//div1[@id='MADAME_DE_STAEL']/head/note[@type='caption']/text()"/></div></li>
								<li><img src="full/no435.jpg" width="330" height="443" alt="" /><div class="featured-cap">The prolific novelist and travel writer <a href="featured?id=FRANCES_TROLLOPE"><xsl:value-of select="//div1[@id='FRANCES_TROLLOPE']/head/note[@type='caption']/name"/></a><xsl:value-of select="//div1[@id='FRANCES_TROLLOPE']/head/note[@type='caption']/text()"/></div></li>
								<li><img src="full/no319.jpg" width="300" height="430" alt="" /><div class="featured-cap"><a href="featured?id=MARY_SOMERVILLE"><xsl:value-of select="//div1[@id='MARY_SOMERVILLE']/head/note[@type='caption']/name"/></a><xsl:value-of select="//div1[@id='MARY_SOMERVILLE']/head/note[@type='caption']/text()"/></div></li>
								<li><img src="full/no290.jpg" width="300" height="430" alt="" /><div class="featured-cap"><a href="featured?id=ELIZABETH_FRY"><xsl:value-of select="//div1[@id='ELIZABETH_FRY']/head/note[@type='caption']/name"/></a><xsl:value-of select="//div1[@id='ELIZABETH_FRY']/head/note[@type='caption']/text()"/></div></li>
								<li><img src="full/no92.jpg" width="330" height="443" alt="" /><div class="featured-cap"><a href="featured?id=ANN_HASSELTINE_JUDSON"><xsl:value-of select="//div1[@id='ANN_HASSELTINE_JUDSON']/head/note[@type='caption']/name"/></a><xsl:value-of select="//div1[@id='ANN_HASSELTINE_JUDSON']/head/note[@type='caption']/text()"/></div></li>
								<li><img src="full/no145.jpg" width="300" height="430" alt="" /><div class="featured-cap"><a href="featured?id=GRACE_DARLING"><xsl:value-of select="//div1[@id='GRACE_DARLING']/head/note[@type='caption']/name"/></a><xsl:value-of select="//div1[@id='GRACE_DARLING']/head/note[@type='caption']/text()"/></div></li>
								<li><img src="full/no401.jpg" width="300" height="430" alt="" /><div class="featured-cap">The famous novelist <a href="featured?id=CHARLOTTE_BRONTE"><xsl:value-of select="//div1[@id='CHARLOTTE_BRONTE']/head/note[@type='caption']/name"/></a><xsl:value-of select="//div1[@id='CHARLOTTE_BRONTE']/head/note[@type='caption']/text()"/></div></li>
								<li><img src="full/no289.jpg" width="300" height="430" alt="" /><div class="featured-cap"><a href="featured?id=QUEEN_VICTORIA"><xsl:value-of select="//div1[@id='QUEEN_VICTORIA']/head/note[@type='caption']/name"/></a><xsl:value-of select="//div1[@id='QUEEN_VICTORIA']/head/note[@type='caption']/text()"/></div></li>
								<li><img src="full/no484.jpg" width="300" height="430" alt="" /><div class="featured-cap"><a href="featured?id=FLORENCE_NIGHTINGALE"><xsl:value-of select="//div1[@id='FLORENCE_NIGHTINGALE']/head/note[@type='caption']/name"/></a><xsl:value-of select="//div1[@id='FLORENCE_NIGHTINGALE']/head/note[@type='caption']/text()"/></div></li>
								<li><img src="full/no469.jpg" width="300" height="430" alt="" /><div class="featured-cap"><a href="featured?id=JENNY_LIND"><xsl:value-of select="//div1[@id='JENNY_LIND']/head/note[@type='caption']/name"/></a><xsl:value-of select="//div1[@id='JENNY_LIND']/head/note[@type='caption']/text()"/></div></li>
								<li><img src="full/no439.jpg" width="300" height="430" alt="" /><div class="featured-cap"><a href="featured?id=FRANCES_COBBE"><xsl:value-of select="//div1[@id='FRANCES_COBBE']/head/note[@type='caption']/name"/></a><xsl:value-of select="//div1[@id='FRANCES_COBBE']/head/note[@type='caption']/text()"/></div></li>
								<li><img src="full/no236.jpg" width="300" height="430" alt="" /><div class="featured-cap"><a href="featured?id=ADELAIDE_PROCTER"><xsl:value-of select="//div1[@id='ADELAIDE_PROCTER']/head/note[@type='caption']/name"/></a><xsl:value-of select="//div1[@id='ADELAIDE_PROCTER']/head/note[@type='caption']/text()"/></div></li>
								<li><img src="full/no247.jpg" width="300" height="430" alt="" /><div class="featured-cap"><a href="featured?id=SISTER_DORA"><xsl:value-of select="//div1[@id='SISTER_DORA']/head/note[@type='caption']/name"/></a><xsl:value-of select="//div1[@id='SISTER_DORA']/head/note[@type='caption']/text()"/></div></li>							
							</ul>
						</div>
						<div id="sidebar">
							<p>Rediscover thousands of women of all kinds and eras.  Retrieve books rich in varied names, portraits, 
									and stories, from the famous to the obscure. Find out more about individual lives and the variations and 
									similarities in one collection or across many. What can we learn from this vast archive of popular publications across 
									centuries?  What emerges from the study of women's life narratives in depth as well as en
									masse?  Collective Biographies of Women, with its annotated bibliography, growing archive of texts, 
									resources featuring individual women, and new tools for interpreting prosopography, is an experiment in 
									digital humanities focused on a widespread genre, the collection of short biographies. </p>
							<ul>
								<li><a href="browse?section=2">Go to the bibliography to find or read about individuals, groups, and books.</a></li>
								<li><a href="subjects">Featured Subjects: find sources and short meta-biographies of selected women.</a></li>
								<li><a href="#">Compare biographies of one or many lives (under development).</a></li>
								<li><a href="#">Visit the Sister Dora Exhibit: A model collection of books that share a renowned subject: the saint-like Victorian
									nurse (under development).</a></li>
							</ul>
						</div>
					</div>
					<div id="footer">
						<div id="ft">
							<div id="ft_wrap">
								<div class="scholars_lab_logo">
									<a href="http://lib.virginia.edu/scholarslab/"><img src="slab.png" alt="Scholars' Lab"/></a>
								</div>
								<div id="util_container">
									<div class="contact">
										<div>Collective Biographies of Women is a project of Alison Booth, Professor, <a href="http://www.engl.virginia.edu">Department of English of the University of Virginia 
</a> and Associate Fellow, <a href="http://www.iath.virginia.edu">Institute for Advanced Technology in the Humanities</a>. It is part of <a href="http://www.nines.org">NINES</a>, a 
consortium of digital scholarship in nineteenth-century studies.  The <a href="http://lib.virginia.edu/scholarslab/">Scholars' Lab</a> supports digital scholarship through the <a href="http://lib.virginia.edu">University of Virginia Library</a>.</div>
										<a href="mailto:ab6j@virginia.edu" style="color:#531B15;">Contact us <img src="http://www.scholarslab.org/wp-content/themes/oulipo2/images/mail.png" alt="contact"/></a>
									</div>
								</div>
							</div>
						</div>
					</div>				
				</div>
			</body>
		</html>
	</xsl:template>

	<xsl:template match="/TEI.2/text/front/div1[@type='preface']">
		<xsl:apply-templates select="p"/>
	</xsl:template>


	<xsl:template match="/TEI.2/text/front/div1[@type='preface']/div2">
		<div class="box">
			<xsl:apply-templates/>
		</div>
	</xsl:template>

	<xsl:template match="/TEI.2/text/front/div1[@type='preface']/div2/head">
		<div class="head1">
			<xsl:apply-templates/>
		</div>
	</xsl:template>

	<xsl:template match="p">
		<p>
			<xsl:apply-templates/>
		</p>
	</xsl:template>

	<xsl:template match="div2[@type='footer']">
		<hr/>
		<div class="smallpara">
			<xsl:apply-templates/>
		</div>
	</xsl:template>

	<xsl:template match="ref">
		<a href="{./@type}">
			<xsl:apply-templates/>
		</a>
	</xsl:template>

	<xsl:template match="lb">
		<br/>
	</xsl:template>

</xsl:stylesheet>