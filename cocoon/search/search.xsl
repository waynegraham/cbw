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
	<xsl:param name="image"/>

	<xsl:template match="/">

		<html>
			<head>
				<link type="text/css" href="style.css" rel="stylesheet"/>
				<title>The Collective Biographies of Women: Search</title>
			</head>
			<body onload="document.getElementById('search-link').className='selected';">
				<table id="wrap">
					<tr>
						<td class="headfoot">
							<xsl:call-template name="header"/>
						</td>
					</tr>
					<tr>
						<!-- if there are no search parameters, the search form is displayed; otherwise, hidden -->
						<td class="content">
							<xsl:if
								test="not(string($fulltext)) and not(string($title)) and not(string($author)) and not(string($editor)) and not(string($pubplace)) and not(string($publisher)) and not(string($note)) and not(string($image))">

								<p>Use AND/OR/NOT to filter multiple search terms in the same field.</p>

								<form method="get">
									<input type="hidden" name="rows" value="20"/>
									<input type="hidden" name="start" value="0"/>
									<label>Search for word or phrase: </label>
									<br/>
									<input type="text" size="65" name="fulltext"/>
									<br/>
									<label>Title: </label>
									<br/>
									<input type="text" size="65" name="title"/>
									<br/>
									<label>Author: </label>
									<br/>
									<input type="text" size="65" name="author"/>
									<br/>
									<label>Editor, illustrator, or translator: </label>
									<br/>
									<input type="text" size="65" name="editor"/>
									<br/>
									<label>Place of publication: </label>
									<br/>
									<input type="text" size="65" name="pubplace"/>
									<br/>
									<label>Publisher: </label>
									<br/>
									<input type="text" size="65" name="publisher"/>
									<br/>
									<label>Editorial notes: </label>
									<br/>
									<input type="text" size="65" name="note"/>
									<br/>
									<label>Illustration titles and captions: </label>
									<br/>
									<input type="text" size="65" name="image"/>
									<br/>
=======
									<label>Image names and captions: </label>
									<br/>
									<input type="text" size="65" name="image"/>
									<br/>
									
									<input type="submit" id="searchBtn" name="action" value="Submit"
									/>
									
								</form>
							</xsl:if>
							<!-- this part is for combining the parameter with AND to filter search results passed to SOLR -->
							<xsl:variable name="fulltext_search">
								<xsl:if test="string($fulltext)">
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
								<xsl:if test="string($author)">
									<xsl:text> AND author:</xsl:text>
									<xsl:value-of select="$author"/>
								</xsl:if>
							</xsl:variable>

							<xsl:variable name="editor_search">
								<xsl:if test="string($editor)">
									<xsl:text> AND editor:</xsl:text>
									<xsl:value-of select="$editor"/>
								</xsl:if>
							</xsl:variable>

							<xsl:variable name="pubplace_search">
								<xsl:if test="string($pubplace)">
									<xsl:text> AND pubPlace:</xsl:text>
									<xsl:value-of select="$pubplace"/>
								</xsl:if>
							</xsl:variable>

							<xsl:variable name="publisher_search">
								<xsl:if test="string($publisher)">
									<xsl:text> AND publisher:</xsl:text>
									<xsl:value-of select="$publisher"/>
								</xsl:if>
							</xsl:variable>

							<xsl:variable name="note_search">
								<xsl:if test="string($note)">
									<xsl:text> AND note:</xsl:text>
									<xsl:value-of select="$note"/>
								</xsl:if>
							</xsl:variable>
							
							<xsl:variable name="image_search">
								<xsl:if test="string($image)">
									<xsl:text> AND image:</xsl:text>
									<xsl:value-of select="$image"/>
								</xsl:if>
							</xsl:variable>
							
							<xsl:variable name="searchstring" >
								<xsl:if test="string($fulltext)">
									<xsl:value-of select="$fulltext"/>
									<xsl:text> </xsl:text>
								</xsl:if>
								<xsl:if test="string($title)">
									<xsl:value-of select="$title"/>
									<xsl:text> </xsl:text>
								</xsl:if>
								<xsl:if test="string($author)">
									<xsl:value-of select="$author"/>
									<xsl:text> </xsl:text>
								</xsl:if>
								<xsl:if test="string($editor)">
									<xsl:value-of select="$editor"/>
									<xsl:text> </xsl:text>
								</xsl:if>
								<xsl:if test="string($pubplace)">
									<xsl:value-of select="$pubplace"/>
									<xsl:text> </xsl:text>
								</xsl:if>
								<xsl:if test="string($publisher)">
									<xsl:value-of select="$publisher"/>
									<xsl:text> </xsl:text>
								</xsl:if>
								<xsl:if test="string($note)">
									<xsl:value-of select="$note"/>
								</xsl:if>
								<xsl:if test="string($image)">
									<xsl:value-of select="$image"/>
								</xsl:if>

							</xsl:variable>

							<!-- search string is concatenated.  this string is passed to SOLR after select?q=[* TO *] and before the row and start params -->
							<xsl:variable name="search_text">
								<xsl:value-of
									select="concat($fulltext_search,$title_search,$author_search,$editor_search,$pubplace_search,$publisher_search,$note_search,$image_search)"
								/>
							</xsl:variable>
							<xsl:if test="$search_text">
								<form method="post">
									<input type="hidden" name="searchstring" value="{$searchstring}"/>								
								</form>
								<cinclude:include src="cocoon:/search_results?q={$search_text}&amp;searchstring={$searchstring}"/>
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
