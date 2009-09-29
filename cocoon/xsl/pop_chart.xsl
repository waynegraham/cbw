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
                
                <link rel="stylesheet" type="text/css" href="http://yui.yahooapis.com/2.7.0/build/fonts/fonts-min.css" />
                <link rel="stylesheet" type="text/css" href="javascript/yui/build/datatable/assets/skins/sam/datatable.css" />
                <script type="text/javascript" src="http://yui.yahooapis.com/2.7.0/build/yahoo-dom-event/yahoo-dom-event.js"></script>
                <script type="text/javascript" src="http://yui.yahooapis.com/2.7.0/build/element/element-min.js"></script>
                <script type="text/javascript" src="javascript/yui/build/datasource/datasource-beta-min.js"></script>
                <script type="text/javascript" src="javascript/yui/build/datatable/datatable-beta-min.js"></script>
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
                <script type="text/javascript">
                    YAHOO.util.Event.addListener(window, "load", function() {
                    YAHOO.example.EnhanceFromMarkup = new function() {
                    // Create a shortcut
                    var Dom = YAHOO.util.Dom;
                    
                    // Contain our code under the YAHOO.example namespace
                    var Ex = YAHOO.example,
                    // cache of the records to mark
                    markRecs = {};
                    
                    // Create a custom function to store the records needing cell coloring
                    YAHOO.widget.DataTable.Formatter.cellMarker = function (cell,rec,col,data) {
                    if (data &gt; 20) {
                    // In object hash to prevent duplication
                    markRecs[rec.getId()] = cell;
                    }
                    cell.innerHTML = data;
                    };
                    
                    // Function to add the color class to cells
                    Ex.updateMarks = function () {
                    var allHTMLTags = new Array();
                    allHTMLTags=document.getElementsByTagName("*");
                    for (i=0; i&lt;allHTMLTags.length; i++) {
                    if (allHTMLTags[i].className=='name') {
                    var name = allHTMLTags[i].parentNode.innerHTML.split('&lt;')[0];
                    var nm = allHTMLTags[i].parentNode.innerHTML.split('name=\"')[1].split('\"')[0];
                    allHTMLTags[i].parentNode.innerHTML='<a name="' + nm + '" href="search?rows=20&amp;start=0&amp;fulltext=%27' + name + '%27&amp;action=Submit">' + name + '</a>';                   
                    }
                    if (allHTMLTags[i].className=='datahi') {
                    allHTMLTags[i].parentNode.className+=allHTMLTags[i].parentNode.className?' isHi':'isHi';                    
                    }
                    }
                    };
                    
                    var myColumnDefs = [
                    {key:"name",label:"Name", sortable:true},
                    {key:"category",label:"Category", sortable:true},
                    {key:"period1",label:"1850-1870", sortable:true},
                    {key:"period2",label:"1880-1900", sortable:true},
                    {key:"period3",label:"1910-1930", sortable:true},
                    {key:"total",label:"Total", sortable:true}
                    ];
                    
                    Ex.myDataSource = new YAHOO.util.DataSource(YAHOO.util.Dom.get("popChart"));
                    Ex.myDataSource.responseType = YAHOO.util.DataSource.TYPE_HTMLTABLE;
                    Ex.myDataSource.responseSchema = {
                    fields: [{key:"name"},
                    {key:"category"},
                    {key:"period1"},
                    {key:"period2"},
                    {key:"period3"},
                    {key:"total"}
                    ]
                    };
                    
                    Ex.myDataTable = new YAHOO.widget.DataTable("popMarkup", myColumnDefs, Ex.myDataSource,
                    {sortedBy:{key:"total",dir:"desc"}}
                    );
                    
                    // Set row colors initially
                    Ex.updateMarks();
                    
                    // Add the class to the rows on renderEvent
                    Ex.myDataTable.subscribe('renderEvent',Ex.updateMarks);
                    
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
            <!-- Hack for sorting to work with numbers less than ten -->
            <xsl:if test=" number(.) &lt; 10">
                <xsl:text>&#32;</xsl:text>
            </xsl:if>
            <xsl:apply-templates/>
            <!-- Hack for adding highlighting with YUI datatable. -->
            <a class="{@role}" name="{../@n}"><!-- IE fix --></a>
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
