/*
 * Ext JS Library 2.2
 * Copyright(c) 2006-2008, Ext JS, LLC.
 * licensing@extjs.com
 * 
 * http://extjs.com/license
 */

Ext.onReady(function(){

    // create the Data Store
    var store = new Ext.data.Store({
        // load using HTTP
        url: 'popchart.xml',

        // the return will be XML, so lets set up a reader
        reader: new Ext.data.XmlReader({
               // records will have an "entry" tag
               record: 'entry',
           }, [
               // set up the fields mapping into the xml doc
               // The first needs mapping, the others are very basic
               {name: 'name', type: 'string'}, {name: 'period1', type: 'int'}, {name: 'period2', type: 'int'}, {name: 'period3', type: 'int'}, {name: 'period4', type: 'int'}
           ])
    });

    // create the grid
    var grid = new Ext.grid.GridPanel({
        store: store,
        columns: [
            {header: "Name", width: 250, dataIndex: 'name', sortable: true},
            {header: "1850-1870", width: 120, dataIndex: 'period1', sortable: true},
            {header: "1880-1900", width: 120, dataIndex: 'period2', sortable: true},
            {header: "1910-1930", width: 120, dataIndex: 'period3', sortable: true},
            {header: "Total", width: 120, dataIndex: 'period4', sortable: true}
        ],
        renderTo:'popchart-grid',
        width:892,
        height:980
    });

    store.load();
});
