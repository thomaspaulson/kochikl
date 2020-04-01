	<div class="header">  
        <div class="row">
          <div class="large-12 columns">          
            <a href="$BaseHref" class="logo"><img src="$ThemeDir/images/logo.png"></a>            
            <button type="button" class="button small" data-toggle="offCanvasRight" id="mobile-menu">Menu</button>
            <% if $SearchForm %>
            <div class="search-bar">
                $SearchForm
            </div>
            <% end_if %>
            <div class="navigation-bar">    
                <ul class="menu">
                    <% loop $Menu(1) %>
                        <li class="$LinkingMode"><a href="$Link" title="$Title.XML">$MenuTitle.XML</a></li>
                    <% end_loop %>                    
                </ul>      
            </div>           

            </div>    
          </div>
        </div><!-- div class="header" -->      