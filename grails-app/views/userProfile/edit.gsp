<%@ page import="org.weceem.auth.*" %>

<html>
    <head>
        <meta name="layout" content="weceemadmin"/>
        <link rel="stylesheet" href="${g.resource(dir:'_weceem/css', file:'admin.css').encodeAsHTML()}"/>
        <title><g:message code="user.title.profile"/></title>
    </head>
    <body>
        <nav:set path="plugin.weceem.weceem_menu/administration" scope="plugin.weceem.weceem_menu"/>
        <div class="container">
          <div class="row">
            <div class="col-md-12 col-xs-12">
                <!--ui-state-error -->
            </div>
          </div>

          <g:form controller="userProfile" action="update" method="POST">
            <input type="hidden" name="id" value="${CMSUserInstance?.id}"/>
            <input type="hidden" name="returnURL" value="${returnURL}"/>

            <div class="row">
              <div class="col-md-12 col-xs-12">
                <h1><g:message code="user.title.profile" encodeAs="HTML"/></h1>
              </div>
            </div>

            <div class="row">
              <div class="col-md-12 col-xs-12">
                <g:render template="profilefields"/>
              </div>
            </div>

            <div class="row">
              <div class="col-md-12 col-xs-12">
                <g:actionSubmit class="btn btn-primary" action="update"
                            value="${message(code: 'command.save', encodeAs:'HTML')}"/>
                <g:actionSubmit class="btn btn-default" action="back"
                            value="${message(code: 'command.back', encodeAs:'HTML')}"/>
              </div>
            </div>

          </g:form>

          <div class="row">
            <div class="col-md-12 col-xs-12">
              <h2>Your content</h2>
              <ul>
                <g:each in="${recentContent}" var="c">
                    <li><g:link controller="wcmEditor" action="edit" id="${c.id}">${c.title.encodeAsHTML()}</g:link>
                </g:each>
              </ul>

              <g:link action="changePassword">Change your password</g:link>
            </div>
          </div>
        </div>
    </body>
</html>
