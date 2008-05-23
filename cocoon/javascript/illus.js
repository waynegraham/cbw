function displayIllus(illus, caption)
{
  var generator=window.open('','name','height=800,width=800px, resizable=1');
  
  generator.document.write('<html><head><title>Popup</title>');
  generator.document.write('<link rel="stylesheet" href="style.css">');
  generator.document.write('</head><body>');
  generator.document.write('<h3>' + unescape(caption) + '</h3>');
  generator.document.write('<img src=\"full/' + illus + '\">');
  generator.document.write('<p><a href="javascript:self.close()"> Close</a> this window.</p>');
  generator.document.write('</body></html>');
  generator.document.close();
}