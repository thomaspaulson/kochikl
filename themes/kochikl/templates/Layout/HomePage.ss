
    <div class="main-banner">
        <img src="$ThemeDir/images/main-banner.png">
        <div class="text-wrapper"> 
            $Content
        </div>
    </div>    
        
        <div class="home_featured whitebg">
            <div class="row">
              <div class="large-12 columns">
                <h2>Things to do</h2>    
                    <% if $LatestActivites %>
                    <div class="row">
                        <% loop $LatestActivites %>
                        <% include PageSummary BackGround="red-bg" %>
                        <% end_loop %>
                    </div>
                    <% end_if %>
              </div>
            </div>
        </div>	<!-- div class="home_featured whitebg" -->        
        
    
        <div class="home_featured graybg">
            <div class="row">
              <div class="large-12 columns">
                <h2>Accommodation</h2>    
                    <% if $LatestAccommodations %>
                    <div class="row">
                        <% loop $LatestAccommodations %>
                            <% include PageSummary BackGround="blue-bg" %>
                        <% end_loop %>
                    </div>
                    <% end_if %>
                
              </div>
            </div>
        </div>	<!--div class="home_featured graybg"-->        
            
        <%--
        <div class="home_featured whitebg">
            <div class="row">
              <div class="large-12 columns">
                <h2>Events</h2>    
                    <% if $LatestEvents %>
                    <div class="row">
                        <% loop $LatestEvents %>
                            <% include PageSummary BackGround="blue-bg" %>
                        <% end_loop %>
                    </div>
                    <% end_if %>
                
              </div>
            </div>
        </div>	<!--div class="home_featured whitebg"-->        
        --%>