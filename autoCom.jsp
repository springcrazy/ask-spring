<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
    <head>
        <script type="text/javascript" src="http://code.jquery.com/jquery-1.10.2.js"> </script>
        <script type="text/javascript" src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"> </script>
        <link rel="stylesheet" href="http://code.jquery.com/ui/1.10.2/themes/smoothness/jquery-ui.css" />

        <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/autoComplete.js"></script>
    </head>
    <body>
        <form>
            <div class="ui-widget">
                <label for="employee">Employee: </label>
                <input id="employee" />
            </div>
        </form>
    </body>
</html>