<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
    <xsl:include href="header.xsl"/>
    <xsl:include href="footer.xsl"/>
    <xsl:include href="biblio.xsl"/>

    <xsl:template match="/">
        <html>
            <head>
                <link type="text/css" href="style.css" rel="stylesheet"/>
                <link rel="stylesheet" type="text/css" href="http://yui.yahooapis.com/2.5.1/build/fonts/fonts-min.css" />
                <link rel="stylesheet" type="text/css" href="http://yui.yahooapis.com/2.5.1/build/datatable/assets/skins/sam/datatable.css" />
                <script type="text/javascript" src="http://yui.yahooapis.com/2.5.1/build/yahoo-dom-event/yahoo-dom-event.js"></script>
                <script type="text/javascript" src="http://yui.yahooapis.com/2.5.1/build/element/element-beta-min.js"></script>
                
                <script type="text/javascript" src="http://yui.yahooapis.com/2.5.1/build/datasource/datasource-beta-min.js"></script>
                <script type="text/javascript" src="http://yui.yahooapis.com/2.5.1/build/datatable/datatable-beta-min.js"></script>
                <title>The Collective Biographies of Women: Pop Chart</title>
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
                            <xsl:apply-templates select="/TEI.2/text/front/div1[@type='popchart']"/>
                        </td>
                    </tr>
                </table>
                <script type="text/javascript" language="javascript" src="javascript/chart.js"/>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="/TEI.2/text/front/div1[@type='popchart']">
        <h2>
            <xsl:value-of select="./head"/>
        </h2>
        <div id="popchart">
        <table id="popchart">
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
        <tr class="{./@role}">
            <xsl:apply-templates/>
        </tr>
    </xsl:template>

    <xsl:template match="cell">
        <td class="{./@role}">
            <xsl:apply-templates/>
        </td>
    </xsl:template>

    <xsl:template match="cell[@role='header']">
        <th class="header">
            <xsl:apply-templates/>
        </th>
    </xsl:template>

    <xsl:template match="cell[@role='category']">
        <th class="category" colspan="5">
            <xsl:apply-templates/>
        </th>
    </xsl:template>

</xsl:stylesheet>
