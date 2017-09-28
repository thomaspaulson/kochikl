
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
                            <div class="large-4 medium-4 columns">
                                   <div class="article-wrapper">
                                        <div class="image-holder">	
                                            <a href="$Link">$FeaturedImage.setWidth(795)</a>
                                        </div>    
                                        <div class="text-holder">                            
                                        <h3><a href="#">$Title</a></h3>
                                        <p>$Content.Summary(22)</p>                                        
                                        <div class="readmore red-bg white-text slide-up">Read more ></div>
                                    </div>
                                </div> <!-- div class="article-wrapper" -->
                            </div>                        
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
                            <div class="large-4 medium-4 columns">
                                   <div class="article-wrapper">
                                        <div class="image-holder">	
                                            <a href="$Link">$FeaturedImage.setWidth(795)</a>
                                        </div>    
                                        <div class="text-holder">                            
                                        <h3><a href="#">$Title</a></h3>
                                        <p>$Content.Summary(22)</p>                                        
                                        <div class="readmore red-bg white-text slide-up">Read more ></div>
                                    </div>
                                </div> <!-- div class="article-wrapper" -->
                            </div>                        
                        <% end_loop %>
                    </div>
                    <% end_if %>
                
              </div>
            </div>
        </div>	<!--div class="home_featured graybg"-->        
            
    
        <div class="home_featured whitebg">
            <div class="row">
              <div class="large-12 columns">
                <h2>Events</h2>    
                    <% if $LatestEvents %>
                    <div class="row">
                        <% loop $LatestEvents %>
                            <div class="large-4 medium-4 columns">
                                   <div class="article-wrapper">
                                        <div class="image-holder">	
                                            <a href="$Link">$FeaturedImage.setWidth(795)</a>
                                        </div>    
                                        <div class="text-holder">                            
                                        <h3><a href="#">$Title</a></h3>
                                        <p>$Content.Summary(22)</p>                                        
                                        <div class="readmore red-bg white-text slide-up">Read more ></div>
                                    </div>
                                </div> <!-- div class="article-wrapper" -->
                            </div>                        
                        <% end_loop %>
                    </div>
                    <% end_if %>
                
              </div>
            </div>
        </div>	<!--div class="home_featured whitebg"-->        

