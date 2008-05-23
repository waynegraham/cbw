<?xml version="1.0" encoding="UTF-8"?>

<!-- This is the preface stylesheet for CBW.
	
	Created July 2007 by Ethan Gruber -->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
	<xsl:include href="header.xsl"/>
	<xsl:include href="footer.xsl"/>
	<xsl:include href="biblio.xsl"/>

	<xsl:template match="/">
		<html>
			<head>
				<link type="text/css" href="style.css" rel="stylesheet"/>
				<title>The Collective Biographies of Women: Preface</title>
				<style>
					tr.content {
					width: 700px;
					}
					td.mosaicImg {
					width: 100px;
					height: 100px;
					}
				</style>
			</head>
			<body>
				<table id="wrap">
					<tr>
						<td class="headfoot">
							<xsl:call-template name="header"/>
						</td>
					</tr>
					<tr class="content">
						<td class="mosaicImg">
							<a href="/full/no01A_full.jpg">
								<img src="no01A.jpg"/>
							</a>
						</td>
						<td class="mosaicImg">
							<a href="/full/no06_full.jpg">
								<img src="no06.jpg"/>
							</a>
						</td>
						<td class="mosaicImg">
							<a href="/full/no07_full.jpg">
								<img src="no07.jpg"/>
							</a>
						</td>
						<td class="mosaicImg">
							<a href="/full/no08_full.jpg">
								<img src="no08.jpg"/>
							</a>
						</td>
						<td class="mosaicImg">
							<a href="/full/no08_full.jpg">
								<img src="no08.jpg"/>
							</a>
						</td>
						<td class="mosaicImg">
							<a href="/full/no10_full.jpg">
								<img src="no10.jpg"/>
							</a>
						</td>
						<td class="mosaicImg">
							<a href="/full/no11_full.jpg">
								<img src="no11.jpg"/>
							</a>
						</td>
						<td class="mosaicImg">
							<a href="/full/no12_full.jpg">
								<img src="no12.jpg"/>
							</a>
						</td>
						<td class="mosaicImg">
							<a href="/full/no13_full.jpg">
								<img src="no13.jpg"/>
							</a>
						</td>
						
					</tr>
					<tr class="content">
						<td class="mosaicImg">
							<a href="/full/no14_full.jpg">
								<img src="no14.jpg"/>
							</a>
						</td>
						<td class="mosaicImg">
							<a href="/full/no15_full.jpg">
								<img src="no15.jpg"/>
							</a>
						</td>
						<td class="mosaicImg">
							<a href="/full/no07_full.jpg">
								<img src="no16.jpg"/>
							</a>
						</td>
						<td class="mosaicImg">
							<a href="/full/no08_full.jpg">
								<img src="no17.jpg"/>
							</a>
						</td>
						<td class="mosaicImg">
							<a href="/full/no09_full.jpg">
								<img src="no18.jpg"/>
							</a>
						</td>
						<td class="mosaicImg">
							<a href="/full/no19_full.jpg">
								<img src="no19.jpg"/>
							</a>
						</td>
						<td class="mosaicImg">
							<a href="/full/no21_full.jpg">
								<img src="no21.jpg"/>
							</a>
						</td>
						<td class="mosaicImg">
							<a href="/full/no22_full.jpg">
								<img src="no22.jpg"/>
							</a>
						</td>
						<td class="mosaicImg">
							<a href="/full/no23_full.jpg">
								<img src="no23.jpg"/>
							</a>
						</td>
					</tr>
					<tr>
						<td class="content">
							<xsl:apply-templates select="/TEI.2/text/front/div1[@type='preface']"/>
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
		<xsl:apply-templates/>
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

</xsl:stylesheet>
