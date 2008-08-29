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
                
                <link rel="stylesheet" type="text/css" href="http://yui.yahooapis.com/2.5.2/build/datatable/assets/skins/sam/datatable.css" />
                <script type="text/javascript" src="http://yui.yahooapis.com/2.5.2/build/yahoo-dom-event/yahoo-dom-event.js"></script>
                <script type="text/javascript" src="http://yui.yahooapis.com/2.5.2/build/element/element-beta-min.js"></script>
                
                <script type="text/javascript" src="http://yui.yahooapis.com/2.5.2/build/datasource/datasource-beta-min.js"></script>
                <script type="text/javascript" src="http://yui.yahooapis.com/2.5.2/build/datatable/datatable-beta-min.js"></script>
                <script src="http://static.simile.mit.edu/timeplot/api/1.0/timeplot-api.js"  type="text/javascript"></script>
                <link type="text/css" href="style.css" rel="stylesheet"/>
                <title>The Collective Biographies of Women: Pop Chart</title>
                <style type="text/css">
                    body {
                    margin:0;
                    padding:0;
                    }
                </style>
                
                
                <link rel="stylesheet" type="text/css" href="http://yui.yahooapis.com/2.5.2/build/tabview/assets/skins/sam/tabview.css" />
                <script type="text/javascript" src="http://yui.yahooapis.com/2.5.2/build/tabview/tabview-min.js"></script>
                
                <script type="text/javascript">
                    function tpView(source, dest)
                    {
                    dest_el = document.getElementById(dest);
                    try {
                    // Moz supports XMLHttpRequest. IE uses ActiveX.
                    // browser detction is bad. object detection works for any browser
                    xmlhttp = window.XMLHttpRequest?new XMLHttpRequest(): new ActiveXObject("Microsoft.XMLHTTP");
                    } catch (e) {
                    // browser doesn't support ajax. should load iframe: 	frames['geoFrame'].location.href = address;
                    }
                    
                    // the xmlhttp object triggers an event everytime the status changes
                    // triggered() function handles the events
                    xmlhttp.onreadystatechange = triggered;
                    
                    // open takes in the HTTP method and url.
                    xmlhttp.open("GET", source);
                    
                    // send the request. if this is a POST request we would have
                    // sent post variables: send("name=aleem&amp;gender=male)
                    // Moz is fine with just send(); but
                    // IE expects a value here, hence we do send(null);
                    xmlhttp.send(null);
                    }
                    function triggered() {
                    // if the readyState code is 4 (Completed)
                    // and http status is 200 (OK) we go ahead and get the responseText
                    // other readyState codes:
                    // 0=Uninitialised 1=Loading 2=Loaded 3=Interactive
                    if ((xmlhttp.readyState == 4) &amp;&amp; (xmlhttp.status == 200)) {
                    // xmlhttp.responseText object contains the response.
                    dest_el.innerHTML = xmlhttp.responseText;
                    }
                    }
                </script>
                <script src="http://static.simile.mit.edu/timeplot/api/1.0/timeplot-api.js"  type="text/javascript"></script>
                <script>
                    var timeplot;
                    function onLoad(dest, source) {
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
                                        <li><a href="#tab2" onclick="tpView('timeplot-1850.html', 'output-1850');"><em>1850-1870</em></a></li>
                                        <li><a href="#tab3" onclick="tpView('timeplot-1870.html', 'output-1870');"><em>1870-1890</em></a></li>
                                        <li><a href="#tab4" onclick="tpView('timeplot-1890.html', 'output-1890');"><em>1890-1910</em></a></li>
                                        <li><a href="#tab5" onclick="tpView('timeplot-all.html', 'output-all');"><em>All</em></a></li>
                                        
                                    </ul>            
                                    <div class="yui-content">
                                        <div id="tab1"><p>Click on the date range you'd like to explore.</p></div>
                                        <div id="tab2"><div id="output-1850"><img alt="Loading results..." src="ajax-loader.gif"/></div></div>
                                        <div id="tab3"><div id="output-1870"><img alt="Loading results..." src="ajax-loader.gif"/></div></div>
                                        <div id="tab4"><div id="output-1890"><img alt="Loading results..." src="ajax-loader.gif"/></div></div>
                                        <div id="tab5">
                                            <div id="output-all"><img alt="Loading results..." src="ajax-loader.gif"/></div>
                                        </div>
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
