<!doctype html>
<html class="no-js" lang="en">
  <head>
	<% base_tag %>
	<title><% if $MetaTitle %>$MetaTitle<% else %>$Title<% end_if %> | $SiteConfig.Title</title>    
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">    
    <% require themedCSS('app') %>    
  </head>
  <body>
    <% include Header %>
    $Layout            
    <% include Footer %>    
    <script src="{$ThemeDir}js/app.js"></script>
  </body>
</html>

