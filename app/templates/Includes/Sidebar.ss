    <% if $Menu(2) %>
        <div class="small-12 medium-3 large-3 columns side-content">  
            <nav class="secondary">
                    <% with $Level(1) %>
                            <h3>
                                    $MenuTitle
                            </h3>
                            <ul>
                                    <% include SidebarMenu %>
                            </ul>
                    <% end_with %>
            </nav>
        </div>    
    <% end_if %>

