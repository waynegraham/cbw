<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
    <xsl:include href="header.xsl"/>
    <xsl:include href="footer.xsl"/>
    <xsl:include href="biblio.xsl"/>

    <xsl:template match="/">
        <html>
            <head>
                <link rel="stylesheet" type="text/css" href="http://extjs.com/deploy/dev/resources/css/ext-all.css" />
                <link rel="stylesheet" type="text/css" href="http://extjs.com/deploy/dev/resources/css/xtheme-default.css" /><!-- LIBS -->
                <script type="text/javascript" src="http://extjs.com/deploy/dev/adapter/ext/ext-base.js"></script>
                <!-- ENDLIBS -->
                
                <script type="text/javascript" src="http://extjs.com/deploy/dev/ext-all.js"></script>
                <script type="text/javascript" src="http://extjs.com/deploy/dev/examples/grid/from-markup.js"></script>
                <link rel="stylesheet" type="text/css" href="http://extjs.com/deploy/dev/examples/grid/grid-examples.css" />
                <!-- Common Styles for the examples -->
                <link rel="stylesheet" type="text/css" href="http://extjs.com/deploy/dev/examples/shared/examples.css" />
                
                <link type="text/css" href="style.css" rel="stylesheet"/>
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
                <button id="create-grid" type="button">Create grid</button>
                <br/>
                <div id="example-grid"></div>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="/TEI.2/text/front/div1[@type='popchart']">
        <h2>
            <xsl:value-of select="./head"/>
        </h2>
        <table id="the-table">
            <thead>
                <xsl:apply-templates select="./note/table/row[@role='header']"/>
            </thead>
            <tbody>
                <xsl:apply-templates select="./note/table/row[@role='body']"/>
            </tbody>
        </table>
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
