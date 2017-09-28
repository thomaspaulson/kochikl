<% require themedCSS('blog', 'blog') %>

	<% include Banner %>	    

      <div class="main">
        <div class="row">
          <div class="small-12 large-9 columns content">
			
			<div class="blog-entry content-container <% if $SideBarView %>unit size3of4<% end_if %>">
				<article>
                    <div class="line-title">
                        <h1>$Title</h1>
                        <hr/>
                    </div>
			
					<% if $FeaturedImage %>
						<p class="post-image">$FeaturedImage.setWidth(795)</p>
					<% end_if %>
			
					<div class="content">$Content</div>
			
					<% include EntryMeta %>
				</article>
			
				$Form
				$CommentsForm
			</div>
		  <% include AddThis %>
          </div><!-- content -->
			<div class="small-12 large-3 columns sidebar">		  			
			<% include BlogSideBar %>
			</div>
        </div>        
      </div>        <!-- div class="main"-->
