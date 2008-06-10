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
			</head>
			<body>
				<table id="wrap">
					<tr>
						<td class="headfoot">
							<xsl:call-template name="header"/>
						</td>
					</tr>
					<tr>
						<td class="content">
							<xsl:apply-templates select="/TEI.2/text/front/div1[@type='preface']"/>
						</td>
					</tr>
					<tr>
						<td class="mosaic">
							<a href="full/no01.jpg">
								<img src="thumbs/no01.jpg"/>
							</a>
							<a href="full/no06.jpg">
								<img src="thumbs/no06.jpg"/>
							</a>
							<a href="full/no07.jpg">
								<img src="thumbs/no07.jpg"/>
							</a>
							<a href="full/no08.jpg">
								<img src="thumbs/no08.jpg"/>
							</a>
							<a href="full/no24.jpg">
								<img src="thumbs/no24.jpg"/>
							</a>
							<a href="full/no10.jpg">
								<img src="thumbs/no10.jpg"/>
							</a>
							<a href="full/no11.jpg">
								<img src="thumbs/no11.jpg"/>
							</a>
							<a href="full/no12.jpg">
								<img src="thumbs/no12.jpg"/>
							</a>
							<a href="full/no13.jpg">
								<img src="thumbs/no13.jpg"/>
							</a>
							<a href="full/no25.jpg">
								<img src="thumbs/no25.jpg"/>
							</a>
							<a href="full/no26.jpg">
								<img src="thumbs/no26.jpg"/>
							</a>
						</td>
					</tr>
					<tr>
						<td class="mosaic">
							<a href="full/no14.jpg">
								<img src="thumbs/no14.jpg"/>
							</a>
							<a href="full/no15.jpg">
								<img src="thumbs/no15.jpg"/>
							</a>
							<a href="full/no16.jpg">
								<img src="thumbs/no16.jpg"/>
							</a>
							<a href="full/no17.jpg">
								<img src="thumbs/no17.jpg"/>
							</a>
							<a href="full/no18.jpg">
								<img src="thumbs/no18.jpg"/>
							</a>
							<a href="full/no19.jpg">
								<img src="thumbs/no19.jpg"/>
							</a>
							<a href="full/no21.jpg">
								<img src="thumbs/no21.jpg"/>
							</a>
							<a href="full/no22.jpg">
								<img src="thumbs/no22.jpg"/>
							</a>
							<a href="full/no23.jpg">
								<img src="thumbs/no23.jpg"/>
							</a>
							<a href="full/no27.jpg">
								<img src="thumbs/no27.jpg"/>
							</a>
							<a href="full/no28.jpg">
								<img src="thumbs/no28.jpg"/>
							</a>
						</td>
					</tr>
					<tr class="spacer"/>
					<tr>
						<td class="content">
							<xsl:apply-templates
								select="/TEI.2/text/front/div1[@type='preface']/div2"/>
						</td>
					</tr>
					<tr>
						<td class="headfoot">
							<a href="http://www.press.uchicago.edu/cgi-bin/hfs.cgi/00/16399.ctl">
								<img src="howto.jpg" alt="How to Make It as a Woman" border="0"/>
							</a>
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
