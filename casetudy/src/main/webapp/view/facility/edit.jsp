<%--
  Created by IntelliJ IDEA.
  User: QUANG
  Date: 10/6/2022
  Time: 9:48 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body >
<h1>Facility Management</h1>
<h2>
    <a href="/service">List All Facility</a>
</h2>
<c:if test="${mess!= null}">
    <h3>${mess}</h3>
</c:if>
</center>
<div align="center">
    <form method="post" action="/service?action=edit">
        <table border="1" cellpadding="5">
            <caption>
                <h2>Edit Service</h2>
            </caption>
            <input type="text" name="id" size="30" value="${facility.facilityId}" hidden />
            <tr>
                <th>Service Name:</th>
                <td>
                    <input type="text" name="nameService" size="30" value="${facility.facilityName}" pattern="\p{Lu}\p{Ll}+(\s\p{Lu}\p{Ll}+)*" />
                </td>
            </tr>

            <tr>
                <th>Service Area:</th>
                <td>
                    <input type="text" name="area" value="${facility.area}"  size="30"/>
                </td>
            </tr>
            <tr>
                <th>Service cost:</th>
                <td>
                    <input type="text" name="cost" size="30" value="${facility.cost}" />
                </td>
            </tr>

            <tr>
                <th>Max People:</th>
                <td>
                    <input type="text" name="maxPeople"  size="30" value="${facility.maxPeople}" />
                </td>
            </tr>
            <tr>
                <th>Rent_type:</th>
                <td>
                   <select name="rent_type_id">
                       <c:forEach var="rentType" items="${rentType}">
                           <option value="${rentType.key}" ${rentType.key == facility.rentTypeId?"selected":""}>${rentType.value}</option>
                       </c:forEach>
                   </select>
                </td>
            </tr>
            <c:if test="${type==1}">

                <input type="text" name="facility_type_id"  size="30" value="3" hidden/>

            </c:if>
            <c:if test="${type==2}">
                <input type="text" name="facility_type_id"  size="30" value="2" hidden/>
            </c:if>
            <c:if test="${type==3 }">

                <input type="text" name="facility_type_id"  size="30" value="1" hidden/>

            </c:if>
            <c:if test="${type==2 or type==3}">
                <tr>
                    <th>Standard Room:</th>
                    <td>
                        <input type="text" name="standardRoom"  size="30" value="${facility.standardRoom}" />
                    </td>
                </tr>
                <tr>
                    <th>Description_other_convenience:</th>
                    <td>
                        <input type="text" name="description_other_convenience"  size="30" value="${facility.descriptionOtherConvenience}"/>
                    </td>
                </tr>

                <tr>
                    <th>number_of_floors:</th>
                    <td>
                        <input type="text" name="number_of_floors"  size="30" value="${facility.numberOfFloors}"/>
                    </td>
                </tr>
            </c:if>
            <c:if test="${type==3}">
                <tr>
                    <th>pool_area:</th>
                    <td>
                        <input type="text" name="pool_area"  size="30" value="${facility.poolArea}" />
                    </td>
                </tr>
            </c:if>
            <c:if test="${type!=3}">
                <input type="text" name="pool_area"  size="30" value="0" hidden/>
            </c:if>
            <c:if test="${type==1}">
                <tr>
                    <th>facility_free:</th>
                    <td>
                        <input  type="text" name="facility_free"  size="30"   value="${facility.facilityFree}" />
                    </td>

                    <input type="hidden" name="standardRoom"  size="30" value="" hidden/>


                    <input type="hidden" name="description_other_convenience"  size="30" value="" hidden/>


                    <input type="hidden" name="number_of_floors"  size="30" value="0" hidden/>
                </tr>
            </c:if>
            <c:if test="${type!=1}">
                <td>
                    <input  type="text" name="facility_free"  size="30" value="" hidden />
                </td>
            </c:if>
            <tr>
                <td colspan="2" align="center">
                    <input type="submit" value="Save"/>
                </td>
            </tr>
        </table>
    </form>
</div>
</body>
</html>