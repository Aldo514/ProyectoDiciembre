<%@ Page Language="VB" AutoEventWireup="false" CodeFile="BusquedaReceta.aspx.vb" Inherits="BusquedaReceta" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.7.8/angular.min.js"></script>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<link rel="stylesheet" href="css/estilos.css">
<title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="jumbotron jumbotron-fluid bg-success text-white-50 col-md-12 pb-4 pt-4 shadow-sm">
            <div class="container">
                <div class="row">
                    <div class="col-6 col-md-2 col-lg-2"><a id="linkCab" href="Default.aspx"><h1 class="display-4">Cooking</h1></a></div>
                    <div class="col-6 col-md-6 col-lg-6 mt-2 pl-4"><img id="icono-footer" src="img/icons/logo.svg"></div>
                </div>
                <p class="lead">Con lo que tengas a mano</p>
            </div>
            <!--navbar-->
            <ng-include src="'data/cabecera.html'"></ng-include>
        <!--///navbar-->
        </div>
    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <h5>Resultado:</h5>
            </div>
            <div class="col-sm-12 mt-3">
                <asp:Label ID="CampoTitulo" runat="server"></asp:Label>
            </div>
            <div class="col-sm-12 mt-2">
                <asp:Label ID="CampoReceta" runat="server"></asp:Label>
            </div>
        </div>
        
    </div>
    <asp:HiddenField ID="ing0" runat="server" />
    <asp:HiddenField ID="ing1" runat="server" />
    <asp:HiddenField ID="ing2" runat="server" />
    <asp:HiddenField ID="ing3" runat="server" />
    </form>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
</body>
</html>
