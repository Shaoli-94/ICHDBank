<%-- 
    Document   : loginView
    Created on : 24 Jul, 2020, 10:48:08 AM
    Author     : XYZ
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags"prefix="spring" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
	"http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>::welcome to ebanking system::</title>
	</head>
	<body leftmargin="0" topmargin="00" marginwidth="0" marginheight="0">
		<table width="775" height="330" border="0" align="center" cellpadding="0" cellspacing="0">
			<tr>
				<td height="30" colspan="2">
				<img src="D:\SPRING_DOC\images\banner1.jpg" width="775" height="144">
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
								<div align="right" style="color:#003366; font-family:Verdana; font-size-adjust:2">
									
									<a href="index.htm">
									Home
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
												<spring:nestedPath path="CUSTOMER">
												<form name="form1" method="post" action="">
													<table width="312" border="0" align="center" cellpadding="5" cellspacing="0">
														<tr bgcolor="#336699">
														<td colspan="2" height="25" valign="top" align="center">
															<p style="color:white; font-size-adjust:2; font-family:Verdana, Arial, Helvetica, sans-serif">Log In
														</p></td>
														</tr>
														<tr bgcolor="#F7F6F2">
														<td width="139" height="35" valign="top">
															<p
style="color:#336699; font-size-adjust:2; font-family:Verdana, Arial, Helvetica, sans-serif">*User Name</p></td>
														<td width="147" valign="top">
														<p>
														<spring:bind path="userName">
																<input type="text" name="${status.expression}" value="${status.value}">
</spring:bind>
													
                                                                                                                                
                                                                                                                                </p></td>
														</tr>
														<tr bgcolor="#F7F6F2">
														<td height="36" valign="top">
															<p style="color:#336699; font-size-adjust:2; font-family:Verdana, Arial, Helvetica, sans-serif">*Password</p></td>
														<td valign="top">
														<p>
															
<spring:bind path="password">
																<input type="password" name="${status.expression}" value="${status.value}">
</spring:bind>
														</p></td>
                                                                                                                
														</tr>
														<tr bgcolor="#F7F6F2">
														<td>&nbsp;</td>
<td><input type="submit" name="Submit" value="Login">&nbsp;&nbsp;<input type="reset" name="reset" value="Clear"></td>
														</tr>
													</table>
												</form>
											</spring:nestedPath>
										</div>
									</td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
			</td></tr>
		</table>
	<%@ include file="footer.jsp"%>
</body>
</html>
