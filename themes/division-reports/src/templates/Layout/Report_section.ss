<% with $CurrentSection %>
$BlockArea(BeforeContent)
	<h1>$Title Stories:</h1>
	<% loop $Stories %>
		<h2><a href="$Link">$Title</a></h2>
	<% end_loop %>
$BlockArea(AfterContent)
<% end_with %>

<h2>Other sections:</h2>
<% loop $Sections %>
	<h3><a href="$Link">$Title</a></h3>
<% end_loop %>
