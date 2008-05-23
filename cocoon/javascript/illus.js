function displayIllus(illus)
{
	var illusWin=window.open('','illustration','height=400,width=500');
	illusWin.document.write('<html><head><title>The Collective Biographies of Women: Illustration</title>');
	illusWin.document.write("<link type='text/css' href='style.css' rel='stylesheet'/>)")
	illusWin.document.write('</head><body>');
	illusWin.document.write("<h3>Test</h3>");
	illusWin.document.write("<img src='full/" + illus + "'/>");
	illusWin.document.write('<p><a href="javascript:self.close()">Close</a> the popup.</p>');
	illusWin.document.write('</body></html>');
	illusWin.document.close();
}