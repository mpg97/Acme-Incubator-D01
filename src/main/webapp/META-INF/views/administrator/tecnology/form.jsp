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
	<acme:form-textbox code="administrator.tecnology.form.label.title" path="title" />
	<acme:form-textbox code="administrator.tecnology.form.label.sector" path="sector" />
	<acme:form-textbox code="administrator.tecnology.form.label.inventor" path="inventor"/>
	<acme:form-textbox code="administrator.tecnology.form.label.description" path="description"/>
	<acme:form-url code="administrator.tecnology.form.label.web" path="web"/>
	<acme:form-textbox code="administrator.tecnology.form.label.email" path="email"/>
	
	<acme:form-checkbox code="anonymous.tecnology.label.openSource" path="openSource"/>
	
	<acme:form-submit test="${command == 'show'}" code="administrator.tecnology.form.button.update"
		action="/administrator/tecnology/update" />
	<acme:form-submit test="${command == 'show'}" code="administrator.tecnology.form.button.delete"
		action="/administrator/tecnology/delete" />
	<acme:form-submit test="${command == 'create'}" code="administrator.tecnology.form.button.create"
		action="/administrator/tecnology/create" />
	<acme:form-submit test="${command == 'update'}" code="administrator.tecnology.form.button.update"
		action="/administrator/tecnology/update" />
	<acme:form-submit test="${command == 'delete'}" code="administrator.tecnology.form.button.delete"
		action="/administrator/tecnology/delete " />

	<acme:form-return code="administrator.tecnology.form.button.return" />
</acme:form>
