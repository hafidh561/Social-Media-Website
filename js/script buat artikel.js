CKEDITOR.replace('ckedtor');
$('form').submit(function (e) {
	var messageLength = CKEDITOR.instances['ckedtor']
		.getData()
		.replace(/<[^>]*>/gi, '').length;
	if (!messageLength) {
		alert('Please enter a message');
		e.preventDefault();
	}
});
