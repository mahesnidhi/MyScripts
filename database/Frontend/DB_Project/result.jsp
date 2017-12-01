<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">



<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
  <head>
    <title>Result</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="title" content="NAPGER" />
    <meta name="description" content="Site description here" />
    <meta name="keywords" content="keywords here" />
    <meta name="language" content="en" />
    <meta name="subject" content="Site subject here" />
    <meta name="robots" content="All" />
    <meta name="copyright" content="Your company" />
    <meta name="abstract" content="Site description here" />
    <meta name="MSSmartTagsPreventParsing" content="true" />
    <link rel="stylesheet" type="text/css" href="css/styles1.css" />
  </head>
  <body> 
    <div id="wrapper"> 
      <div id="bg"> 
        <div id="header"></div>  
        <div id="page"> 
          <div id="container"> 
            <!-- banner -->  
            <div id="banner"></div>  
            <!-- end banner -->  
            <!--  content -->  
            <div id="content"> 
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %> 
<style type="text/css"> 
p.test
{
width:37em; 
border:0px solid #000000;
word-wrap:break-word;
}
</style>



<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
</head>
<body>
<h2><center>Result of Your Search</center></h2><br />

<%
String searchoption=request.getParameter ("searchoption");

%>

<%

try {

       Connection connection = null;
       Statement statement = null;
       ResultSet rs = null;
       String rp ="select * from lsayana.bookinghistory where '"+searchoption+"'=to_date(to_char(pickuptime,'DD-Month-YY'))" ;   //user selection
	     
	   Class.forName("oracle.jdbc.driver.OracleDriver").newInstance(); 
       connection = DriverManager.getConnection("jdbc:oracle:thin:@csdb.csc.villanova.edu" +":1521:csdb","nmaheshw","FL01642259");

       statement = connection.createStatement();

       
       rs = statement.executeQuery(rp);

       
       while (rs.next())
       
        {%>
		<center>
		
		<font face= "Courier New" size="2"><table  width="95%" border="5" cellspacing="5">
							
					
							<tr>
							   <td><div align="center"><b>ID</div></td>
							   <td><div align="left"><%=rs.getString("ID")%></div></td>
							 </tr>
                             
							<tr>
							<td><div align="center"><b>TYPE</div></td>
							<td><div align="left"><%=rs.getString("TYPE")%></div></td>
							                            
							<!-- <tr>
							   <td><div align="center"><b>BOOKINGTIME</div></td>
							   <td><div align="left"><%=rs.getString("BOOKINGTIME")%></div></td>
							 </tr>

							 <tr>
							   <td><div align="center"><b>CANCELTIME</div></td>
							   <td><div align="left"><%=rs.getString("CANCELTIME")%></div></td>
							 </tr> -->

							   <tr>
							   <td><div align="center"><b>PICKUPTIME</div></td>
							   <td><div align="left"><%=rs.getString("PICKUPTIME")%></div></td>
							 </tr>

							  <tr>
							   <td><div align="center"><b>DROPTIME</div></td>
							   <td><div align="left"><%=rs.getString("DROPTIME")%></div></td>
							 </tr>

							 <tr>
							   <td><div align="center"><b>CARID</div></td>
							   <td><div align="left"><%=rs.getString("CARID")%></div></td>
							 </tr>
                            
							 
							
							 
						                  <tr>
							   <td><div align="center"><b>CUSTID</div></td>
							   <td><div align="left"><%=rs.getString("CUSTID")%></div></td>
							   </div></td>
							 </tr>
							 
							  <tr>
							   <td><div align="center"><b>CODE</div></td>
							   <td><div align="left"><%=rs.getString("CODE")%></div></td>
							   </div></td>
							 </tr> 

							 
							 
               		</table></font><br />
			<%}%> 
			
			  
      

     <%  connection.close();  
     }
    
     catch (Exception ex)

      {
        out.println(ex);
      }

%>
  
               
              </div>  
               
            </div>  
          <!-- end container --> 
        </div>  
        <div id="footerWrapper"> 
          <div id="footer"> 
<!--<font color=#ffffff>Web template created with <a href="http://www.dotemplate.com">doTemplate</font></a> </font>-->
          </div> 
        </div> 
      </div> 
    </div> 

</body>
</html>