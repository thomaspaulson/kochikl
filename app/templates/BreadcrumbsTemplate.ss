<%-- Loop is all on one line to prevent whitespace bug in older versions of IE --%>
                
    <% if $Pages %>
    <nav aria-label="You are here:" role="navigation">
    <ul class="breadcrumbs">
        <li><a href="$BaseBref">Home</a></li>
        <% loop $Pages %>
            <li>
                <% if $Last %>
                <span class="show-for-sr">Current:</span> $MenuTitle.XML
                <% else %>
                    <% if not Up.Unlinked %>
                    <a href="$Link" class="breadcrumb-$Pos">
                    <% end_if %>
                    $MenuTitle.XML
                    <% if not Up.Unlinked %>
                    </a>
                    <% end_if %>
                <% end_if %>
            </li>
        <% end_loop %>
    </ul>            
    </nav>                         
    <% end_if %>
