<?xml version="1.0" encoding="UTF-8"?>

<!-- This is for the search engine on CBW.
	
	Created July 2007 by Ethan Gruber -->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0"
	xmlns:cinclude="http://apache.org/cocoon/include/1.0">

	<xsl:output encoding="UTF-8"/>

	<xsl:include href="../xsl/header.xsl"/>
	<xsl:include href="../xsl/footer.xsl"/>

	<xsl:param name="fulltext"/>
	<xsl:param name="title"/>
	<xsl:param name="author"/>
	<xsl:param name="editor"/>
	<xsl:param name="pubplace"/>
	<xsl:param name="publisher"/>
	<xsl:param name="note"/>

	<xsl:template match="/">

		<html>
			<head>
				<link type="text/css" href="style.css" rel="stylesheet"/>
				<title>The Collective Biographies of Women: Search</title>
			</head>
			<body>
				<table id="wrap">
					<tr>
						<td class="headfoot">
							<xsl:call-template name="header"/>
						</td>
					</tr>
					<tr>
						<!-- if there are no search parameters, the search form is displayed; otherwise, hidden -->
						<td class="content">
							<xsl:if test="not($fulltext) and not($title) and not($author) and not($editor) and not($pubplace) and not($publisher) and not($note) ">
								
								<p>Use AND/OR/NOT to filter multiple search terms in the same field.</p>
								
								<form method="get">
									<input class="search_box" type="hidden" name="rows" value="20"/>
									<input class="search_box" type="hidden" name="start" value="0"/>
									<label>Search for word or phrase: </label>
									<br/>
									<input class="search_box" type="text" size="65" name="fulltext"
										value="{$fulltext}"/>
									<br/>
									<label>Title: </label>
									<br/>
									<input class="search_box" type="text" size="65" name="title"
										value="{$title}"/>
									<br/>
									<label>Author: </label>
									<br/>
									<input class="search_box" type="text" size="65" name="author"
										value="{$author}"/>
									<br/>
									<label>Editor, illustrator, or translator: </label>
									<br/>
									<input class="search_box" type="text" size="65" name="editor"
										value="{$editor}"/>
									<br/>
									<label>Place of publication: </label>
									<br/>
									<input class="search_box" type="text" size="65" name="pubplace"
										value="{$pubplace}"/>
									<br/>
									<label>Publisher: </label>
									<br/>
									<input class="search_box" type="text" size="65" name="publisher"
										value="{$publisher}"/>
									<br/>
									<label>Editorial notes: </label>
									<br/>
									<input class="search_box" type="text" size="65" name="note"
										value="{$note}"/>
									<br/>
									<input class="search_box" type="submit" id="searchBtn"
										name="action" value="Submit"/>
								</form>
							</xsl:if>
							<!-- this part is for combining the parameter with AND to filter search results passed to SOLR -->
							<xsl:variable name="fulltext_search">
								<xsl:if test="$fulltext">
									<xsl:text> AND fulltext:</xsl:text>
									<xsl:value-of select="$fulltext"/>
								</xsl:if>
							</xsl:variable>
							<xsl:variable name="title_search">
								<xsl:if test="$title">
									<xsl:text> AND title:</xsl:text>
									<xsl:value-of select="$title"/>
								</xsl:if>
							</xsl:variable>

							<xsl:variable name="author_search">
								<xsl:if test="$author">
									<xsl:text> AND author:</xsl:text>
									<xsl:value-of select="$author"/>
								</xsl:if>
							</xsl:variable>

							<xsl:variable name="editor_search">
								<xsl:if test="$editor">
									<xsl:text> AND editor:</xsl:text>
									<xsl:value-of select="$editor"/>
								</xsl:if>
							</xsl:variable>

							<xsl:variable name="pubplace_search">
								<xsl:if test="$pubplace">
									<xsl:text> AND pubplace:</xsl:text>
									<xsl:value-of select="$pubplace"/>
								</xsl:if>
							</xsl:variable>

							<xsl:variable name="publisher_search">
								<xsl:if test="$publisher">
									<xsl:text> AND publisher:</xsl:text>
									<xsl:value-of select="$publisher"/>
								</xsl:if>
							</xsl:variable>

							<xsl:variable name="note_search">
								<xsl:if test="$note">
									<xsl:text> AND note:</xsl:text>
									<xsl:value-of select="$note"/>
								</xsl:if>
							</xsl:variable>

							<!-- search string is concatted.  this string is passed to SOLR after select?q=[* TO *] and before the row and start params -->
							<xsl:variable name="search_text">
								<xsl:value-of
									select="concat($fulltext_search,$title_search,$author_search,$editor_search,$pubplace_search,$publisher_search,$note_search)"
								/>
							</xsl:variable>


							<xsl:if test="$search_text">

								<cinclude:include src="cocoon:/search_results?q={$search_text}"/>

							</xsl:if>

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

</xsl:stylesheet>
