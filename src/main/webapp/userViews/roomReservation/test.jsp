<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="dist/css/datepicker.min.css" rel="stylesheet" type="text/css">
<script src="dist/js/datepicker.min.js"></script>
        <!-- Include English language -->
<script src="dist/js/i18n/datepicker.en.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	$('#my-element').datepicker([options])
	//Access instance of plugin
	$('#my-element').data('datepicker')
});	
</script>
</head>
<body>
	<input type="text"
       class="datepicker-here"
       data-language='en'
       data-multiple-dates="3"
       data-multiple-dates-separator=", "
       data-position='top left'/>
</body>
</html>