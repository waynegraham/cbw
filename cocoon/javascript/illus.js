function displayIllus(illus, caption)
{
  var generator=window.open('','name','height=700px,width=960px, scrollbars=1, resizable=1');
  
  generator.document.write('<html><head><title>Popup</title>');
  generator.document.write('<link rel="stylesheet" href="style.css">');
  generator.document.write('</head><body id=\'image-wrap\'>');
  generator.document.write('<div class=\'head1\'>' + unescape(caption) + '</div>');
  generator.document.write('<img src=\"full/' + illus + '.jpg\">');
  generator.document.write('<div class=\'head2\'><a href="javascript:self.close()"> Close this window</a>.</div>');
  generator.document.write('</body></html>');
  generator.document.close();
}