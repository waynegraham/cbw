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
                
                <link rel="stylesheet" type="text/css" href="http://yui.yahooapis.com/2.5.2/build/fonts/fonts-min.css" />
                <link rel="stylesheet" type="text/css" href="http://yui.yahooapis.com/2.5.2/build/datatable/assets/skins/sam/datatable.css" />
                <script type="text/javascript" src="http://yui.yahooapis.com/2.5.2/build/yahoo-dom-event/yahoo-dom-event.js"></script>
                <script type="text/javascript" src="http://yui.yahooapis.com/2.5.2/build/element/element-beta-min.js"></script>
                
                <script type="text/javascript" src="http://yui.yahooapis.com/2.5.2/build/datasource/datasource-beta-min.js"></script>
                <script type="text/javascript" src="http://yui.yahooapis.com/2.5.2/build/datatable/datatable-beta-min.js"></script>
                
                <link type="text/css" href="style.css" rel="stylesheet"/>
                <title>The Collective Biographies of Women: Pop Chart</title>
            </head>
            <body class=" yui-skin-sam">
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
                <script type="text/javascript">
                    YAHOO.util.Event.addListener(window, "load", function() {
                    YAHOO.example.EnhanceFromMarkup = new function() {
                    var myColumnDefs = [
                    {key:"name",label:"Name", sortable:true},
                    {key:"category",label:"Category", sortable:true},
                    {key:"period1",label:"1850-1870", formatter:YAHOO.widget.DataTable.formatNumber, sortable:true},
                    {key:"period2",label:"1880-1900", formatter:YAHOO.widget.DataTable.formatNumber, sortable:true},
                    {key:"period3",label:"1910-1930", formatter:YAHOO.widget.DataTable.formatNumber, sortable:true},
                    {key:"total",label:"Total", formatter:YAHOO.widget.DataTable.formatNumber, sortable:true}
                    ];
                    
                    this.parseNumberFromCurrency = function(sString) {
                    // Remove dollar sign and make it a float
                    return parseFloat(sString.substring(1));
                    };
                    
                    this.myDataSource = new YAHOO.util.DataSource(YAHOO.util.Dom.get("popChart"));
                    this.myDataSource.responseType = YAHOO.util.DataSource.TYPE_HTMLTABLE;
                    this.myDataSource.responseSchema = {
                    fields: [{key:"name"},
                    {key:"category"},
                    {key:"period1", parser:YAHOO.util.DataSource.parseNumber},
                    {key:"period2", parser:YAHOO.util.DataSource.parseNumber},
                    {key:"period3", parser:YAHOO.util.DataSource.parseNumber},
                    {key:"total", parser:YAHOO.util.DataSource.parseNumber}
                    ]
                    };
                    
                    this.myDataTable = new YAHOO.widget.DataTable("popMarkup", myColumnDefs, this.myDataSource,
                    {sortedBy:{key:"total",dir:"desc"}}
                    );
                    };
                    });
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
        <td>
            <xsl:apply-templates/>
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
