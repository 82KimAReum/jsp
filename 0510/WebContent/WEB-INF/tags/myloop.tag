<%@tag  body-content="scriptless" %>
<%@attribute name="title" %>
<%@attribute name="bgcolor" %>
<%@attribute name="color" %>


<table border="1" bgcolor="${bgcolor }">
	<thead>
		<tr>
			<td style='color:${color}'>${title }</td>
		</tr>
	</thead>
	<tbody>
	<tr>
		<td style='color:${color}'><jsp:doBody/></td>
	</tr>
	</tbody>
</table>
