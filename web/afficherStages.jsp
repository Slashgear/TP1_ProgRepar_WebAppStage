<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Affichage de tous les stages e</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="//www.fuelcdn.com/fuelux/3.5.0/css/fuelux.min.css">
    <link rel="stylesheet" href="css/style.css"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
</head>
<body class="fuelux">
<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar"
                    aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="index.jsp">Gestion des Stages HIGH TECH</a>
        </div>
        <div id="navbar" class="collapse navbar-collapse">
            <ul class="nav navbar-nav">
            </ul>
        </div>
        <!--/.nav-collapse -->
    </div>
</nav>
<div class="container contenu">
    <div class="row">
        <div class="col-lg-12">
            <div class="panel panel-info">
                <div class="panel-heading">Liste des Stages</div>
                <div class="panel-body">

                    <table class="table table-condensed table-striped table-bordered">
                        <tr>
                            <th> Numero</th>
                            <th> Libellé</th>
                            <th> Date début</th>
                            <th> Date fin</th>
                            <th>Nombre de places</th>
                            <th>Nombre d'inscrits</th>
                            <th>Options</th>
                        </tr>

                        <c:forEach items="${liste}" var="item">
                            <tr>
                                <td>${item.id}</td>
                                <td>${item.libelle}</td>
                                <td>
                                    <fmt:formatDate type="both" dateStyle="short"
                                                    timeStyle="short" value="${item.datedebut}" pattern="dd/MM/yyyy"/>
                                </td>
                                <td>
                                    <fmt:formatDate type="both" dateStyle="short"
                                                    timeStyle="short" value="${item.datefin}" pattern="dd/MM/yyyy"/>
                                </td>

                                <td>${item.nbplaces}</td>
                                <td>${item.nbinscrits}</td>
                                <td>
                                    <!-- TODO Gérer fonctionnel derrière  les boutons -->
                                    <a title="Supprimer" href="Controleur?action=modifierStage&id=${item.id}"><button type="button" class="btn btn-info">Modifier</button></a>
                                    <a title="Supprimer" href="Controleur?action=supprStage&id=${item.id}"><button type="button" class="btn btn-danger">Supprimer</button></a>
                                </td>
                            </tr>
                        </c:forEach>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>

<script src="http://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script src="//www.fuelcdn.com/fuelux/3.5.0/js/fuelux.min.js"></script>
</body>
</html>
