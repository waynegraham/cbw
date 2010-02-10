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
								<li><img src="full/no386.jpg" width="280" height="430" alt="" /><div class="featured-cap"><a href="featured?id=JOAN_OF_ARC">Joan of Arc</a> as Victorian heroine: as if praying before battle with cross-like sword, crinoline and corset beneath armor.</div></li>
								<li><img src="full/no301.jpg" width="280" height="430" alt="" /><div class="featured-cap"><a href="featured?id=FRANCES_POWER_COBBE">Frances Power Cobbe</a>, incisive social critic, forerunner of lesbian feminist animal-rights activists today.</div></li>
								<li><img src="full/no319.jpg" width="280" height="430" alt="" /><div class="featured-cap"><a href="featured?id=MARY_SOMERVILE">Mary Somerville</a>, mathematician, astronomer, and renowned science writer, one of the first women elected to the Royal Astronomical Society.</div></li>
								<li><img src="full/no236.jpg" width="280" height="430" alt="" /><div class="featured-cap"><a href="featured?id=ADELAIDE_PROCTER">Adelaide Procter</a>, renowned Victorian poet, daughter of the writer "Barry Cornwall"; a Catholic convert who died young.</div></li>
								<li><img src="full/no145.jpg" width="280" height="430" alt="" /><div class="featured-cap"><a href="featured?id=GRACE_DARLING">Grace Darling</a>, lighthouse keeper's daughter, became a celebrity for rescuing survivors of a shipwreck.</div></li>
								<li><img src="full/no290.jpg" width="280" height="430" alt="" /><div class="featured-cap"><a href="featured?id=ELIZABETH_FRY">Elizabeth Fry</a>, Quaker minister and prison reformer, defined the role of female philanthropist in the early nineteenth century.</div></li>
								<li><img src="full/no291.jpg" width="280" height="430" alt="" /><div class="featured-cap"><a href="featured?id=FLORENCE_NIGHTINGALE">Florence Nightingale</a> defined the nursing profession and captured the public imagination.</div></li>
								<li><img src="full/no289.jpg" width="280" height="430" alt="" /><div class="featured-cap"><a href="featured?id=QUEEN_VICTORIA">Queen Victoria.</a> </div></li>
								<li><img src="full/no248.jpg" width="280" height="430" alt="" /><div class="featured-cap">The famous novelist <a href="featured?id=CHARLOTTE_BRONTE">Charlotte Brontė</a> became a Victorian ideal of self-sacrificing yet triumphant feminine genius, in contrast with sister Emily.</div></li>
								<li><img src="full/no425.jpg" width="280" height="430" alt="" /><div class="featured-cap"><a href="featured?id=LADY_JANE_GREY">Lady Jane Grey</a>, queen regnant of England for less than two weeks, too little time to become a blameworthy ruling woman.</div></li>
								<li><img src="full/no240.jpg" width="280" height="430" alt="" /><div class="featured-cap">The bluestocking, the eminent conservative educator, <a href="featured?id=HANNAH MORE">Hannah More</a> by any lights was a model for nineteenth-century women writers.</div></li>
								<li><img src="full/no426.jpg" width="280" height="430" alt="" /><div class="featured-cap"><a href="featured?id=LADY_RACHEL_RUSSELL">Lady Rachel Russell</a>, now admired for letters and memoirs, served as clerk in her husband's trial for treason against Charles II; Victorians admired her wifely heroism.</div></li>
								<li><img src="full/no382.jpg" width="280" height="430" alt="" /><div class="featured-cap"><a href="featured?id=MADAME_DE_STAEL">Madame de Staėl</a>, preeminent woman writer, heroine of the French Revolution.</div></li>
								<li><img src="full/no01.jpg" width="328" height="443" alt="" /><div class="featured-cap"><a href="featured?id=QUEEN_ELIZABETH_I">Queen Elizabeth I</a> tends to get better or worse press in comparison to her Catholic sister Mary
or her captive, Mary Queen of Scots; some Victorians admire her handling of the Armada and a golden literary age.</div></li>
								<li><img src="full/no450.jpg" width="280" height="430" alt="" /><div class="featured-cap"><a href="featured?id=MADAME_ROLAND">Madame Roland</a>stands as great woman writer and heroine in a prison scene: a protagonist of the French Revolution.</div></li>
								<li><img src="full/no416.jpg" width="280" height="430" alt="" /><div class="featured-cap"><a href="featured?id=POCAHONTAS">Pocahontas</a> alone represents Native Americans in these books but she joins others as a leader's daughter, a Christian convert, and a rescuer of a man.</div></li>
								<li><img src="full/no238.jpg" width="280" height="430" alt="" /><div class="featured-cap"><a href="featured?id=CAROLINE_HERSCHEL">Caroline Herschel</a>, astronomer, in some ways shares features with Mary Somerville.</div></li>
								<li><img src="full/no92.jpg" width="328" height="443" alt="" /><div class="featured-cap"><a href="featured?id=ANN_HASSELTINE_JUDSON">Ann Hasseltine Judson</a>, the most famous of the first American women missionaries to the "East," an eloquent writer and martyr.</div></li>
								<li><img src="full/no409.jpg" width="280" height="430" alt="" /><div class="featured-cap"><a href="featured?id=JENNY_LIND">Jenny Lind</a>, world-famous as "the Swedish Nightingale," opera singer who rose from the people.</div></li>
								<li><img src="full/no247.jpg" width="280" height="430" alt="" /><div class="featured-cap"><a href="featured?id=SISTER_DORA">Sister Dora</a> emulated Florence Nightingale as a nurse-administrator but in an industrial hospital near Birmingham.</div></li>							
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
								<li><a href="browse?section=2">Search or browse the annotated bibliography.</a></li>
								<li><a href="featured">Featured Subjects: find sources and short meta-biographies of selected women.</a></li>
								<li><a href="narratives">Compare biographies of one or many lives.</a></li>
								<li><a href="exhibit">Visit the Sister Dora Exhibit: A model collection of books that include a biography of Sister Dora.</a></li>
							</ul>
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