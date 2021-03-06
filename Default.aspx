﻿<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" ng-app="app">

<head runat="server">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.7.8/angular.min.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/d3js/5.7.0/d3.min.js"></script>
    <script src="//code.jquery.com/jquery-1.12.1.min.js"></script>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <title>Cooking</title>
	<link rel="stylesheet" href="css/estilos.css">
	<script src="js/search.js"></script>
</head>

<body background="img/fondo1.png"  class="ng-cloak">
    <form id="form1" runat="server">
        <!--header-->
        <div class="jumbotron jumbotron-fluid bg-success text-white-50 col-md-12 pb-4 pt-4 shadow-sm">
            <div class="container">
                <div class="row">
                    <div class="col-6 col-md-2 col-lg-2"><a href="Default.aspx"><h1 class="display-4">Cooking</h1></a></div>
                    <div class="col-6 col-md-6 col-lg-6 mt-2 pl-4"><img id="icono-footer" src="img/icons/logo.svg"></div>
                </div>
                <p class="lead">Con lo que tengas a mano</p>
            </div>
        <!--navbar-->
            <ng-include src="'data/cabecera.html'"></ng-include>
        <!--///navbar-->
        </div>
      <!--///header-->
      <!--buscador-->
          <div class="container-fluid" ng-controller="Controller" >
              <div class="row mt-4">
                  <div class="col-md-4 col-sm-2 col-2"></div><!--espacio-->
                  <div class="col-md-4 col-sm-6 col-6 form-group">
                      <form action="#">
                          <input type="text" class="form-control shadow p-3 mb-3 bg-white rounded" id="ingrediente" placeholder="Ingresar..." ng-model="add.nombre" maxlength="12" onfocus="this.value=''">
                      </form>
                  </div>
                  <div class="col-md-4 col-sm-2 col-2">
                      <button type="button" class="btn btn-outline-success" ng-model="titulo" ng-click="add_ingrediente()" id="añadir">+Añadir</button>
                  </div>
              </div>
              <div class="row"><!--lista-->
                  <div class="col-md-2 col-sm-1"></div><!--espacio-->
                  <div class="col-md-8 col-sm-11">
                    <div ng-if="titulo"><h6>{{title}}</h6></div>
                        <ul class="list-group" id="lista-index">
                            <li ng-repeat="ingrediente in ingredientes track by $index" ng-model="lista" class="list-group-item d-flex justify-content-between my-1">
                                <div>
                                    {{ ingrediente.nombre }}
                                </div>
                                <div>
                                    <button type="button" class="btn btn-secondary btn-sm" id="{{$index}}" data-ng-click="delete_ingrediente($event)" ng-model="titulo">X</button>
                                </div>
                            </li>
                            <li>
                                <div ng-bind-html-unsafe="cocinar"></div>
                            </li>
                            <li class="d-flex justify-content-center">
                                <div class="w-50 d-flex justify-content-end">
                                    <button type="button" class="btn btn-primary col-sm-6 col-6 btn-sm mb-1" ng-click="verDatos()">Confirmar</button>
                                </div>
                                &nbsp;
                                <div class="w-50">
                                    <asp:Button ID="buscar" class="btn btn-success col-sm-6 col-6 btn-sm" runat="server" Text="Buscar" ></asp:Button>
                                </div>
                            </li>
                        </ul>
                  </div>
              </div><!--lista-->
              <asp:HiddenField ID="ing0" runat="server" value=""/>
              <asp:HiddenField ID="ing1" runat="server" value=""/>
              <asp:HiddenField ID="ing2" runat="server" value=""/>
              <asp:HiddenField ID="ing3" runat="server" value="" />
          </div>
          <div class="x"></div>
      <!--///buscador-->
      <!--cuerpo-->
          <div class="container">
              <div class="row mt-3">
                  <div class="col-md-6 col-12">
                      <div class="card mb-3" style="max-width: 540px;">
                        <div class="row no-gutters">
                          <div class="col-md-4 mt-1 p-2">
                            <img src="https://picsum.photos/600/?image=425" class="card-img" alt="...">
                          </div>
                          <div class="col-md-8">
                            <div class="card-body">
                              <h5 class="card-title">El mejor café</h5>
                              <p class="card-text">Te enseñamos como preparar el mejor café: molido, pasado, tostado, etc. Además de algunos consejos para saborearlo mejor</p>
                              <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
                            </div>
                          </div>
                        </div>
                      </div>
                  </div>
                  <div class="col-md-6 col-12 ">
                      <div class="card mb-3" style="max-width: 540px;">
                        <div class="row no-gutters">
                          <div class="col-md-4 mt-1 p-2">
                            <img src="https://picsum.photos/600/?image=292" class="card-img" alt="...">
                          </div>
                          <div class="col-md-8">
                            <div class="card-body">
                              <h5 class="card-title">Cortar verduras sin morir</h5>
                              <p class="card-text">Un pequeño tutorial para cortar verduras sin morir en el intento. Aprende cómo no llorar al triturar cebollas.</p>
                              <p class="card-text"><small class="text-muted">Last updated 4 hours ago</small></p>
                            </div>
                          </div>
                        </div>
                      </div>
                  </div>
              </div>
          </div>
      <!--///cuerpo-->
        <br>
        <br>
        <br>
        <br>
      <!--footer-->
        <footer class="footer fixed-bottom">
            <div class="page-footer font-weight-light bg-success">
                <small><div class="footer-copyright text-center  py-4 font-weight-normal" style="color: #bfbfbf;">©2019 Copyright:
                    <a class="text-light" >Cooking.com</a>
                </div></small>
            </div>
        </footer>
      <!--///footer-->
    </form>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
</body>

</html>