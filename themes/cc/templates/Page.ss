<!DOCTYPE html>



<html lang="$ContentLocale">

<head>
	<% base_tag %>
	<title><% if $MetaTitle %>$MetaTitle<% else %>$Title<% end_if %> &raquo; $SiteConfig.Title</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	$MetaTags(false)

	<% require themedCSS('styles.css') %>
	<link rel="shortcut icon" href="" />
</head>
<body class="$ClassName.ShortName<% if not $Menu(2) %> no-sidebar<% end_if %>" <% if $i18nScriptDirection %>dir="$i18nScriptDirection"<% end_if %>>
<div class="main" role="main">
	<div class="inner typography line">
		$Layout
	</div>
</div>

	<!-- <% require javascript('//code.jquery.com/jquery-3.3.1.min.js') %>

</body>
</html>