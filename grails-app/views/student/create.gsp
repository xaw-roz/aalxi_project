<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>the profie creator</title>
</head>
<body>
<g:form controller="student" action="save" >
    <label for="name">Name</label>
    <g:textField name="name" value=""/>
    <br/>
    <label for="roll">Roll</label>
    <g:textField name="roll" value=""/>
    <br/>
    <label for="phone_number">Phone number</label>
    <g:textField name="phone_number" value=""/>

    <label for="section">Settion</label>
    <g:select name="section" from="${['A','B','C']}" value=""/>
    <br/>
    <label for="percentage">Percentage</label>
    <g:textField name="percentage" value="Enter the percentage" />



    <label for="subject">Subject</label>
    <g:select name="subject" from="${subjects.name}" value=""/>
    <br/>
    <g:actionSubmit  value="Save" />
    %{--<g:if test="${bean.hasErrors}"><g:renderErrors bean="${student}" as="list" field="title"/></g:if>--}%


</g:form>
</body>
</html>

