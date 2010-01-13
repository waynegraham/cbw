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
								<li><img src="http://womensbios.lib.virginia.edu/full/no01.jpg" width="300" height="390" alt="" /><div class="featured-cap">Some text can go here with a link to <a href="#">read more...</a></div></li>
								<li><img src="http://womensbios.lib.virginia.edu/full/no06.jpg" width="300" height="390" alt="" /><div class="featured-cap">text here.</div></li>
								<li><img src="http://womensbios.lib.virginia.edu/full/no07.jpg" width="300" height="390" alt="" /><div class="featured-cap">text here.</div></li>
								<li><img src="http://womensbios.lib.virginia.edu/full/no08.jpg" width="300" height="390" alt="" /><div class="featured-cap">text here.</div></li>
								<li><img src="http://womensbios.lib.virginia.edu/full/no24.jpg" width="300" height="390" alt="" /><div class="featured-cap">text here.</div></li>
								<li><img src="http://womensbios.lib.virginia.edu/full/no10.jpg" width="300" height="390" alt="" /><div class="featured-cap">text here.</div></li>
								<li><img src="http://womensbios.lib.virginia.edu/full/no11.jpg" width="300" height="390" alt="" /><div class="featured-cap">text here.</div></li>
								<li><img src="http://womensbios.lib.virginia.edu/full/no12.jpg" width="300" height="390" alt="" /><div class="featured-cap">text here.</div></li>
								<li><img src="http://womensbios.lib.virginia.edu/full/no13.jpg" width="300" height="390" alt="" /><div class="featured-cap">text here.</div></li>
								<li><img src="http://womensbios.lib.virginia.edu/full/no25.jpg" width="300" height="390" alt="" /><div class="featured-cap">text here.</div></li>
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
					<div id="topics">
						<div id="accordion">
							<h3><a href="#">Section 1</a></h3>
							<div>
								<p>
									Mauris mauris ante, blandit et, ultrices a, suscipit eget, quam. Integer
									ut neque. Vivamus nisi metus, molestie vel, gravida in, condimentum sit
									amet, nunc. Nam a nibh. Donec suscipit eros. Nam mi. Proin viverra leo ut
									odio. Curabitur malesuada. Vestibulum a velit eu ante scelerisque vulputate.
								</p>
							</div>
							<h3><a href="#">Section 2</a></h3>
							<div>
								<p>
									Sed non urna. Donec et ante. Phasellus eu ligula. Vestibulum sit amet
									purus. Vivamus hendrerit, dolor at aliquet laoreet, mauris turpis porttitor
									velit, faucibus interdum tellus libero ac justo. Vivamus non quam. In
									suscipit faucibus urna.
								</p>
							</div>
							<h3><a href="#">Section 3</a></h3>
							<div>
								<p>
									Nam enim risus, molestie et, porta ac, aliquam ac, risus. Quisque lobortis.
									Phasellus pellentesque purus in massa. Aenean in pede. Phasellus ac libero
									ac tellus pellentesque semper. Sed ac felis. Sed commodo, magna quis
									lacinia ornare, quam ante aliquam nisi, eu iaculis leo purus venenatis dui.
								</p>
								<ul>
									<li>List item one</li>
									<li>List item two</li>
									<li>List item three</li>
								</ul>
							</div>
							<h3><a href="#">Section 4</a></h3>
							<div>
								<p>
									Cras dictum. Pellentesque habitant morbi tristique senectus et netus
									et malesuada fames ac turpis egestas. Vestibulum ante ipsum primis in
									faucibus orci luctus et ultrices posuere cubilia Curae; Aenean lacinia
									mauris vel est.
								</p>
								<p>
									Suspendisse eu nisl. Nullam ut libero. Integer dignissim consequat lectus.
									Class aptent taciti sociosqu ad litora torquent per conubia nostra, per
									inceptos himenaeos.
								</p>
							</div>
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