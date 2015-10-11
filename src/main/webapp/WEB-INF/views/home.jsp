<%@ include file="/common/taglibs.jsp"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Home</title>

<script src="https://code.jquery.com/jquery-2.1.3.min.js"></script>
<link type="text/css" href="<%=request.getContextPath()%>/resources/bootstrap/css/bootstrap.css" rel="stylesheet" />
<script src="<%=request.getContextPath()%>/resources/bootstrap/js/bootstrap.js"></script>

</head>
<body>

    <nav class="navbar navbar-default">
        <div class="container-fluid">
            <!--             Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                    data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#">MySpring4App</a>
            </div>

            <!--             Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li class="active"><a href="<c:url value="/home"/>">Home <span class="sr-only">(current)</span></a></li>
                </ul>
                <p class="navbar-text navbar-right">
                    Signed in as <a href="#" class="navbar-link">${pageContext.request.remoteUser}</a>
                <form class="navbar-form pull-right" action="logout" method="post">
                    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" /> <input type="submit"
                        value="Log out" />
                </form>

            </div>
            <!-- .navbar-collapse -->
        </div>
        <!-- .container-fluid -->
    </nav>

    <p>This is a basic template for: Spring MVC + Spring Security + Java Config + Bootstrap - by @munilvc
</body>
</html>