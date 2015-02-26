<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Ajout d'un stage </title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="//www.fuelcdn.com/fuelux/3.5.0/css/fuelux.min.css">
    <link rel="stylesheet" href="css/style.css"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
    <script language=javascript>
        function verif() {
            if (document.getElementById("id").value == "" ||
                    document.getElementById("libelle").value == "" ||
                    document.getElementById("datedebut").value == "" ||
                    document.getElementById("datefin").value == "") {
                alert("Un des champs n'est pas rempli !");
                return false;
            }
            else
                return true;
        }
        function Chargement() {
            var obj = document.getElementById("id_erreur");
            if (obj.value != '')
                alert('Erreur signalée  : "' + obj.value + "'");
        }
    </script>
</head>
<body class="fuelux" onLoad="Chargement();">
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
        <div class="col-xs-4 pull-right">
            <form class="navbar-form" role="form" method="post" action="Controleur?action=rechercheStage">
                <div class="search input-group" role="search" id="mySearch">
                    <input id="mySearchValue" type="search" class="form-control" name="search"
                           placeholder="Rechercher un Stage"/>
                              <span class="input-group-btn">
                                <button class="btn btn-default" type="button">
                                    <span class="glyphicon glyphicon-search"></span>
                                    <span class="sr-only">Rechercher un Stage</span>
                                </button>
                              </span>
                </div>
            </form>
        </div>
        <!--/.nav-collapse -->
    </div>
</nav>
<div class="container contenu">
    <div class="row">
        <div class="col-lg-6">
            <div class="panel panel-info">
                <div class="panel-heading">Formulaire d'ajout d'un stage</div>
                <div class="panel-body">
                    <input type="hidden" name="uneErreur" value="${MesErreurs}" id="id_erreur">

                    <form role="form" method="post" action="Controleur?action=ajoutStage" onsubmit="return verif();">

                        <input type="hidden" name="type" value="ajout" id="type"/>
                        <input type="hidden" name="action" value="ajoutStage"/>

                        <div class="well well-sm"><strong><span class="glyphicon glyphicon-asterisk"></span>Champs
                            requis</strong></div>
                        <div class="form-group">
                            <label for="id">Numéro</label>

                            <div class="input-group">
                                <input type="text" class="form-control" name="id" value="${stage.id}" id="id"
                                       required>
                                <span class="input-group-addon"><span class="glyphicon glyphicon-asterisk"></span></span>

                            </div>
                        </div>
                        <div class="form-group">
                            <label for="libelle">Libellé</label>

                            <div class="input-group">
                                <input type="text" class="form-control" name="libelle" value="${stage.libelle}" id="libelle"
                                       required>
                                <span class="input-group-addon"><span class="glyphicon glyphicon-asterisk"></span></span>

                            </div>
                        </div>
                        <div class="form-group">
                            <label for="DateDebutInput">Date de debut</label>

                            <div class="datepicker" id="DateDebut">
                                <div class="input-group">
                                    <input class="form-control" id="DateDebutInput" name="datedebut" type="text"/>

                                    <div class="input-group-btn">
                                        <button type="button" class="btn btn-default dropdown-toggle"
                                                data-toggle="dropdown">
                                            <span class="glyphicon glyphicon-calendar"></span>
                                            <span class="sr-only">Toggle Calendar</span>
                                        </button>
                                        <div class="dropdown-menu dropdown-menu-right datepicker-calendar-wrapper"
                                             role="menu">
                                            <div class="datepicker-calendar">
                                                <div class="datepicker-calendar-header">
                                                    <button type="button" class="prev"><span
                                                            class="glyphicon glyphicon-chevron-left"></span><span
                                                            class="sr-only">Previous Month</span></button>
                                                    <button type="button" class="next"><span
                                                            class="glyphicon glyphicon-chevron-right"></span><span
                                                            class="sr-only">Next Month</span></button>
                                                    <button type="button" class="title">
                                                <span class="month">
                                                  <span data-month="0">Janvier</span>
                                                  <span data-month="1">Février</span>
                                                  <span data-month="2">Mars</span>
                                                  <span data-month="3">Avril</span>
                                                  <span data-month="4">Mai</span>
                                                  <span data-month="5">Juin</span>
                                                  <span data-month="6">Juillet</span>
                                                  <span data-month="7">Août</span>
                                                  <span data-month="8">Septembre</span>
                                                  <span data-month="9">Octobre</span>
                                                  <span data-month="10">Novembre</span>
                                                  <span data-month="11">Decembre</span>
                                                </span> <span class="year"></span>
                                                    </button>
                                                </div>
                                                <table class="datepicker-calendar-days">
                                                    <thead>
                                                    <tr>
                                                        <th>Di</th>
                                                        <th>Lu</th>
                                                        <th>Ma</th>
                                                        <th>Me</th>
                                                        <th>Je</th>
                                                        <th>Ve</th>
                                                        <th>Sa</th>
                                                    </tr>
                                                    </thead>
                                                    <tbody></tbody>
                                                </table>
                                                <div class="datepicker-calendar-footer">
                                                    <button type="button" class="datepicker-today">Aujourd'hui</button>
                                                </div>
                                            </div>
                                            <div class="datepicker-wheels" aria-hidden="true">
                                                <div class="datepicker-wheels-month">
                                                    <h2 class="header">Mois</h2>
                                                    <ul>
                                                        <li data-month="0">
                                                            <button type="button">Jan</button>
                                                        </li>
                                                        <li data-month="1">
                                                            <button type="button">Fev</button>
                                                        </li>
                                                        <li data-month="2">
                                                            <button type="button">Mar</button>
                                                        </li>
                                                        <li data-month="3">
                                                            <button type="button">Avr</button>
                                                        </li>
                                                        <li data-month="4">
                                                            <button type="button">Mai</button>
                                                        </li>
                                                        <li data-month="5">
                                                            <button type="button">Juin</button>
                                                        </li>
                                                        <li data-month="6">
                                                            <button type="button">Jui</button>
                                                        </li>
                                                        <li data-month="7">
                                                            <button type="button">Aoû</button>
                                                        </li>
                                                        <li data-month="8">
                                                            <button type="button">Sep</button>
                                                        </li>
                                                        <li data-month="9">
                                                            <button type="button">Oct</button>
                                                        </li>
                                                        <li data-month="10">
                                                            <button type="button">Nov</button>
                                                        </li>
                                                        <li data-month="11">
                                                            <button type="button">Dec</button>
                                                        </li>
                                                    </ul>
                                                </div>
                                                <div class="datepicker-wheels-year">
                                                    <h2 class="header">Année</h2>
                                                    <ul></ul>
                                                </div>
                                                <div class="datepicker-wheels-footer clearfix">
                                                    <button type="button" class="btn datepicker-wheels-back"><span
                                                            class="glyphicon glyphicon-arrow-left"></span><span
                                                            class="sr-only">Return to Calendar</span>
                                                    </button>
                                                    <button type="button" class="btn datepicker-wheels-select">
                                                        Selectionner <span
                                                            class="sr-only">Mois et années</span></button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="DateFinInput">Date de debut</label>

                            <div class="datepicker" id="DateFin">
                                <div class="input-group">
                                    <input class="form-control" id="DateFinInput" name="datefin" type="text"/>

                                    <div class="input-group-btn">
                                        <button type="button" class="btn btn-default dropdown-toggle"
                                                data-toggle="dropdown">
                                            <span class="glyphicon glyphicon-calendar"></span>
                                            <span class="sr-only">Toggle Calendar</span>
                                        </button>
                                        <div class="dropdown-menu dropdown-menu-right datepicker-calendar-wrapper"
                                             role="menu">
                                            <div class="datepicker-calendar">
                                                <div class="datepicker-calendar-header">
                                                    <button type="button" class="prev"><span
                                                            class="glyphicon glyphicon-chevron-left"></span><span
                                                            class="sr-only">Previous Month</span></button>
                                                    <button type="button" class="next"><span
                                                            class="glyphicon glyphicon-chevron-right"></span><span
                                                            class="sr-only">Next Month</span></button>
                                                    <button type="button" class="title">
                                                <span class="month">
                                                  <span data-month="0">Janvier</span>
                                                  <span data-month="1">Février</span>
                                                  <span data-month="2">Mars</span>
                                                  <span data-month="3">Avril</span>
                                                  <span data-month="4">Mai</span>
                                                  <span data-month="5">Juin</span>
                                                  <span data-month="6">Juillet</span>
                                                  <span data-month="7">Août</span>
                                                  <span data-month="8">Septembre</span>
                                                  <span data-month="9">Octobre</span>
                                                  <span data-month="10">Novembre</span>
                                                  <span data-month="11">Decembre</span>
                                                </span> <span class="year"></span>
                                                    </button>
                                                </div>
                                                <table class="datepicker-calendar-days">
                                                    <thead>
                                                    <tr>
                                                        <th>Di</th>
                                                        <th>Lu</th>
                                                        <th>Ma</th>
                                                        <th>Me</th>
                                                        <th>Je</th>
                                                        <th>Ve</th>
                                                        <th>Sa</th>
                                                    </tr>
                                                    </thead>
                                                    <tbody></tbody>
                                                </table>
                                                <div class="datepicker-calendar-footer">
                                                    <button type="button" class="datepicker-today">Aujourd'hui</button>
                                                </div>
                                            </div>
                                            <div class="datepicker-wheels" aria-hidden="true">
                                                <div class="datepicker-wheels-month">
                                                    <h2 class="header">Mois</h2>
                                                    <ul>
                                                        <li data-month="0">
                                                            <button type="button">Jan</button>
                                                        </li>
                                                        <li data-month="1">
                                                            <button type="button">Fev</button>
                                                        </li>
                                                        <li data-month="2">
                                                            <button type="button">Mar</button>
                                                        </li>
                                                        <li data-month="3">
                                                            <button type="button">Avr</button>
                                                        </li>
                                                        <li data-month="4">
                                                            <button type="button">Mai</button>
                                                        </li>
                                                        <li data-month="5">
                                                            <button type="button">Juin</button>
                                                        </li>
                                                        <li data-month="6">
                                                            <button type="button">Jui</button>
                                                        </li>
                                                        <li data-month="7">
                                                            <button type="button">Aoû</button>
                                                        </li>
                                                        <li data-month="8">
                                                            <button type="button">Sep</button>
                                                        </li>
                                                        <li data-month="9">
                                                            <button type="button">Oct</button>
                                                        </li>
                                                        <li data-month="10">
                                                            <button type="button">Nov</button>
                                                        </li>
                                                        <li data-month="11">
                                                            <button type="button">Dec</button>
                                                        </li>
                                                    </ul>
                                                </div>
                                                <div class="datepicker-wheels-year">
                                                    <h2 class="header">Année</h2>
                                                    <ul></ul>
                                                </div>
                                                <div class="datepicker-wheels-footer clearfix">
                                                    <button type="button" class="btn datepicker-wheels-back"><span
                                                            class="glyphicon glyphicon-arrow-left"></span><span
                                                            class="sr-only">Return to Calendar</span>
                                                    </button>
                                                    <button type="button" class="btn datepicker-wheels-select">
                                                        Selectionner <span
                                                            class="sr-only">Mois et années</span></button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="id">Nombre de places</label>

                            <div class="input-group">
                                <input class="form-control" type="number" name="nbplaces" value="${stage.nbplaces}"
                                       id="nbplaces"
                                       required>

                                <span class="input-group-addon"><span class="glyphicon glyphicon-asterisk"></span></span>

                            </div>
                        </div>
                        <div class="form-group">
                            <label for="id">Nombre d'inscrits</label>

                            <div class="input-group">
                                <input class="form-control" type="number" name="nbinscrits" value="${stage.nbinscrits}"
                                       id="nbinscrits"
                                       required>

                                <span class="input-group-addon"><span class="glyphicon glyphicon-asterisk"></span></span>

                            </div>
                        </div>
                        <input type="submit" name="submit" id="submit" value="Submit" class="btn btn-info pull-right">
                    </form>
                </div>
            </div>
        </div>

    </div>
</div>

<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script src="js/moment.js"></script>
<script src="//www.fuelcdn.com/fuelux/3.5.0/js/fuelux.min.js"></script>
<script type="text/javascript">
    $(document).ready(function () {
        moment().format();

        $('#DateFin').datepicker({
            allowPastDates: true,
            setDate: new Date(),
            momentConfig: {
                culture: 'fr' // change to specific culture
            }
        });

        $('#DateDebut').datepicker({
            allowPastDates: true,
            setDate: new Date(),
            momentConfig: {
                culture: 'fr' // change to specific culture
            }
        });

        $('#DateFin').datepicker('setDate', new Date(${stage.getDateFinToString()}));
        $('#DateDebut').datepicker('setDate', new Date(${stage.getDateDebutToString()}));
    });
</script>
</body>
</html>
