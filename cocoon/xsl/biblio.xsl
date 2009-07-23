<?xml version="1.0"?>

<!-- Stylesheet for displaying content of bibliographies in CBW.  Created by Cindy (Speer) Maisannes.  Modified March, April, May 2008 by Joseph Gilbert -->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

	<xsl:param name="ref"/>
	<xsl:param name="bibl_id"/>

	<xsl:template match="teiHeader"> </xsl:template>

	<xsl:template match="div1">
		<!--<div>-->
		<xsl:apply-templates/>
		<!--</div>-->
	</xsl:template>

	<xsl:template match="div1/head">
		<br/>
		<div class="head1">
			<xsl:apply-templates/>
		</div>
	</xsl:template>

	<xsl:template match="div2/head">
		<div class="head2">
			<i>
				<xsl:value-of select="."/>
			</i>
		</div>
	</xsl:template>

	<xsl:template match="div2">
		<xsl:apply-templates/>
	</xsl:template>

	<xsl:template match="note">
		<p class="notepara">
			<xsl:apply-templates/>
		</p>
	</xsl:template>
	
	<xsl:template match="note[@type='toc']">
		<p class="notepara">
			<xsl:text>TOC: </xsl:text>
			<xsl:for-each select="//item">
				<xsl:value-of select="."/>
				<xsl:text>; </xsl:text>
			</xsl:for-each>
			<xsl:text>.</xsl:text>
		</p>
	</xsl:template>

	<xsl:template match="p">
		<div class="para">
			<xsl:apply-templates/>
		</div>
	</xsl:template>


	<!--this choose statement is for highlight typography-->
	<xsl:template match="hi">
		<xsl:choose>
			<xsl:when test="@rend='sup'">
				<sup>
					<xsl:apply-templates/>
				</sup>
			</xsl:when>
			<xsl:when test="@rend='bold'">
				<xsl:choose>
					<xsl:when test=" starts-with(., '*Pop')">
						<b>
							<a href="popchart">
								See also Pop Chart
							</a>
						</b>
					</xsl:when>
					<xsl:otherwise>
						<b>
							<xsl:apply-templates/>
						</b>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:when>
			<xsl:when test="@rend='underscore'">
				<u>
					<xsl:apply-templates/>
				</u>
			</xsl:when>
			<xsl:when test="@rend='smallcaps'">
				<span class="smallcaps">
					<xsl:apply-templates/>
				</span>
			</xsl:when>
			<xsl:otherwise>
				<i>
					<xsl:apply-templates/>
				</i>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>

	<!--this ends highlighting-->


	<!--this is for tables and lists -->
	<xsl:template match="list">
		<div class="list">
			<ul>
				<xsl:apply-templates/>
			</ul>
		</div>
	</xsl:template>

	<xsl:template match="list/head">
		<div class="listhead">
			<xsl:apply-templates/>
		</div>
	</xsl:template>

	<xsl:template match="item">
		<li>
			<xsl:apply-templates/>
		</li>
	</xsl:template>

	<xsl:template match="table">
		<div class="table">
			<table border="1">
				<xsl:apply-templates/>
			</table>
		</div>
	</xsl:template>

	<xsl:template match="row">
		<tr>
			<xsl:apply-templates/>
		</tr>
	</xsl:template>

	<xsl:template match="cell">
		<td>
			<xsl:apply-templates/>
		</td>
	</xsl:template>
	<!--this ends tables and lists-->

	<xsl:template match="lb">
		<xsl:apply-templates/>
		<br/>
	</xsl:template>

	<!--This does bibliography stuff-->
	<xsl:template match="bibl">
		<!--  <div class="bibl">-->
			<xsl:apply-templates/>
		<!-- </div>-->
	</xsl:template>

	<xsl:template match="bibl/author">
		<b>
			<xsl:choose>
				<xsl:when test="contains(abbr, '---') and string($bibl_id)">
					<xsl:value-of select="abbr/@expan"/>
					<xsl:text>.  </xsl:text>
				</xsl:when>
				<xsl:otherwise>
					<xsl:value-of select="."/>
				</xsl:otherwise>
			</xsl:choose>
		</b>
	</xsl:template>

	<xsl:template match="bibl/pubPlace">
		<xsl:apply-templates/>
	</xsl:template>

	<xsl:template match="bibl/publisher">
		<xsl:apply-templates/>
	</xsl:template>

	<xsl:template match="bibl/date">
		<xsl:apply-templates/>
	</xsl:template>


	<xsl:template match="bibl/imprint/date">
		<xsl:choose>
			<xsl:when test="./@added!=''">
				<b style="color: #ff0000;">
					<xsl:value-of select="."/>
				</b>
			</xsl:when>
			<xsl:otherwise>
				<xsl:apply-templates/>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>

	<xsl:template match="image">

	</xsl:template>

	<xsl:template match="bibl/xref">
		<br/>
		<br/>
		<xsl:apply-templates/>
	</xsl:template>

	<xsl:template match="bibl/editor">
		<xsl:choose>
			<xsl:when test="@role='translator' or @role='illustrator'">
				<xsl:choose>
					<xsl:when test="contains(abbr, '---') and string($bibl_id)">
						<xsl:value-of select="abbr/@expan"/>
						<xsl:text>,  </xsl:text>
					</xsl:when>
					<xsl:otherwise>
						<xsl:value-of select="."/>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:when>
			<xsl:otherwise>
				<b>
					<xsl:choose>
						<xsl:when test="contains(abbr, '---') and string($bibl_id)">
							<xsl:value-of select="abbr/@expan"/>
							<xsl:text>,  </xsl:text>
						</xsl:when>
						<xsl:otherwise>
							<xsl:value-of select="."/>
						</xsl:otherwise>
					</xsl:choose>
				</b>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>

	<xsl:template match="title">
		<xsl:choose>
			<xsl:when test="@type='source'">
				<em>
					<xsl:apply-templates/>
				</em>
			</xsl:when>
			<xsl:when test="@type='ref'">
				<b>
					<xsl:apply-templates/>
				</b>
			</xsl:when>
			<xsl:otherwise>
				<xsl:apply-templates/>
				<xsl:text> </xsl:text>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>
	<xsl:template match="idno">
		<xsl:choose>
			<xsl:when test="./@added!=''">
				<b style="color: #ff0000;">
					<xsl:value-of select="."/>
				</b>
				<br/>
				<br/>
			</xsl:when>
			<xsl:when test="starts-with(., 'a')">
				<br/>
			</xsl:when>
			<xsl:otherwise>
				<xsl:value-of select="."/>
				<br/>
				<br/>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>



	<!-- If there is a reference to another work, create a link to it.  -->
	<xsl:template match="ref">
		<xsl:variable name="target" select="@target"/>
		<a href="browse?bibl_id={$target}">
			<xsl:apply-templates/>
		</a>
	</xsl:template>


</xsl:stylesheet>
