    <% include Breadcrumb %>    
    <% include SearchWrapper %>
    
	<div class="main">        
            <div class="row">    
            <div class="small-12 medium-4 large-3 columns side-content">                   
    	       <div class="search-form filter-form-wrapper">               	
                    <h5 class="mobile-filter-title">Filter by <i class="down"></i></h5>
                    <h5 class="desktop-filter-title">Filter by</h5>
                    <div class="filter-form-expandable">
                        $SearchFilterForm
                    </div><!--div class="filter-form-expandable" -->                    
               </div>
           </div> <!-- div class="small-12 medium-3 large-3 columns side-content" -->
        
           <div class="small-12 medium-8 large-9 columns main-content">
               <%-- integrate when sort is done
                <ul class="search-menu">
                  <li class="title">Sort by</li>            
                  <li><a href="#">Price</a></li>
                  <li><a href="#">Date</a></li>
                </ul>
               --%>
                <h5> Search results</h5>
            
                <% if $PaginatedList.Exists %>
                    <% loop $PaginatedList %>                    
                    <article class="search_result">
                    <div class="row">
                       <div class="small-12 medium-12 large-4 columns">
                          <a href="$Link">$FeaturedImage.setWidth(795)</a>
                       </div>	            
                       <div class="small-12 medium-12 large-8 columns">
                        <div class="page-header">	
                           <h3><a href="$Link">$Title</a></h3>
                        </div>   
        
                        <div class="page-content">
                         <% if $Summary %>$Summary<% else %><p>$Excerpt(20)<p><% end_if %>                         
                         <p class="smalltext">Departs Wellington Railway Station, Wellington</p>                                    
                        </div>
                        <%--
                        <div class="tags">                      
                            <ul class="tag-list">
                              <li><a href="#">Exhitions</a></li>
                              <li><a href="#">Welllington</a></li>
                              <li><a href="#">Exhitions</a></li>
                              <li><a href="#">Welllington</a></li>
                              
                            </ul>                    
                        </div>                        
                        --%>   
                       </div>                       
                    </div>
                    </article>                                  

                    <% end_loop %>
                <% else %>
                    <p><%t ContentHolder.NoPosts 'There are no posts' %></p>
                <% end_if %>
                <% include Pagination Items=$PaginatedList %>            
         
           </div> <!-- div class="main-content" -->        

   	</div>	
    </div>    	<!-- div class="main" -->        
        
