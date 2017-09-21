        <div class="row">
            <div class="large-12 columns">
                $Content
                $Form
               <div class="row">
                <div class="large-3 columns">
                    Filter by
                    $SearchFilterForm
                </div>    
                <div class="large-9 columns">
                <% if $PaginatedList.Exists %>
                    <% loop $PaginatedList %>   
                        <article>
                        <h2>
                            <a href="$Link" title="<%t Blog.ReadMoreAbout "Read more about '{title}'..." title=$Title %>">
                                <% if $MenuTitle %>$MenuTitle<% else %>$Title<% end_if %>
                            </a>
                        </h2>

                      		<a href="$Link" title="<%t ContentHolder.ReadMoreAbout "Read more about '{title}'..." title=$Title %>">
                            	$FeaturedImage.setWidth(795)
                    		</a>
                            <p>
                            $Content.Summary
                            <p>
                      	    <p>
                                <a href="$Link">
                                    <%t ContentHolder.ReadMoreAbout "Read more about '{title}'..." title=$Title %>
                                </a>
                            </p>
                        </article>                        
                    <% end_loop %>
                <% else %>
                    <p><%t ContentHolder.NoPosts 'There are no posts' %></p>
                <% end_if %>
                <% include Pagination %>
                </div>
            </div>
                
            </div>
        </div>
