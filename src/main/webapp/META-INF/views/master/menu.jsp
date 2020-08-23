<%--
- menu.jsp
-
- Copyright (c) 2019 Rafael Corchuelo.
-
- In keeping with the traditional purpose of furthering education and research, it is
- the policy of the copyright owner to permit non-commercial use and redistribution of
- this software. It has been tested carefully, but it is not guaranteed for any particular
- purposes.  The copyright owner does not offer any warranties or representations, nor do
- they accept any liabilities with respect to them.
--%>

<%@page language="java" import="acme.framework.helpers.PrincipalHelper,acme.entities.roles.Provider,acme.entities.roles.Consumer"%>

<%@taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@taglib prefix="acme" tagdir="/WEB-INF/tags"%>

<acme:menu-bar code="master.menu.home">
	<acme:menu-left>
		<acme:menu-option code="master.menu.anonymous" access="isAnonymous()">
			<acme:menu-suboption code="master.menu.anonymous.favourite-link" action="http://www.example.com/" />
			<acme:menu-separator/>
			<acme:menu-suboption code="master.menu.anonymous.notice.actives" action="/anonymous/notice/list-active" />
			<acme:menu-separator/>
			<acme:menu-suboption code="master.menu.anonymous.technology" action="/anonymous/technology/list" />
			<acme:menu-suboption code="master.menu.anonymous.technology.orderedByStars" action="/anonymous/technology/list-by-stars" />
			<acme:menu-separator/>
			<acme:menu-suboption code="master.menu.anonymous.tool" action="/anonymous/tool/list" />
			<acme:menu-suboption code="master.menu.anonymous.tool.orderedByStars" action="/anonymous/tool/list-by-stars" />

		</acme:menu-option>

		<acme:menu-option code="master.menu.administrator" access="hasRole('Administrator')">
			<acme:menu-suboption code="master.menu.administrator.notice" action="/administrator/notice/list" />	
			<acme:menu-separator/>
			<acme:menu-suboption code="master.menu.administrator.user-accounts" action="/administrator/user-account/list" />
			<acme:menu-suboption code="master.menu.administrator.configuration" action="/administrator/configuration/show"/>
			<acme:menu-separator />
			<acme:menu-suboption code="master.menu.administrator.shutdown" action="/master/shutdown" />
		</acme:menu-option>

		<acme:menu-option code="master.menu.provider" access="hasRole('Provider')">
			<acme:menu-suboption code="master.menu.provider.favourite-link" action="http://www.example.com/" />
		</acme:menu-option>

		<acme:menu-option code="master.menu.consumer" access="hasRole('Consumer')">
			<acme:menu-suboption code="master.menu.consumer.favourite-link" action="http://www.example.com/" />
		</acme:menu-option>

		<acme:menu-option code="master.menu.authenticated" access="isAuthenticated()">
			<acme:menu-suboption code="master.menu.authenticated.notice.actives" action="/authenticated/notice/list-active" />
			<acme:menu-separator/>
			<acme:menu-suboption code="master.menu.authenticated.technology" action="/authenticated/technology/list" />
			<acme:menu-suboption code="master.menu.authenticated.technology.orderedByStars" action="/authenticated/technology/list-by-stars" />
			<acme:menu-separator/>
			<acme:menu-suboption code="master.menu.authenticated.tool" action="/authenticated/tool/list" />
			<acme:menu-suboption code="master.menu.authenticated.tool.orderedByStars" action="/authenticated/tool/list-by-stars" />
			<acme:menu-separator/>
			<acme:menu-suboption code="master.menu.authenticated.inquiry.actives" action="/authenticated/inquiry/list-active" />
			<acme:menu-separator/>
			<acme:menu-suboption code="master.menu.authenticated.overture.actives" action="/authenticated/overture/list-active" />
			<acme:menu-separator/>
			<acme:menu-suboption code="master.menu.authenticated.challenge.actives" action="/authenticated/challenge/list-active" />
</acme:menu-option>

	</acme:menu-left>

	<acme:menu-right>
		<acme:menu-option code="master.menu.sign-up" action="/anonymous/user-account/create" access="isAnonymous()" />
		<acme:menu-option code="master.menu.sign-in" action="/master/sign-in" access="isAnonymous()" />

		<acme:menu-option code="master.menu.user-account" access="isAuthenticated()">
			<acme:menu-suboption code="master.menu.user-account.general-data" action="/authenticated/user-account/update" />
			<acme:menu-suboption code="master.menu.user-account.become-provider" action="/authenticated/provider/create"
				access="!hasRole('Provider')" />
			<acme:menu-suboption code="master.menu.user-account.provider" action="/authenticated/provider/update"
				access="hasRole('Provider')" />
			<acme:menu-suboption code="master.menu.user-account.become-consumer" action="/authenticated/consumer/create"
				access="!hasRole('Consumer')" />
			<acme:menu-suboption code="master.menu.user-account.consumer" action="/authenticated/consumer/update"
				access="hasRole('Consumer')" />
		</acme:menu-option>

		<acme:menu-option code="master.menu.sign-out" action="/master/sign-out" access="isAuthenticated()" />
	</acme:menu-right>
</acme:menu-bar>

