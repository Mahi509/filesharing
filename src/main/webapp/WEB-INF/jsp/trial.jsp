<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<script>

$(document).ready(function(){

	function edit(element) {
		var parent=$(element).parent().parent();
		var placeholder=$(parent).find('.text-info').text();
		//hide label
		$(parent).find('label').hide();
		//show input, set placeholder
		var input=$(parent).find('input[type="text"]');
		$(input).show();
		$(input).attr('placeholder', placeholder);
	}
	
});



</script>
<style>
.control-label .text-info { display:inline-block; }
</style>
</head>
<body>
<div class="control-group">
    <label for="name" class="control-label"><p class="text-info">Saghir<i class="icon-star"></i></p></label>
	<input type="text" class="input-medium" style="display:none;">
    <div class="controls">
        <a href="#" onclick="edit(this);">Edit</a>
    </div>
</div>

</body>
</html>