<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Change_Ext.aspx.cs" Inherits="Change_Ext" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

     <link  type="text/css"/ href="bootstrap/css/bootstrap.min.css" rel="stylesheet"/>
    <script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>




    <title>Job_Change</title>
</head>
<body>
    <form id="form1" runat="server">
          <nav class="navbar navbar-dark bg-danger">
            <a class="navbar-brand" href="#">Extraction_Changes</a>
            <asp:Button ID="Button1" runat="server" Text="Salir" CssClass="btn btn-danger" />
        </nav>

        <div class="container-fluid">
            <div class="row flex-xl-nowrap">

                <!--Menu_Bar-->
                <div class="col-md-3 col-xl-2 bd-sidebar">
                    <nav id="navbar-example3" class="navbar navbar-light bg-light">
                        <a class="navbar-brand" href="#">Menu</a>
                        <nav class="nav nav-pills flex-column">
                            <a class="nav-link" href="#item-1">Rayado</a>
                            <!--  <nav class="nav nav-pills flex-column">
                                <a class="nav-link ml-3 my-1" href="#item-1-1">Item 1-1</a>
                                <a class="nav-link ml-3 my-1" href="#item-1-2">Item 1-2</a>
                            </nav>-->
                            <a class="nav-link" href="#item-3">Extraction</a>
                            <nav class="nav nav-pills flex-column">
                                <a class="nav-link ml-3 my-1" href="#item-3-1">Extraction_Cambios</a>
                               <!--<a class="nav-link ml-3 my-1" href="#item-3-2">Extraction</a> -->
                            </nav>
                        </nav>
                    </nav>
                </div>

                <main class="col-md-9 col-x1-8 py-md-3 pl-md-1 bd-sidebar" role="main">
                    <div class="jumbotron" style="top: 50px">
                        <h4>Programacion de Cambios</h4>

                            <asp:GridView ID="GridView1" CssClass="table table-bordered table-dark" runat="server"></asp:GridView>
                          

                     <!--Tabla (Suma del T_D)-->
                        <div class="container-fluid">
                           <div class="row flex-xl-nowrap"> 
                                <table id="tabla_suma" class="table table-hover">
                                    <thead>
                                        <tr>
                                            <th scope="col" class="table table-bordered table-dark">Total</th>
                                            <td class="bg-warning">
                                                <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                                            </td>
                                        </tr>
                                    </thead>
                                </table>
                           </div>
                              <asp:Button ID="Button2" runat="server" Text="Button" OnClick="Button2_Click" />
                        </div>
                    </div>
                </main>
            </div>
        </div>
    </form>
</body>
</html>
