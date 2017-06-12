<%@page session="false" contentType="text/html" pageEncoding="ISO-8859-1" import="java.util.*,javax.portlet.*,com.ibm.mydevportlet.*" %>
<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet"%>        
<%@taglib uri="http://www.ibm.com/xmlns/prod/websphere/portal/v6.1/portlet-client-model" prefix="portlet-client-model" %>        
<portlet:defineObjects/>
<portlet-client-model:init>
      <portlet-client-model:require module="ibm.portal.xml.*"/>
      <portlet-client-model:require module="ibm.portal.portlet.*"/>   
</portlet-client-model:init> 
<%
	com.ibm.mydevportlet.MyDevPortletSessionBean sessionBean = (com.ibm.mydevportlet.MyDevPortletSessionBean)renderRequest.getPortletSession().getAttribute(com.ibm.mydevportlet.MyDevPortlet.SESSION_BEAN);
%>
 

<DIV style="margin: 6px">

<H3 style="margin-bottom: 3px">Welcome!</H3>
This is a sample view mode page.  You have to edit this page to customize it for your own use.<BR>
<H3 style="margin-bottom: 3px">Order entry</H3>
This is a sample form to test action handling.

<DIV style="margin: 12px; margin-bottom: 36px">
<% /******** Start of sample code ********/ %>
<%
	String formText = sessionBean.getFormText();
	if( formText.length()>0 ) {
		%>
		Order details for order id "<%=formText%>" should be displayed here.
		<%
	}
	%>
	<FORM method="POST" action="<portlet:actionURL/>">
		<LABEL  for="<%=com.ibm.mydevportlet.MyDevPortlet.FORM_TEXT%>">Enter Order id:</LABEL><BR>
		<INPUT name="<%=com.ibm.mydevportlet.MyDevPortlet.FORM_TEXT%>" type="text"/>
		<INPUT name="<%=com.ibm.mydevportlet.MyDevPortlet.FORM_SUBMIT%>" type="submit" value="Submit"/>
	</FORM>
<% /******** End of sample code *********/ %>
</DIV>

</DIV>