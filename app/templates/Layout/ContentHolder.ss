    <% include Breadcrumb %>
    <% include SearchWrapper %>
    <% if $DisplayBanner %>
        <% include Banner %>        
    <% end_if %>
    
	<div class="main">       
            <div class="main-content">                     
                <% if not $DisplayBanner %> 
                <div class="holder_header">
                    <div class="row">
                      <div class="large-12 columns">
                        <h2>
                        <% if $CurrentType %>
                            Type: $CurrentType.Title
                        <% else_if  $CurrentLocation %>
                            Location: $CurrentLocation.Title
                        <% else %>
                        $Title
                        <% end_if %>
                        </h2>
                      </div>
                    </div>
                </div>	
                <% end_if %>    
                <% if $PaginatedList.Exists %>
                <div class="featured-listing whitebg">
                    <div class="row">                
                    <% loop $PaginatedList %>                                                    
                        <div class="large-4 medium-4 <% if not $MultipleOf(3)  && $Last %>end <% end_if %>columns">
                           <div class="article-wrapper">
                                <div class="image-holder">	
                                    <a href="$Link">$FeaturedImage.CroppedImage(368,212)</a>
                                </div>    
                                <div class="text-holder">                            
                                <h3>
                                  <a href="$Link" title="<%t Blog.ReadMoreAbout "Read more about '{title}'..." title=$Title %>">
                                      <% if $MenuTitle %>$MenuTitle<% else %>$Title<% end_if %>
                                  </a>                                                                                
                                </h3>
                                <% if $Summary %>$Summary<% else %><p>$Excerpt(20)<p><% end_if %>                                          
                                <div class="readmore  <% if $Even %>blue-bg<% else %>red-bg<% end_if %> white-text slide-up">Read more ></div>
                                </div>
                            </div> <!-- div class="article-wrapper" -->
                        </div>
                              
                    <% if $MultipleOf(3) %>
                        </div>
                    </div>
                    <div class="featured-listing <% if $MultipleOf(3) %>graybg<% else %>whitebg<% end_if %>">
                        <div class="row">                                        
                    <% end_if %>
                    <% end_loop %>
                        </div>
                    </div>                    
                <% else %>
                <div class="row">
                    <div class="small-12 large-12 columns">
                    <p><%t ContentHolder.NoPosts 'There are no posts' %></p>
                    </div>
                </div>    
                <% end_if %>
                <% include Pagination Items=$PaginatedList %>            
        
	    </div>    	<!-- div class="main-content" -->           
    </div>    	<!-- div class="main" -->               
