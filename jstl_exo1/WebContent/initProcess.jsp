<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>Traitement des données</title>
</head>
<body>
	<p>
		<b>Vous avez renseigné les informations suivantes :</b>
	</p>

	<%-- Parcourt chaque paramètre de la requête --%>
	<%-- Affiche le nom de chaque paramètre. --%>

	<%-- Parcourt la liste des valeurs de chaque paramètre. --%>
	<%-- Affiche chacune des valeurs --%>
	<c:forEach var="parametre" items="${paramValues}">
		<ul>
			<li><b><c:out value="${parametre.key}"></c:out></b>:</li>

			<c:forEach var="values" items="${parametre.value}">
				<c:out value="${values}"></c:out>
			</c:forEach>


		</ul>

	</c:forEach>

	<p>
		<b>Vous vous nommez :</b>
	</p>
	<p>
		<%-- Affiche les valeurs des paramètres nom et prenom --%>
		<c:out value="${param.nom}"></c:out>
		<c:out value="${param.prenom}"></c:out>
	</p>

	<p>
		<b>Vous avez visité les pays suivants :</b>
	</p>
	<p>
		<%-- Teste l'existence du paramètre pays. S'il existe on le traite, 
	    sinon on affiche un message par défaut.--%>
		<c:choose>
			<c:when test="${!empty paramValues.pays}">
				<c:forEach var="pays" items="${paramValues.pays}">
					<c:out value="${pays}"></c:out>
				</c:forEach>
			</c:when>
			<c:otherwise>
				Vous n'avez pas visité de pays parmi la liste proposée.<br />
			</c:otherwise>
		</c:choose>

		<%-- Teste l'existence du paramètre autre. Si des données existent on les traite, 
	    sinon on affiche un message par défaut.--%>
		<c:choose>
			<c:when test="${!empty param.autre}">
				<c:forTokens var="autre" items="${param.autre}" delims=",">
	        		${autre}<br />
				</c:forTokens>
			</c:when>
			<c:otherwise>
				Vous n'avez pas voyagé.<br />
			</c:otherwise>
		</c:choose>
	</p>
</body>
</html>
