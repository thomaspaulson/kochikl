<!doctype html>
<html class="no-js" lang="en">
  <head>
    <% base_tag %>
    <title><% if $MetaTitle %>$MetaTitle<% else %>$Title<% end_if %> | $SiteConfig.Title</title>    
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    $MetaTags(false)
    <meta property="og:title" content="<% if $MetaTitle %>$MetaTitle<% else %>$Title<% end_if %> | $SiteConfig.Title" />
    <meta property="og:type" content="website" />
    <meta property="og:url" content="$AbsoluteLink" />
    <meta property="og:image" content="<% if $FeaturedImage %>$FeaturedImage.AbsoluteLink<% else %>http://kochikl.com/assets/images/main-banner.png<% end_if %>" />    
    <meta property="og:description" content="$Content.Summary(20)" />        
    <link href="https://fonts.googleapis.com/css?family=PT+Serif" rel="stylesheet">
    <link rel="shortcut icon" href="/favicon.ico">
    <% require themedCSS('style') %>    
  </head>
  <body>
  <div class="off-canvas position-right" id="offCanvasRight" data-off-canvas>    
    <!-- Your menu or Off-canvas content goes here -->

        <div class="mobile-form-button-holder">	
            <!-- Close button -->	
            <button class="close-button" aria-label="Close menu" type="button" data-close>
              <span aria-hidden="true">&times;</span>
            </button>
            
            <div class="search-bar">
                $SearchForm
            </div>       <!-- div class="search-bar" -->       

        </div>   	<!-- div class="mobile-form-button-holder" -->	       
        <!-- Menu -->
        <ul class="vertical menu">
        <% loop $MenuSet('MobileMenu').MenuItems %>
            <li><a href="$Link" >$MenuTitle</a></li>
        <% end_loop %>            
        </ul>
        
  </div>
  <div class="off-canvas-content" data-off-canvas-content>
        <!-- Your page content lives here -->    
        <div class="container">    
        <% include Header %>
        $Layout            
        <% include Footer %>
        </div><!-- div class="container" -->
  </div>    
    <script src="{$ThemeDir}/js/app.js"></script>    
    <!-- Go to www.addthis.com/dashboard to customize your tools -->
    <script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-59f2ca5f6555243f"></script>
    
	<script async src="https://www.googletagmanager.com/gtag/js?id=UA-109522837-1"></script>
	<script>
	  window.dataLayer = window.dataLayer || [];
	  function gtag(){dataLayer.push(arguments);}
	  gtag('js', new Date());

	  gtag('config', 'UA-109522837-1');
	</script>
	
  </body>
</html>

