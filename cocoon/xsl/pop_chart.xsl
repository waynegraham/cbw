<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
    <xsl:include href="header.xsl"/>
    <xsl:include href="footer.xsl"/>
    <xsl:include href="biblio.xsl"/>
    
    <xsl:template match="/">
        <html>
            <head>
                <style type="text/css">
                    body {
                    margin:0;
                    padding:0;
                    }
                </style>
				<style type="text/css" title="currentStyle">
					@import "demo_page.css";
					@import "demo_table.css";
				</style>				
                <link type="text/css" href="style.css" rel="stylesheet"/>
                <title>The Collective Biographies of Women: Pop Chart</title>
            </head>
            <body class=" yui-skin-sam" onload="document.getElementById('pop-link').className='selected';">
                <table id="wrap">
                    <tr>
                        <td class="headfoot">
                            <xsl:call-template name="header"/>
                        </td>
                    </tr>
                    <tr>
                        <td class="content">
                            <xsl:apply-templates select="/TEI.2/text/front/div1[@type='popchart']"/>
                        </td>
                    </tr>
                    <tr>
                        <td class="content">
                            <xsl:apply-templates select="/TEI.2/text/front/div1[@type='popchart']/p"/>
                        </td>
                    </tr>
                </table>
                <script type="text/javascript" language="javascript" src="javascript/jquery.js"></script>
				<script type="text/javascript" language="javascript" src="javascript/jquery.dataTables.js"></script>
				<script type="text/javascript" charset="utf-8">
					$(document).ready(function() {
						popChart = $('#popChart').dataTable({
							'aaSorting': [[ 5, "desc" ]],
							'bPaginate': false,
							'bAutoWidth': false
						});
						$('a[name*=""+window.location.hash.substring(1)]+""').addClass('hilite');
					} );
				</script>
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="/TEI.2/text/front/div1[@type='popchart']">
        <h2>
            <xsl:value-of select="./head"/>
        </h2>
        <div id="popMarkup">
            <table id="popChart">
                <thead>
                    <xsl:apply-templates select="./note/table/row[@role='header']"/>
                </thead>
                <tbody>
                    <xsl:apply-templates select="./note/table/row[@role='body']"/>
                </tbody>
            </table>
        </div>
    </xsl:template>
    
    <xsl:template match="row">
        <tr>
            <xsl:apply-templates/>
        </tr>
    </xsl:template>
    
    <xsl:template match="cell">
        <td class="{@role}">
            <!-- Hack for sorting to work with numbers less than ten -->
            <xsl:if test=" number(.) &lt; 10">
                <xsl:text>&#32;</xsl:text>
            </xsl:if>
            <xsl:apply-templates/>
            <!-- Anchor tag for incoming links -->
            <xsl:if test="@role = 'name' and ../@n != ''">
                <xsl:text>&#32;&#32;</xsl:text><small>(<a name="{../@n}" href="/featured?id={../@n}">more info</a>)</small>
            </xsl:if>
        </td>
    </xsl:template>
    
    <xsl:template match="cell[@role='label']">
        <th>
            <xsl:apply-templates/>
        </th>
    </xsl:template>
    
    <xsl:template match="cell[@role='category']">
        <th colspan="5">
            <xsl:apply-templates/>
        </th>
    </xsl:template>
    
    <xsl:template match="p">
        <p>
            <xsl:apply-templates/>
        </p>
    </xsl:template>
    
</xsl:stylesheet>
