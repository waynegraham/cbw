<script type="text/javascript">
function displayIllus(illus, caption)
{
	var illusWin=window.open('','illusWin','height=400,width=500');
	illusWin.document.write('<html><head><title>The Collective Biographies of Women: Illustration</title>');
	illus.Win.document.write("<link type='text/css' href='style.css' rel='stylesheet'/>)")
	illusWin.document.write('</head><body>');
	illusWin.document.write("<h3>" + caption + "</h3>");
	illusWin.document.write("<img src='full/" + illus + "'/>");
	illusWin.document.write('<p><a href="javascript:self.close()">Close</a> the popup.</p>');
	illusWin.document.write('</body></html>');
	illusWin.document.close();
}
</script>