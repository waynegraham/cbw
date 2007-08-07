<?xml version="1.0" encoding="UTF-8"?>

<!-- Code for displaying results returned from SOLR
	Created by Ethan Gruber, July 2007 -->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0"
	xmlns:cinclude="http://apache.org/cocoon/include/1.0">

	<xsl:output encoding="UTF-8"/>

	<xsl:param name="bibl_id"/>

	<xsl:param name="fulltext"/>
	<xsl:param name="title"/>
	<xsl:param name="author"/>
	<xsl:param name="editor"/>
	<xsl:param name="pubplace"/>
	<xsl:param name="publisher"/>
	<xsl:param name="note"/>
	<xsl:param name="rows"/>
	<xsl:param name="start"/>
	
	<xsl:param name="searchstring"/>
	
	<xsl:template match="/">
		
		<table class="search_results_table">
			<xsl:choose>
				<xsl:when test="response/result[@name='response']/@numFound > 0">
					<xsl:call-template name="paging"/>
					<tr>
						<td class="search_results">
							<table>
								<xsl:apply-templates select="//doc"/>
							</table>
						</td>
					</tr>
					<xsl:call-template name="paging"/>
				</xsl:when>
				<xsl:otherwise>
					<tr>
						<td>
							<p>No results found.</p>
						</td>
					</tr>
				</xsl:otherwise>
			</xsl:choose>
		</table>

	</xsl:template>

	<!-- logic for displaying page numbers.  rows of 20 are hard-coded into the sitemap -->

	<xsl:template name="paging">
		<xsl:variable name="numFound">
			<xsl:value-of select="//result[@name='response']/@numFound"/>
		</xsl:variable>

		<xsl:variable name="next">
			<xsl:value-of select="$start+$rows"/>
		</xsl:variable>

		<xsl:variable name="previous">
			<xsl:choose>
				<xsl:when test="$start &gt;= $rows">
					<xsl:value-of select="$start - $rows"/>
				</xsl:when>
				<xsl:otherwise>0</xsl:otherwise>
			</xsl:choose>
		</xsl:variable>

		<tr>
			<td colspan="2">

				<div>
					<div style="float:left;"> Results found: <xsl:value-of select="$numFound"/>,
						page: <xsl:value-of select="$start div $rows + 1"/>/<xsl:value-of
							select="ceiling($numFound div $rows)"/>
					</div>
					<div style="float:right;">
						<xsl:choose>
							<xsl:when test="$numFound &gt; $rows and $start &gt; $previous">
								<a class="pagingBtn"
									href="?fulltext={$fulltext}&amp;author={$author}&amp;title={$title}&amp;editor={$editor}&amp;pubplace={$pubplace}&amp;publisher={$publisher}&amp;note={$note}&amp;rows={$rows}&amp;start={$previous}"
									>previous</a>
							</xsl:when>
							<xsl:otherwise>previous</xsl:otherwise>
						</xsl:choose> | <xsl:choose>
							<xsl:when test="$numFound &gt; $rows and $next &lt; $numFound">
								<a class="pagingBtn"
									href="?fulltext={$fulltext}&amp;author={$author}&amp;title={$title}&amp;editor={$editor}&amp;pubplace={$pubplace}&amp;publisher={$publisher}&amp;note={$note}&amp;rows={$rows}&amp;start={$next}"
									>next</a>
							</xsl:when>
							<xsl:otherwise>next</xsl:otherwise>
						</xsl:choose>
					</div>
				</div>
			</td>
		</tr>
	</xsl:template>

	<xsl:template match="doc">

		<!-- this is for giving position() = odd number search results a darker cell color to add contract and a line of division for search results -->

		<xsl:variable name="search_result">
			<xsl:choose>
				<xsl:when test="position() mod 2 = 0">
					<xsl:text>result_even</xsl:text>
				</xsl:when>
				<xsl:otherwise>
					<xsl:text>result_odd</xsl:text>
				</xsl:otherwise>
			</xsl:choose>
		</xsl:variable>


		<tr>
			<td class="{$search_result}">
				<a
					href="browse?bibl_id={str[@name='id']}&amp;searchstring={$searchstring}">
					<xsl:value-of select="arr[@name='ref']/str"/>
					<xsl:text> </xsl:text>
					<xsl:value-of select="arr[@name='author']/str"/>
					<xsl:text> </xsl:text>
					<i>
						<xsl:value-of select="arr[@name='title']/str[1]"/>
					</i>
				</a>

			</td>
		</tr>
	</xsl:template>

</xsl:stylesheet>
