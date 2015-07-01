<%--

    Copyright © 2014 Instituto Superior Técnico

    This file is part of FenixEdu Spaces.

    FenixEdu Spaces is free software: you can redistribute it and/or modify
    it under the terms of the GNU Lesser General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    FenixEdu Spaces is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU Lesser General Public License for more details.

    You should have received a copy of the GNU Lesser General Public License
    along with FenixEdu Spaces.  If not, see <http://www.gnu.org/licenses/>.

--%>
<!DOCTYPE html> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<spring:url var="baseUrl" value="/static/fenix-spaces"/>

<%-- <spring:url var="portalUrl" value="/bennu-portal"/> --%>

<link type="text/css" rel="stylesheet" href="${baseUrl}/css/dialogs.min.css"></link>
<spring:url var="baseUrl" value="/static/fenix-spaces"/>
${portal.angularToolkit()}
<script type="text/javascript" src="${baseUrl}/js/angular-sanitize.min.js"></script>
<script type="text/javascript" src="${baseUrl}/js/angular-translate.min.js"></script>
<script type="text/javascript" src="${baseUrl}/js/angular-translate-loader-static-files.min.js"></script>

<script type="text/javascript" src="${baseUrl}/js/dialogs.min.js"></script>
<script type="text/javascript" src="${baseUrl}/js/ui-bootstrap.min.js"></script>

<form:form action="" modelAttribute="filterBean">
<ul class="list-group">
	<c:forEach var="asd" items="${filterBean.classifications}">
	<li class="list-group-item">
		<form:checkbox path="allocatableClassifications" value="${asd.externalId}" label=""/>
		<c:out value="${asd.nameWithCode}"/>
	</c:forEach>
	</ul>
	<button type="submit" class="btn btn-default"><spring:message code="label.submit"/></button>
</form:form>

