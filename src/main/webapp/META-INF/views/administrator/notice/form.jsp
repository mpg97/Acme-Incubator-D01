<%--
- form.jsp
-
- Copyright (c) 2019 Rafael Corchuelo.
-
- In keeping with the traditional purpose of furthering education and research, it is
- the policy of the copyright owner to permit non-commercial use and redistribution of
- this software. It has been tested carefully, but it is not guaranteed for any particular
- purposes.  The copyright owner does not offer any warranties or representations, nor do
- they accept any liabilities with respect to them.
--%>

<%@page language="java"%>

<%@taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="acme" tagdir="/WEB-INF/tags"%>


<acme:form>

	<jstl:if test="${command = 'create'}">
		<acme:form-url code="administrator.notice.form.label.header" path="header" />
		<acme:form-textbox code="administrator.notice.form.label.title" path="title" />
		<acme:form-textbox code="administrator.notice.form.label.body" path="body" />
		<acme:message code="administrator.notice.links.text" />
		<acme:form-textbox code="administrator.notice.form.label.links" path="link" />
		<acme:form-moment code="administrator.notice.form.label.deadline" path="deadline" />
		<acme:form-checkbox code="administrator.notice.label.sure" path="sure" />
		<acme:form-submit test="${command == 'create'}" code="administrator.notice.form.button.create"
			action="/administrator/notice/create" />
	</jstl:if>
	<jstl:if test="${command != 'create'}">
		<acme:form-url code="administrator.notice.form.label.header" path="header" readonly="true" />
		<acme:form-textbox code="administrator.notice.form.label.title" path="title" readonly="true" />
		<acme:form-textbox code="administrator.notice.form.label.body" path="body" readonly="true" />
		<acme:message code="administrator.notice.links.text" readonly="true" />
		<acme:form-textbox code="administrator.notice.form.label.links" path="link" readonly="true" />
		<acme:form-moment code="administrator.notice.form.label.deadline" path="deadline" readonly="true" />
		<acme:form-checkbox code="administrator.notice.label.sure" path="sure" readonly="true" />

	</jstl:if>

	<acme:form-return code="administrator.notice.form.button.return" />
</acme:form>



