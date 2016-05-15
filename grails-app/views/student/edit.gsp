<!DOCTYPE html>




<html>
<head>
    <meta name="layout" content="main"/>
    <title>the profie creator</title>
</head>
<body>
<g:form method="post" controller="student" action="show" id="${student.id}">
    <label for="name">Name</label>
    <g:textField name="name" value="${student.name}"/>
    <br/>
    <label for="roll">Roll</label>
    <g:textField name="roll" value="${student.roll}"/>
    <br/>
    <label for="phone_number">Phone number</label>
    <g:textField name="phone_number" value="${student.phone_number}"/>

    <label for="section">Settion</label>
    <g:select name="section" from="${['A','B','C']}" value="${student.section}"/>
    <br/>
    <label for="percentage">Percentage</label>
    <g:textField name="percentage" value="${student.percentage}" />


    <label for="subject">Subject</label>
    <g:select name="subject" from="${subjects.name}" value="${student.Subject.name}"/>
    <br/>
    <g:actionSubmit class="save" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" />

</g:form>

</body>
</html>





%{--
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'student.label', default: 'Student')}" />
        <title><g:message code="default.edit.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#edit-student" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
                <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
            </ul>
        </div>
        <div id="edit-student" class="content scaffold-edit" role="main">
            <h1><g:message code="default.edit.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${this.student}">
            <ul class="errors" role="alert">
                <g:eachError bean="${this.student}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                </g:eachError>
            </ul>
            </g:hasErrors>
            <g:form resource="${this.student}" method="PUT">
                <g:hiddenField name="version" value="${this.student?.version}" />
                <fieldset class="form">
                    <f:all bean="student"/>
                </fieldset>
                <fieldset class="buttons">
                    <input class="save" type="submit" value="${message(code: 'default.button.update.label', default: 'Update')}" />
                </fieldset>
            </g:form>
        </div>
    </body>
</html>
--}%
