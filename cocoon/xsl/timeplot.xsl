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
                    .timeplot-container {
                    height: 400px !important;
                    width: 840px !important;
                    }
                </style>
                
                <!-- Dependencies -->
                <!-- Sam Skin CSS for TabView -->
                <link rel="stylesheet" type="text/css" href="http://yui.yahooapis.com/2.7.0/build/tabview/assets/skins/sam/tabview.css"/>
                    
                    <!-- JavaScript Dependencies for Tabview: -->
                    <script type="text/javascript" src="http://yui.yahooapis.com/2.7.0/build/yahoo-dom-event/yahoo-dom-event.js"></script>
                    <script type="text/javascript" src="http://yui.yahooapis.com/2.7.0/build/element/element-min.js"></script>
                    
                    <!-- OPTIONAL: Connection (required for dynamic loading of data) -->
                    <script type="text/javascript" src="http://yui.yahooapis.com/2.7.0/build/connection/connection-min.js"></script>
                    
                    <!-- Source file for TabView -->
                    <script type="text/javascript" src="http://yui.yahooapis.com/2.7.0/build/tabview/tabview-min.js"></script>
                    
                <script src="http://static.simile.mit.edu/timeplot/api/1.0/timeplot-api.js"  type="text/javascript"></script>
                <link type="text/css" href="../style.css" rel="stylesheet"/>
                <title>The Collective Biographies of Women: Pop Chart</title>
                <style type="text/css">
                    body {
                    margin:0;
                    padding:0;
                    }
                </style>
                
                
                <link rel="stylesheet" type="text/css" href="javascript/yui/build/tabview/assets/skins/sam/tabview.css" />
                <script type="text/javascript" src="javascript/yui/build/tabview/tabview-min.js"></script>

                <script src="http://static.simile.mit.edu/timeplot/api/1.0/timeplot-api.js"  type="text/javascript"></script>
                <script>
                    var timeplot;
                    function loadTimeline(dest, source) {
                    var eventSource = new Timeplot.DefaultEventSource();
                    var plotInfo = [
                    Timeplot.createPlotInfo({
                    id: "plot1",
                    dataSource: new Timeplot.Processor(new Timeplot.ColumnSource(eventSource,1), Timeplot.Operator.average, { size: 5 }),
                    showValues: true,
                    valueGeometry: new Timeplot.DefaultValueGeometry({
                    gridColor: "#000000",
                    axisLabelsPlacement: "left",
                    min: 0,
                    }),
                    timeGeometry: new Timeplot.DefaultTimeGeometry({
                    gridColor: "#000000",
                    axisLabelsPlacement: "top",
                    }),
                    lineColor: "#0000dd",
                    fillColor: "#8080cc"
                    })
                    ];
                    timeplot = Timeplot.create(document.getElementById(dest), plotInfo);
                    timeplot.loadText(source, " ", eventSource);
                    }
                    
        var timeplot1;

        var color1 = new Timeplot.Color('#FCFFF5');
        var color2 = new Timeplot.Color('#D1DBBD');
        var color3 = new Timeplot.Color('#91AA9D');
        var color4 = new Timeplot.Color('#468966');
        var color5 = new Timeplot.Color('#193441');
        var gridColor  = new Timeplot.Color('#FFE57F');
        
        function loadTimeline2() {

            var timeGeometry = new Timeplot.DefaultTimeGeometry({
                gridColor: "#000000",
                min: "1800-01-01",
                max: "1900-01-01"
            });

            var geometry1 = new Timeplot.DefaultValueGeometry({
                min: 0
            });

            var geometry2 = new Timeplot.DefaultValueGeometry({
                min: 0
            });


            var eventSource1 = new Timeplot.DefaultEventSource();
            var dataSource1 = new Timeplot.ColumnSource(eventSource1,1);

            var eventSource2 = new Timeplot.DefaultEventSource();
            var dataSource2 = new Timeplot.ColumnSource(eventSource2,1);

            
            var plotInfo1 = [
                Timeplot.createPlotInfo({
                    id: "Inflation",
                    dataSource: dataSource2,
                    timeGeometry: timeGeometry,
                    valueGeometry: geometry2,
                    lineColor: color5,
                    showValues: true
                }),
                Timeplot.createPlotInfo({
                    id: "House Pricing Index",
                    dataSource: dataSource1,
                    timeGeometry: timeGeometry,
                    valueGeometry: geometry1,
                    lineColor: color4,
                    showValues: true
                })
            ];
            
            timeplot1 = Timeplot.create(document.getElementById("output-ny-lon"), plotInfo1);
            timeplot1.loadText("timedata-ny.txt", " ", eventSource1);
            timeplot1.loadText("timedata-london.txt", " ", eventSource2);
        }           

                    
                    var resizeTimerID = null;
                    function onResize() {
                    if (resizeTimerID == null) {
                    resizeTimerID = window.setTimeout(function() {
                    resizeTimerID = null;
                    timeplot.repaint();
                    }, 100);
                    }
                    }
                </script>
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
                            <h2>Timeplots</h2>
                                <div id="tp-container" class="yui-navset">
                                    <ul class="yui-nav">
                                        <li class="selected"><a href="#tab1"><em>Intro</em></a></li>
                                        <li><a href="#tab2" onclick="loadTimeline('output-1850', '1850-1870.txt');"><em>1850-1870</em></a></li>
                                        <li><a href="#tab3" onclick="loadTimeline('output-1870', '1870-1890.txt');"><em>1870-1890</em></a></li>
                                        <li><a href="#tab4" onclick="loadTimeline('output-1890', '1890-1910.txt');"><em>1890-1910</em></a></li>
                                        <li><a href="#tab5" onclick="loadTimeline('output-all', 'timedata.txt');"><em>All</em></a></li>
                                        <li><a href="#tab6" onclick="loadTimeline2();"><em>NY/London</em></a></li>
                                    </ul>            
                                    <div class="yui-content">
                                        <div id="tab1"><p>Click on the date range you'd like to explore.</p></div>
                                        <div id="tab2"><div id="output-1850"><img alt="Loading results..." src="ajax-loader.gif"/></div></div>
                                        <div id="tab3"><div id="output-1870"><img alt="Loading results..." src="ajax-loader.gif"/></div></div>
                                        <div id="tab4"><div id="output-1890"><img alt="Loading results..." src="ajax-loader.gif"/></div></div>
                                        <div id="tab5"><div id="output-all"><img alt="Loading results..." src="ajax-loader.gif"/></div></div>
                                        <div id="tab6"><div id="output-ny-lon"><img alt="Loading results..." src="ajax-loader.gif"/></div></div>
                                    </div>
                                </div>
                                <script>
                                    (function() {
                                    var tabView = new YAHOO.widget.TabView('tp-container');
                                    })();
                                </script>
                        </td>
                    </tr>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
