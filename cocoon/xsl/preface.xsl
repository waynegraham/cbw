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
								<li><img src="full/no386.jpg" width="300" height="440" alt="" /><div class="featured-cap">Joan of Arc</div></li>
								<li><img src="full/no301.jpg" width="300" height="440" alt="" /><div class="featured-cap">Frances Power Cobbe</div></li>
								<li><img src="full/no319.jpg" width="300" height="440" alt="" /><div class="featured-cap">Mary Somerville</div></li>
								<li><img src="full/no236.jpg" width="300" height="440" alt="" /><div class="featured-cap">Adelaide Procter</div></li>
								<li><img src="full/no145.jpg" width="300" height="440" alt="" /><div class="featured-cap">Grace Darling</div></li>
								<li><img src="full/no290.jpg" width="300" height="440" alt="" /><div class="featured-cap">Elizabeth Fry</div></li>
								<li><img src="full/no291.jpg" width="300" height="440" alt="" /><div class="featured-cap">Florence Nightingale</div></li>
								<li><img src="full/no289.jpg" width="300" height="440" alt="" /><div class="featured-cap">Queen Victoria. "Her Majesty the Queen. From a photograph by Hughes &amp; Mullins." From Rosa Nouchette Carey, 
												<hi rend="italics">Twelve Notable Good Women of the XIX Century.</hi></div></li>
								<li><img src="full/no248.jpg" width="300" height="440" alt="" /><div class="featured-cap">Charlotte Bronte</div></li>
								<li><img src="full/no425.jpg" width="300" height="440" alt="" /><div class="featured-cap">Lady Jane Grey</div></li>
								<li><img src="full/no240.jpg" width="300" height="440" alt="" /><div class="featured-cap">Hannah More</div></li>
								<li><img src="full/no426.jpg" width="300" height="440" alt="" /><div class="featured-cap">Lady Russell</div></li>
								<li><img src="full/no382.jpg" width="300" height="440" alt="" /><div class="featured-cap">Mme de Stael</div></li>
								<li><img src="full/no01.jpg" width="300" height="440" alt="" /><div class="featured-cap">Queen Elizabeth I</div></li>
								<li><img src="full/no450.jpg" width="300" height="440" alt="" /><div class="featured-cap">Mme Roland</div></li>
								<li><img src="full/no416.jpg" width="300" height="440" alt="" /><div class="featured-cap">Pocahontas</div></li>
								<li><img src="full/no238.jpg" width="300" height="440" alt="" /><div class="featured-cap">Caroline Herschel. From 
												an original oil painting, by M. G. Titlemann, now in the possession of Sir William Herschel, Bart. 
												From A. J. Green Armytage, <hi rend="italics">Maids of Honour</hi>.</div></li>
								<li><img src="full/no92.jpg" width="300" height="440" alt="" /><div class="featured-cap">Ann Hasseltine Judson</div></li>
								<li><img src="full/no409.jpg" width="300" height="440" alt="" /><div class="featured-cap">Jenny Lind</div></li>
								<li><img src="full/no247.jpg" width="300" height="440" alt="" /><div class="featured-cap"><a href="featured?id=SISTER_DORA">Sister Dora</a></div></li>								
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
								<li><a href="search">Search the annotated bibliography</a></li>
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