<%-- 
    Document   : fundtransfer
    Created on : 31 Jul, 2020, 12:50:18 PM
    Author     : SHAOLI GHOSH
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>:: Welcome to Online eBanking System ::</title>
    </head>
   <body leftmargin="0" topmargin="00" marginwidth="0" marginheight="0">
       <table width="775" height="330" border="0" align="center" cellpadding="0" cellspacing="0">
           <tr>
               <td height="30" colspan="2">
                   <img src="D:\SPRING_DOC\images\banner1.jpg" width="775" height="144" width="775" height="144">
               </td>
           </tr>
           <tr>
               <td width="102" valign="top">
                   <%@ include file="menu.jsp" %>
               </td>
               <td width="601" valign="top">
                   <table width="596" border="0" align="center" cellpadding="0" cellspacing="8">
                       <tr>
                           <td>
                               <div align="right" style="color:#003366; font-size-adjust:2; font-family:Verdana">
                                   
                                       <a href="index.htm">
                                           Logout
                                       </a>
                                 
             </div>
                           </td>
                       </tr>
                       <tr>
                           <td>
                               <table width="567" border="0" align="center" cellpadding="0" cellspacing="0">
                                   <tr>
                                       <td>
                                           <div align="justify" style="color:#003366; font-size-adjust:2; font-family:Verdana">
                                              <br /><br />
  <spring:nestedPath path="transferaccount">
     <form name="form1" method="post" action="">
         <table width="312" border="0" align="center" cellpadding="5" cellspacing="0">
           <tr bgcolor="#336699">
  		<td colspan="2" height="25" valign="top" align="center"> 		  <p style="color:#336699; font-size-adjust:2; font-family:Verdana, Arial, Helvetica, sans-serif">Transfer Fund
		  </p>
		</td>
     	     </tr>
	     <tr bgcolor="#F7F6F2"><td height="36" valign="top">
		<p style="color:#336699; font-size-adjust:2; font-family:Verdana, Arial, Helvetica, sans-serif">                                                                      
To Account Number
		</p>
		</td>
		<td valign="top">
		<p><spring:bind path="toAccount">
  	<input type="text" name="${status.expression}" 	value="${status.value}" >                                                                       	</spring:bind>
	</p>                                                               	</td></tr>
	<tr bgcolor="#F7F6F2"><td height="36" valign="top">
	<p style="color:#336699; font-size-adjust:2; font-family:Verdana, Arial, Helvetica, sans-serif">Transaction Password
	</p></td>
	<td valign="top">
	<p><spring:bind path="transactionPassword">
	    <input type="password" name="${status.expression}" value="${status.value}" >
	   </spring:bind>
	</p></td>
	</tr>
	<tr bgcolor="#F7F6F2">
	 <td height="36" valign="top">
 	  <p style="color:#336699; font-size-adjust:2; font-family:Verdana, Arial, Helvetica, sans-serif">Amount
	  </p></td>
	 <td valign="top">
	  <p><spring:bind path="amount">
		<input type="text" name="${status.expression}" value="${status.value} ">
	     </spring:bind>
	  </p></td></tr>
	<tr bgcolor="#F7F6F2">
	 <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="submit" name="Submit" value="Transfer Amount">
	</td>
	<td><input type="reset" name="reset" value="Clear"></td>
	</tr>
   </table>
   </form>
     </spring:nestedPath></div></td></tr>
</table>
</td></tr></table></td></tr>
</table>
<%@ include file="footer.jsp" %>
</body>
</html>
