function displayIllus(illus, caption)
{
  var generator=window.open('','name','height=800,width=800px, scrollbars=1, resizable=1');
  
  generator.document.write('<html><head><title>Popup</title>');
  generator.document.write('<link rel="stylesheet" href="style.css">');
  generator.document.write('</head><body>');
  generator.document.write('<div class=\'head1\'>' + unescape(caption) + '</div>');
  generator.document.write('<img src=\"full/' + illus + '\">');
  generator.document.write('<div class=\'head2\'><a href="javascript:self.close()"> Close</a> this window.</div>');
  generator.document.write('</body></html>');
  generator.document.close();
}