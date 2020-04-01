	<% include Breadcrumb %>
        <div class="main">
            <div class="row">
            <% include Sidebar %>    
            <div class="<% if $Menu(2) %>small-12 medium-9 large-9<% else %>small-12 medium-12 large-12<% end_if %> columns  main-content">
                <h1>$Title</h1>
                $Content
                $Form                
            </div>
            </div>
        </div>    
