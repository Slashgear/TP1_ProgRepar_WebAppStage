<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE HTML PUBLIC "-//IETF//DTD HTML//EN">
<html>
<head>
    <title>JSP Error PAGE</title>
</head>

<body>
<h1>JSP Error PAGE</h1>

An error occured. If you feel this to be a real problem,
you can contact the author of the page that caused the error.

<%@ page isErrorPage="true"  %>

<%
    if (exception == null) {
        out.println("<p>Sorry no exception<p>");
    }
    else {

%>
<p>
    The name of the exception was:
        <%= exception.toString() %>
<p>
    The message of the exception was:
        <%= exception.getMessage() %>
<p>

    The stack trace was:<br>
	 <pre>
    <%
            // damn ugly Java, CLOS was an OO language not this faschist crap.
            java.io.PrintWriter outstream = new java.io.PrintWriter(out);
            exception.printStackTrace(outstream);
        }
    %>
    </pre>
<hr>
<address><a href="mailto:Daniel.Scheider@tecfa.unige.ch">Daniel K. Schneider</a></address>
<!-- Created: Thu Jan 27 18:22:13 MET 2000 -->
<!-- hhmts start -->
Last modified: Thu Jan 27 18:33:53 MET 2000
<!-- hhmts end -->
</body>
</html>