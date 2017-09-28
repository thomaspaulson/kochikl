    <% include Breadcrumb %>
    <% include SearchWrapper %>
    
	<div class="main">       
            <div class="main-content">         
                <div class="holder_header">
                    <div class="row">
                      <div class="large-12 columns">
                        <h2>$Title</h2>    
                      </div>
                    </div>
                </div>	<!--div class="holder_header"-->        
        
                <% if $PaginatedList.Exists %>
                <div class="featured-listing whitebg">
                    <div class="row">                
                    <% loop $PaginatedList %>                                                    
                              <div class="large-4 medium-4 <% if not $MultipleOf(3)  && $Last %>end <% end_if %>columns">
                                 <div class="article-wrapper">
                                      <div class="image-holder">	
                                          <a href="$Link">$FeaturedImage.setWidth(795)</a>
                                      </div>    
                                      <div class="text-holder">                            
                                      <h3>
                                        <a href="$Link" title="<%t Blog.ReadMoreAbout "Read more about '{title}'..." title=$Title %>">
                                            <% if $MenuTitle %>$MenuTitle<% else %>$Title<% end_if %>
                                        </a>                                                                                
                                      </h3>
                                      <p>$Content.Summary(22)</p>
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
