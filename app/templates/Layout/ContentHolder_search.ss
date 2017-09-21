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
		</div>            
    </div>	<!-- div class="breadcrumb-wrapper" -->
    
	<div class="searchform-wrapper">
        <div class="row">
	        <div class="small-12 medium-12 large-12 columns">
                $Form
			</div>
		</div>            
    </div>	<!-- div class="breadcrumb-wrapper" -->
    
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
                <ul class="search-menu">
                  <li class="title">Sort by</li>            
                  <li><a href="#">Price</a></li>
                  <li><a href="#">Date</a></li>
                </ul>
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
                         <p>$Content.Summary<p>                            
                         <p class="smalltext">Departs Wellington Railway Station, Wellington</p>                                    
                        </div>
                        <div class="tags">                      
                            <ul class="tag-list">
                              <li><a href="#">Exhitions</a></li>
                              <li><a href="#">Welllington</a></li>
                              <li><a href="#">Exhitions</a></li>
                              <li><a href="#">Welllington</a></li>
                              
                            </ul>                    
                        </div>                        
                       </div>                       
                    </div>
                    </article>                                  

                    <% end_loop %>
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
         
           </div> <!-- div class="main-content" -->        

   		</div>	
    </div>    	<!-- div class="main" -->        
        
