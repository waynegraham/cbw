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
				<link type="text/css" href="http://jqueryui.com/latest/themes/base/ui.all.css" rel="stylesheet" />
				<script type="text/javascript" src="http://jqueryui.com/latest/jquery-1.3.2.js"></script>
				
				<script src="javascript/jcarousel/lib/jquery.jcarousel.pack.js" type="text/javascript"/>
				<script type="text/javascript" src="http://jqueryui.com/latest/ui/ui.core.js"></script>
				<script type="text/javascript" src="http://jqueryui.com/latest/ui/ui.accordion.js"></script>
				<script type="text/javascript">
					$(function() {
					jQuery('#featured').jcarousel({
						'scroll': 1,
						'wrap':'last'
					});
					$("#accordion").accordion();
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
								<li><img src="full/no386.jpg" width="300" height="440" alt="" /><div class="featured-cap">Arc</div></li>
								<li><img src="full/no301.jpg" width="300" height="440" alt="" /><div class="featured-cap">Cobbe</div></li>
								<li><img src="full/no319.jpg" width="300" height="440" alt="" /><div class="featured-cap">Somerville</div></li>
								<li><img src="full/no236.jpg" width="300" height="440" alt="" /><div class="featured-cap">Procter</div></li>
								<li><img src="full/no145.jpg" width="300" height="440" alt="" /><div class="featured-cap">Darling</div></li>
								<li><img src="full/no290.jpg" width="300" height="440" alt="" /><div class="featured-cap">Fry</div></li>
								<li><img src="full/no291.jpg" width="300" height="440" alt="" /><div class="featured-cap">Nightingale</div></li>
								<li><img src="full/no289.jpg" width="300" height="440" alt="" /><div class="featured-cap">Victoria</div></li>
								<li><img src="full/no248.jpg" width="300" height="440" alt="" /><div class="featured-cap">Bronte</div></li>
								<li><img src="full/no425.jpg" width="300" height="440" alt="" /><div class="featured-cap">Grey</div></li>
								<li><img src="full/no240.jpg" width="300" height="440" alt="" /><div class="featured-cap">More</div></li>
								<li><img src="full/no426.jpg" width="300" height="440" alt="" /><div class="featured-cap">Russell</div></li>
								<li><img src="full/no382.jpg" width="300" height="440" alt="" /><div class="featured-cap">Stael</div></li>
								<li><img src="full/no01.jpg" width="300" height="440" alt="" /><div class="featured-cap">Elizabeth</div></li>
								<li><img src="full/no450.jpg" width="300" height="440" alt="" /><div class="featured-cap">Roland</div></li>
								<li><img src="full/no416.jpg" width="300" height="440" alt="" /><div class="featured-cap">Pocahontas</div></li>
								<li><img src="full/no238.jpg" width="300" height="440" alt="" /><div class="featured-cap">Herschel</div></li>
								<li><img src="full/no92.jpg" width="300" height="440" alt="" /><div class="featured-cap">Judson</div></li>
								<li><img src="full/no409.jpg" width="300" height="440" alt="" /><div class="featured-cap">Lind</div></li>
								<li><img src="full/no247.jpg" width="300" height="440" alt="" /><div class="featured-cap"><a href="featured?id=SISTER_DORA">Sister Dora</a></div></li>								
							</ul>
						</div>
						<div id="sidebar">
							<p>sidebar text.</p>
							<ul>
								<li><a href="search">Search</a></li>
								<li><a href="browse">Browse</a></li>
								<li><a href="featured">Featured Subjects</a></li>
							</ul>
						</div>
						<div id="viz">
							<img src="images/wordle.png" />
						</div>
					</div>
					<div id="footer">
						<div id="ft">
							<div id="ft_wrap">
								<div class="scholars_lab_logo">
									<a href="http://lib.virginia.edu/scholarslab/"><img src="http://www.scholarslab.org/wp-content/themes/oulipo2/images/slab.png" alt="Scholars' Lab"/></a>
								</div>
								<div id="util_container">
									<div class="contact">
										<div>Collective Biographies is a project of Alison Booth of the <a href="http://www.engl.virginia.edu">University of Virginia English Department</a>. The <a href="http://lib.virginia.edu/scholarslab/">Scholars' Lab</a> supports digital scholarship through the <a href="http://lib.virginia.edu">University of Virginia Library</a>.</div>
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