// Set thickbox loading image
tb_pathToImage = "loading-thickbox.gif";

jQuery(document).ready(function () {
	// Initialise the first and second carousel by class selector.
	// Note that they use both the same configuration options (none in this case).
	jQuery('.image-carousel').jcarousel();
	var loc = document.location.href;
	var section = loc.split('section=')[1];
	document.getElementById(section).className = 'selected';
	if (section == 1 || section > 25) {
		document.getElementById('select-link').className = 'selected';
	} else if (section > 1 && section < 26) {
		document.getElementById('anno-link').className = 'selected';
	}
});