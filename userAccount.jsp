<%-- 
    Document   : userAccount
    Created on : 31 Jul, 2020, 12:48:45 PM
    Author     : SHAOLI GHOSH
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; 
        charset=UTF-8">
        <title>:: Welcome to eBanking System ::</title>
    </head>
    <body leftmargin="0" topmargin="00" marginwidth="0" 
    marginheight="0">
    <table width="775" height="330" border="0" align="center" 
    cellpadding="0" cellspacing="0">
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
        <table width="596" border="0" align="center" cellpadding="0" 
        cellspacing="8">
        <tr>
            <td>
                <div align="right" style="color:#003366; font-size-adjust:2; font-family:Verdana">
                <a href="fundtransfer.htm">Transfer Fund</a>
                &nbsp;||&nbsp;&nbsp;
                <a href="index.htm">
                    LogOut
              </a>
                
                </div>
            </td>
         </tr>
         <tr>
         <td>
         <table width="567" border="0" align="center" cellpadding="0" 
         cellspacing="0">
         <tr>
             <td>
             <div align="justify" style="color:#003366; font-size-adjust:2; font-family:Verdana">
            
             <br /><br />
             ${helloMessage}
           
             </div>
             </td>
             </tr>
             <tr>
          <td>
          <div align="justify" style="color:#003366; font-size-adjust:2; font-family:Verdana">
   
          <br /><br />
          ${accountNumber}
        
          </div>
          </td>
          </tr>
          <tr>
          <td>
              
          <div align="justify" style="color:#003366; font-size-adjust:2; font-family:Verdana">
          
          <br /><br />
          ${accountBalance}
     
          </div>
          </td>
          </tr>
          </table>
          </td>
          </tr>
          </table>
          </td>
          </tr>
       </table>
<%@ include file="footer.jsp" %>
</body>
</html>

