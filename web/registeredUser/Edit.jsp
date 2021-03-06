<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsf/core" prefix="f" %>
<%@taglib uri="http://java.sun.com/jsf/html" prefix="h" %>
<f:view>
    <html>
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
            <title>Editar usuario</title>
            <link rel="stylesheet" type="text/css" href="/SITATEC/faces/jsfcrud.css" />
            <!-- Latest compiled and minified CSS -->
            <link rel="stylesheet" type="text/css" href="/SITATEC/faces/bootstrap.min.css">
            <!-- Optional theme -->
            <link rel="stylesheet" type="text/css" href="/SITATEC/faces/bootstrap-theme.min.css">
            <!-- Latest compiled and minified JavaScript -->
            <script src="/SITATEC/faces/bootstrap.min.js"></script>
        </head>
        <body>
        <h:panelGroup id="messagePanel" layout="block">
            <h:messages errorStyle="color: red" infoStyle="color: green" layout="table"/>
        </h:panelGroup>
        <h1>Editing RegisteredUser</h1>
        <h:form>
            <h:panelGrid columns="2">
                <h:outputText value="Id:"/>
                <h:outputText value="#{registeredUser.registeredUser.id}" title="Id" />
                <h:outputText value="Username:"/>
                <h:inputText id="username" value="#{registeredUser.registeredUser.username}" title="Username" required="true" requiredMessage="The username field is required." />
                <h:outputText value="Password:"/>
                <h:inputText id="password" value="#{registeredUser.registeredUser.password}" title="Password" required="true" requiredMessage="The password field is required." />
                <h:outputText value="FirstName:"/>
                <h:inputText id="firstName" value="#{registeredUser.registeredUser.firstName}" title="FirstName" />
                <h:outputText value="LastName:"/>
                <h:inputText id="lastName" value="#{registeredUser.registeredUser.lastName}" title="LastName" />
                <h:outputText value="MobilePhone:"/>
                <h:inputText id="mobilePhone" value="#{registeredUser.registeredUser.mobilePhone}" title="MobilePhone" />
                <h:outputText value="Phone:"/>
                <h:inputText id="phone" value="#{registeredUser.registeredUser.phone}" title="Phone" />
                <h:outputText value="Address:"/>
                <h:inputText id="address" value="#{registeredUser.registeredUser.address}" title="Address" />

            </h:panelGrid>
            <br />
            <h:commandLink action="#{registeredUser.edit}" value="Save">
                <f:param name="jsfcrud.currentRegisteredUser" value="#{jsfcrud_class['com.sitatec.model.util.JsfUtil'].jsfcrud_method['getAsConvertedString'][registeredUser.registeredUser][registeredUser.converter].jsfcrud_invoke}"/>
            </h:commandLink>
            <br />
            <br />
            <h:commandLink action="#{registeredUser.detailSetup}" value="Show" immediate="true">
                <f:param name="jsfcrud.currentRegisteredUser" value="#{jsfcrud_class['com.sitatec.model.util.JsfUtil'].jsfcrud_method['getAsConvertedString'][registeredUser.registeredUser][registeredUser.converter].jsfcrud_invoke}"/>
            </h:commandLink>
            <br />
            <h:commandLink action="#{registeredUser.listSetup}" value="Show All RegisteredUser Items" immediate="true"/>
            <br />
            <br />
            <h:commandLink value="Index" action="welcome" immediate="true" />

        </h:form>
        </body>
    </html>
</f:view>
