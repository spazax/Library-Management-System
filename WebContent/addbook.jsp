<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add New Boo || LMS</title>
	<link href="css/bootstrap.css" rel="stylesheet">
    <script src="js/jquery.js"></script>
	<script src="js/bootstrap.js"></script>
    <script>
	$(function(){
	$('.dropdown-toggle').dropdown()
	});
	</script>
    <!--[if lt IE 9]>
      <script src="../assets/js/html5shiv.js"></script>
    <![endif]-->
</head>
<body>

		<div class="container">
       
                 <a class="brand" href="#"></a>
          <h3>Library Management System</h3>
		  <div class="tabbable tabs-below">
<ul class="nav nav-pills">
		      <li ><a href="index.jsp">Home</a></li>
              <li><a href="issue_book.jsp">Issue Book</a></li>
              <li><a href="return_book.jsp">Return Book</a></li>
              <li class="active"><a href="addbook.jsp">Add New Book</a></li>
              <li><a href="book_status.jsp">Book Status</a></li>  
              <li><a href="listbook.jsp">Available Books</a></li>
              <li><button class="btn btn-primary" onclick="window.location.href='logout.jsp'">Logout</button></li>
			</ul>
      	
			<ul class="nav nav-list">
            <li class="nav-header"></li>
            <li class="active"><a href="#"></a></li>
            <li><a href="#"></a></li>
            </ul>
                     	
			
	
      

    

		  
		 









		 </div><!--/.nav-collapse -->
        </div>
      <div class="container">
    </div>
      
     <div class="navbar navbar-inverse navbar-fixed-bottom">
  <div class="navbar-inner">
     <div class="container">
     <button type="button" class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="active" href="#">Support@OnlinveInventory.com</a>
    </div>
  </div>
</div>

<!-- Wrap all page content here -->
<div id="wrap">
  <div class="container">
 
    <p>Add Book</p>
    <%@page import="java.sql.*" %>
<% 
String session_user=(String)session.getAttribute("user");
try{
if(session_user!=null)
{
String submit=null;
submit=request.getParameter("submit");
if(submit!=null)
{
	String name=request.getParameter("name");
	String category=request.getParameter("category");
	String pages=request.getParameter("pages");
	String edition=request.getParameter("edition");
	String author=request.getParameter("author");
	String publication=request.getParameter("publication");
	String isbn=request.getParameter("isbn");
	String price=request.getParameter("price");
	out.println(name+category+pages+edition+publication+isbn+price);
	
	Connection con=null;		
	PreparedStatement pstInsertItem=null;
	ResultSet resultInsertItem=null;		
	try{						
	Class.forName("com.mysql.jdbc.Driver");
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/newlibrary","root","root");
	String	sqlInsertItem="insert into book_details(name,category,pages,edition,publication,price,isbn,author) values('"+name+"','"+category+"','"+pages+"','"+edition+"','"+publication+"','"+price+"','"+isbn+"','"+author+"')";
	pstInsertItem=con.prepareStatement(sqlInsertItem);
	pstInsertItem.executeUpdate();
	out.println("Success fully added");
	}
	catch(ClassNotFoundException e){
		out.println("<b>Driver Class not found Exception: </b>"+e.getMessage());
		
	}
	catch(SQLException e){
		out.println("<b>SQL EXception:</b>"+e.getMessage());
	}
	finally{
		try{
	if(con!=null)
		con.close();
		}
		catch(SQLException e){
			out.println("<br>Connection Closing Exception: </b>"+e.getMessage());
			
		}
	}
	}
}
else
	response.sendRedirect("index.jsp");
}
catch(Exception e){
	out.println(e.getMessage());
}
%>

<form action="addbook.jsp">
<p>Name:<input type="text" name="name"></p>
<p>Category:<input type="text" name="category"></p>
<p>Pages:<input type="text" name="pages"></p>
<p>Edition:<input type="text" name="edition"></p>
<p>Author:<input type="text" name="author"></p>
<p>Publication:<input type="text" name="publication"></p>
<p>ISBN:<input type="text" name="isbn"></p>
<p>Price:<input type="text" name="price"></p>
<input type="submit" value="Submit" name="submit">
</form>
    
    
  </div> <!-- /container -->
</div> <!-- /wrap -->
      
<div id="footer">
      <div class="container">
        <p class="muted credit"></p>
      </div>
</div>



</body>
</html>