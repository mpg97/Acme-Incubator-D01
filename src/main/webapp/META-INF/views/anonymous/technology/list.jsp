
<%--
- list.jsp
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

<acme:list>
	<acme:list-column code="anonymous.technology.list.label.title" path="title"/>
	<acme:list-column code="anonymous.technology.list.label.sector" path="sectorName"/>
	<acme:list-column code="anonymous.technology.list.label.investorName" path="investorName"/>		
	<acme:list-column code="anonymous.technology.list.label.stars" path="stars"/>		
</acme:list>

