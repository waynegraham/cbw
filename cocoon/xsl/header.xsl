<?xml version="1.0" encoding="UTF-8"?>

<!-- This is the header stylesheet for CBW.
	
	Created July 2007 by Ethan Gruber -->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
	<xsl:output method="xml" indent="yes"/>
	<xsl:template name="header">
		
			<table bgcolor="#E7E3D8">
				<tr>
					<td>
						<img src="banner.jpg"/>
						<hr size="1" color="#782F26" align="center" style="width:650px"/>
					</td>
				</tr>
			</table>

			<table bgcolor="E7E3D8">
				<tr>
					<td align="center" width="90">
						<b>
							<a href=".">Home</a>
						</b>
					</td>
					<td align="center" width="90">
						<b>
							<a href="userguide">User Guide</a>
						</b>
					</td>
					<td align="center" width="215">
						<b>
							<a href="browse">Browse the Bibliography</a>
						</b>
					</td>
					<td align="center" width="215">
						<b>
							<a href="search">Search the Bibliography</a>
						</b>
					</td>
					<td align="center" width="90">
						<b>
							<a href="http://etext.lib.virginia.edu">Etext</a>
						</b>
					</td>
				</tr>
			</table>
			<hr size="1" color="#782F26" align="center" style="width:650px"/>
		
	</xsl:template>

</xsl:stylesheet>
