<!DOCTYPE html>

<html lang="$ContentLocale">

<head>
	<% base_tag %>
	<title><% if $MetaTitle %>$MetaTitle<% else %>$Title<% end_if %> &raquo; $SiteConfig.Title</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	$MetaTags(false)
<script src="https://cdnjs.cloudflare.com/ajax/libs/alpinejs/2.3.0/alpine-ie11.min.js" integrity="sha512-Atu8sttM7mNNMon28+GHxLdz4Xo2APm1WVHwiLW9gW4bmHpHc/E2IbXrj98SmefTmbqbUTOztKl5PDPiu0LD/A==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/tailwindcss/2.2.19/tailwind.min.css" referrerpolicy="no-referrer" />
	<script type="text/javascript">
		(function(d, sc, u) {
		  var s = d.createElement(sc), p = d.getElementsByTagName(sc)[0];
		  s.type = 'text/javascript';
		  s.async = true;
		  s.src = u + '?v=' + (+new Date());
		  p.parentNode.insertBefore(s,p);
		  })(document, 'script', '//cf.bstatic.com/static/affiliate_base/js/flexiproduct.js');
	</script>

	<link rel="shortcut icon" href="" />
</head>
<body class="$ClassName.ShortName<% if not $Menu(2) %> no-sidebar<% end_if %>" <% if $i18nScriptDirection %>dir="$i18nScriptDirection"<% end_if %>>
<div class="main" role="main">
	<div class="inner typography line">
		$Layout
	</div>
</div>

<% include Footer %>

	<!-- <% require javascript('//code.jquery.com/jquery-3.3.1.min.js') %>

</body>
</html>
