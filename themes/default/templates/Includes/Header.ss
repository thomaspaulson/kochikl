    <header class="header">
        <div class="row">
          <div class="large-12 columns">
            <div class="top-bar">
			  <div class="top-bar-title">
				<!--
				<span data-responsive-toggle="responsive-menu" data-hide-for="medium">
				  <button class="menu-icon dark" type="button" data-toggle></button>
				</span>			  
				-->
			      <a href="$BaseHref"><strong>$SiteConfig.Title</strong></a>
			  </div>	
			  <div id="responsive-menu">
                <div class="top-bar-left">
                </div>
                <div class="top-bar-right">
                    <ul class="menu">
                    <% loop $Menu(1) %>
                        <li class="$LinkingMode"><a href="$Link" title="$Title.XML">$MenuTitle.XML</a></li>
                    <% end_loop %>                    
                    </ul>
                </div>
			  </div>	
            </div>        
          </div>
        </div>
    </header>
