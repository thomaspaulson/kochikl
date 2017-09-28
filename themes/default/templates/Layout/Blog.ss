<% require themedCSS('blog', 'blog') %>

      <div class="main">
        <div class="row">
          <div class="small-12 large-9 columns main-content">

		<div class="blog-entry content-container <% if $SideBarView %>unit size3of4<% end_if %>">
		
			<article>
                  <div class="line-title">
                      <h1>            				
					<% if $ArchiveYear %>
						<%t Blog.Archive 'Archive' %>:
						<% if $ArchiveDay %>
							$ArchiveDate.Nice
						<% else_if $ArchiveMonth %>
							$ArchiveDate.format('F, Y')
						<% else %>
							$ArchiveDate.format('Y')
						<% end_if %>
					<% else_if $CurrentTag %>
						<%t Blog.Tag 'Tag' %>: $CurrentTag.Title
					<% else_if $CurrentCategory %>
						<%t Blog.Category 'Category' %>: $CurrentCategory.Title
					<% else %>
						$Title
					<% end_if %>
                    </h1>
                      <hr/>
                  </div>  				
		
				<div class="content">$Content</div>
		
				<% if $PaginatedList.Exists %>
					<% loop $PaginatedList %>
						<% include PostSummary %>
					<% end_loop %>
				<% else %>
					<p><%t Blog.NoPosts 'There are no posts' %></p>
				<% end_if %>
			</article>
		
			$Form
			$CommentsForm
		
			<% with $PaginatedList %>
				<% include Pagination  Items=$PaginatedList %>
			<% end_with %>
                        
                <%-- include AddThis --%>
		</div>

            </div><!-- content -->
            <div class="small-12 large-3 columns side-content">		  
            <% include BlogSideBar %>
            </div>
        </div>        
      </div>        <!-- div class="main"-->
