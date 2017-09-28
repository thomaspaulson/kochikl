<% require themedCSS('blog', 'blog') %>

	<% include Banner %>	    


      <div class="main">
        <div class="row">
          <div class="small-12 large-9 columns content">

				<div class="blog-entry content-container <% if $SideBarView %>unit size3of4<% end_if %>">
				
					<% include MemberDetails %>
				
					<% if $PaginatedList.Exists %>
						<h2>Posts by $CurrentProfile.FirstName $CurrentProfile.Surname for $Title:</h2>
						<% loop $PaginatedList %>
							<% include PostSummary %>
						<% end_loop %>
					<% end_if %>
				
					$Form
					$CommentsForm
				
                    <% include AddThis %>
                    
					<% with $PaginatedList %>
						<% include Pagination %>
					<% end_with %>
				
				</div>
          </div><!-- content -->
			<div class="small-12 large-3 columns sidebar">		  
			<% include BlogSideBar %>
			</div>
        </div>        
      </div>        <!-- div class="main"-->
