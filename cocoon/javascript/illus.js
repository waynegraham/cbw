function displayIllus(illus, caption)
{
  var generator=window.open('','name','height=400,width=500');
  
  generator.document.write('<html><head><title>Popup</title>');
  generator.document.write('<link rel="stylesheet" href="style.css">');
  generator.document.write('</head><body>');
  generator.document.write('<p>File name:' + illus + '</p>');
  generator.document.write('<p>Caption:' + caption + '</p>');
  generator.document.write('<img src=\"full/' + illus + '\">');
  generator.document.write('<p><a href="javascript:self.close()"> Close</a> the popup.</p>');
  generator.document.write('</body></html>');
  generator.document.close();
}