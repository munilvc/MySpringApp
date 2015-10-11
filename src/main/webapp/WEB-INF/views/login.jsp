<%@ include file="/common/taglibs.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Login</title>
<script src="https://code.jquery.com/jquery-2.1.3.min.js"></script>
<link type="text/css" href="<%=request.getContextPath()%>/resources/bootstrap/css/bootstrap.css" rel="stylesheet" />
<script src="<%=request.getContextPath()%>/resources/bootstrap/js/bootstrap.js"></script>

</head>
<body>
    <div class="container">
        <div class="row">
            <div class=".col-sm-5 col-sm-offset-4">
                <p>My Spring 4 App - Simple Spring MVC + Spring Security + Bootstrap
                <form action="login" method="POST" class="form-horizontal">
                    <c:if test="${param.error != null}">
                        <p>Invalid username or password.</p>
                    </c:if>
                    <c:if test="${param.logout != null}">
                        <p>You have been logged out.</p>
                    </c:if>
                    <div class="form-group">
                        <label for=username class="control-label col-sm-2">Username:</label>
                        <div class="col-sm-5">
                            <input type="text" id="username" name="username" maxlength="100" class="form-control"
                                placeholder="Enter user name" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="password" class="control-label col-sm-2">Password:</label>
                        <div class="col-sm-5">
                            <input type="password" id="password" name="password" maxlength="100" class="form-control"
                                placeholder="Password" />
                        </div>
                    </div>
                    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-2">
                            <input type="submit" id="Login" name="Login" value="Log in" class="btn btn-default" />
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</body>
</html>