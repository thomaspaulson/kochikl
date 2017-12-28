<%-- Loop is all on one line to prevent whitespace bug in older versions of IE --%>
                
    <% if $Pages %>
    <nav aria-label="You are here:" role="navigation">
    <ul class="breadcrumbs">
        <li><a href="$BaseHref">Home</a></li>
        <% loop $Pages %>            
            <li>
                <% if $Last %>
                <span class="show-for-sr">Current:</span> $MenuTitle.XML
                <% else %>
                    <a href="$Link" class="breadcrumb-$Pos">
                    $MenuTitle.XML
                    </a>
                <% end_if %>
            </li>
        <% end_loop %>
    </ul>            
    </nav>                         
    <% end_if %>
