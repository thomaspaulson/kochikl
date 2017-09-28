<!doctype html>
<html class="no-js" lang="en">
  <head>
	<% base_tag %>
	<title><% if $MetaTitle %>$MetaTitle<% else %>$Title<% end_if %> | $SiteConfig.Title</title>    
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
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
  </body>
</html>

