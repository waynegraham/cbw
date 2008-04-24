<?xml version="1.0"?>

<!-- Stylesheet for displaying content of bibliographies in CBW.  Created by Cindy (Speer) Maisannes -->

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
		<P class="notepara">
			<xsl:apply-templates/>
		</P>
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
				<b>
					<xsl:apply-templates/>
				</b>
			</xsl:when>
			<xsl:when test="@rend='underscore'">
				<u>
					<xsl:apply-templates/>
				</u>
			</xsl:when>
			<xsl:when test="@rend='smallcaps'">
				<SPAN class="smallcaps">
					<xsl:apply-templates/>
				</SPAN>
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
		<div class="bibl">
			<xsl:apply-templates/>
		</div>
	</xsl:template>


	<xsl:template match="bibl/author">
		<b>
			<xsl:choose>
				<xsl:when test="contains(abbr, '---') and string($bibl_id)">
					<xsl:value-of select="abbr/@expan"/><xsl:text>.  </xsl:text>
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
		<xsl:choose>
			<xsl:when test="@value='new'">
				<b style="color: #FF0000;">
					here<xsl:apply-templates></xsl:apply-templates>
				</b>				
			</xsl:when>	
			<xsl:otherwise>
		<xsl:apply-templates/>				
			</xsl:otherwise>
			
		</xsl:choose>
		
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
						<xsl:value-of select="abbr/@expan"/><xsl:text>,  </xsl:text>
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
							<xsl:value-of select="abbr/@expan"/><xsl:text>,  </xsl:text>
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
	</xsl:template><xsl:template match="idno">
		<xsl:value-of select="."/>
		<br/>
		<br/>
	</xsl:template>

	

	<!-- If there is a reference to another work, create a link to it.  -->
	<xsl:template match="ref">
		<xsl:variable name="target" select="@target"/>
		<a href="browse?bibl_id={$target}">
			<xsl:apply-templates/>
		</a>
	</xsl:template>


</xsl:stylesheet>
