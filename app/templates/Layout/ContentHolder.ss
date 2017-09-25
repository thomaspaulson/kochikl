    <div class="breadcrumb-wrapper">
        <div class="row">
	        <div class="small-12 medium-12 large-12 columns">
	            <nav aria-label="You are here:" role="navigation">
            	  <ul class="breadcrumbs">
                    <li><a href="#">Home</a></li>
                    <li><a href="#">Features</a></li>
                    <li class="disabled">Gene Splicing</li>
                    <li>
                      <span class="show-for-sr">Current: </span> Cloning
                    </li>
                  </ul>
               	</nav>   
		</div>
prprdfsadf	</div>            
    </div>	<!-- div class="breadcrumb-wrapper" -->
        
	<div class="searchform-wrapper">
        <div class="row">
	        <div class="small-12 medium-12 large-12 columns">
                $Form
			</div>
		</div>            
    </div>	<!-- div class="breadcrumb-wrapper" -->
    
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
                    <p><%t ContentHolder.NoPosts 'There are no posts' %></p>
                <% end_if %>
                <% include Pagination %>    
        
                <%--  
                <div class="row">
                   <div class="small-12  medium-12 large-12 columns">        
                    <ul class="pagination" role="navigation" aria-label="Pagination">
                      <li class="pagination-previous disabled">Previous <span class="show-for-sr">page</span></li>
                      <li class="current"><span class="show-for-sr">You're on page</span> 1</li>
                      <li><a href="#" aria-label="Page 2">2</a></li>
                      <li><a href="#" aria-label="Page 3">3</a></li>
                      <li><a href="#" aria-label="Page 4">4</a></li>
                      <li class="ellipsis" aria-hidden="true"></li>
                      <li><a href="#" aria-label="Page 12">12</a></li>
                      <li><a href="#" aria-label="Page 13">13</a></li>
                      <li class="pagination-next"><a href="#" aria-label="Next page">Next <span class="show-for-sr">page</span></a></li>
                    </ul>
                    </div>
                </div>    	<!-- "pagination" -->
                --%>
        
	    </div>    	<!-- div class="main-content" -->           
    </div>    	<!-- div class="main" -->               
