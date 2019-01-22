<html>
<%
    Dim cars, fname
    cars = Request.Form("cars")
    fname = Request.Form("fname")
%>
<body>
<form action="form.aspx" method="post">
Your name: <input type="text" name="fname" size="20" />
<p>Please select your favorite car:</p>

<input type="radio" name="cars"
<%if cars="Volvo" then Response.Write("checked")%>
value="Volvo">Volvo
<br />
<input type="radio" name="cars"
<%if cars="Saab" then Response.Write("checked")%>
value="Saab">Saab
<br />
<input type="radio" name="cars"
<%if cars="BMW" then Response.Write("checked")%>
value="BMW">BMW
<br /><br />
<input type="submit" value="Submit" />
</form>
<%
    
    If fname <> "" And cars <> "" Then
        Response.Write("Hello " & fname & "!<br />")
        Response.Write("How are you today?")
        Response.Write("<p>Your favorite car is: " & cars & "</p>")
    End If
%>
</body>
</html>

