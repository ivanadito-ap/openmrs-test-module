<%@ include file="/WEB-INF/template/include.jsp"%>

<%@ include file="/WEB-INF/template/header.jsp"%>

<h2><spring:message code="myfirstmodule.title" /></h2>

<br/>
<p>Showing ${fn:length(users)} users.</p>
<br/>

<table>
  <tr>
   <th>User Id</th>
   <th>Username</th>
  </tr>
  <c:forEach var="user" items="${users}" varStatus="row">
      <tr style="background:${row.index % 2 == 0 ? '#f5f5f5' : 'white'}">
        <td>${user.userId}</td>
        <td>${user.systemId}</td>
        <td>${user.personName}</td>
        <td>${user.userRoles}</td>   <!-- NOTE: either this or loop over ${user.roles} -->
        <td>${user.dateCreated}</td>
      </tr>		
  </c:forEach>
</table>

<div>Hello world! This is my first <b>OpenMRS</b> module!</div>

<%@ include file="/WEB-INF/template/footer.jsp"%>
