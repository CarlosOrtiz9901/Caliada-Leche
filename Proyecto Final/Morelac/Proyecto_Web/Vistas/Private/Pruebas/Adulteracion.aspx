﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Vistas/Private/Home/Admin.Master" AutoEventWireup="true" CodeBehind="Adulteracion.aspx.cs" Inherits="Proyecto_Web.Vistas.Private.Pruebas.Adulteracion" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="content-header">
        <h1><i class="fa fa-hand-o-right"></i><b>PRUEBA ADELTERACIÓN</b></h1>
        <small>De morelac</small>
        <ol class="breadcrumb">
            <li><a href="/Vistas/Private/Home/index_admin.aspx"><i class="fa fa-dashboard"></i>Inicio</a></li>
            <li><a href="/Vistas/Private/Proveedor/Proveedores.aspx"><i class="fa fa-street-view"></i>Proveedores</a></li>
            <li><a href='/Vistas/Private/Supervisor/SelecionarPrueba.aspx?Valor=<%=ID_PERSONA %>'><i class="fa fa-street-view"></i>Seleccionar Prueba</a></li>
            <li class="active"><a href="#"><i class="fa fa-street-view"></i><b>Prueba Adulteración</b></a></li>
        </ol>
    </section>

    <br />

    <div class="row">
        <div class="col-md-12">
            <!-- DIRECT CHAT WARNING -->
            <div class="box box-warning direct-chat direct-chat-warning">
                <div class="box-header with-border">
                    <h3 class="box-title"><b>ADULTERACIÓN</b></h3>
                </div>
                <div class="box-body" style="">
                    <br />
                    <fieldset>
                        <div class="form-horizontal col-lg-12">
                            <div class="form-group col-lg-6" style="height: 50px;">
                                <div class="box-body">
                                    <label class="col-sm-4 control-label"><b style="font-size: 17px;">Muestra De Leche: </b></label>
                                    <div style="padding-left: 0%; padding-right: 0%;" class="input-group col-sm-4">
                                        <asp:TextBox runat="server" ID="TB_Cantidad" MaxLength="10" onKeyPress="return soloNumeros(event)" onkeyDown="checkTextAreaMaxLength(this,event,'10');" CssClass="form-control style-form" TextMode="Number" placeholder="32.5" required></asp:TextBox>
                                        <span class="input-group-addon">mL</span>
                                    </div>
                                </div>
                            </div>

                            <div class="form-group col-lg-6" style="height: 50px;">
                                <div class="box-body">
                                    <label class="col-sm-4 control-label"><b style="font-size: 17px;">Por Agua</b></label>
                                    <div style="padding-left: 0%; padding-right: 0%;" class="input-group col-sm-4">
                                        <asp:TextBox runat="server" ID="TB_Agua" MaxLength="10" onKeyPress="return soloNumeros(event)" onkeyDown="checkTextAreaMaxLength(this,event,'10');" CssClass="form-control style-form" TextMode="Number" placeholder="15" required></asp:TextBox>
                                        <span class="input-group-addon">ml</span>
                                    </div>
                                </div>
                            </div>

                            <div class="form-group col-lg-6">
                                <div class="box-body ">
                                    <label class="col-sm-4 control-label"><b style="font-size: 17px;">Por cloruros</b></label>
                                    <div style="padding-left: 0%; padding-right: 0%;" class="input-group col-sm-4 ">
                                        <asp:TextBox runat="server" ID="TB_Cloruros" MaxLength="10" onKeyPress="return soloNumeros(event)" onkeyDown="checkTextAreaMaxLength(this,event,'10');" CssClass="form-control style-form" TextMode="Number" placeholder="5" required></asp:TextBox>
                                        <span class="input-group-addon">ml</span>
                                    </div>
                                </div>
                            </div>

                            <div class="form-group col-lg-6">
                                <div class="box-body">
                                    <label class="col-sm-4 control-label"><b style="font-size: 17px;">Por sacarosa</b></label>
                                    <div style="padding-left: 0%; padding-right: 0%;" class="input-group col-sm-4 ">
                                        <asp:TextBox runat="server" ID="TB_Sacarosa" MaxLength="10" onKeyPress="return soloNumeros(event)" onkeyDown="checkTextAreaMaxLength(this,event,'10');" CssClass="form-control style-form" TextMode="Number" placeholder="3" required></asp:TextBox>
                                        <span class="input-group-addon">ml</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </fieldset>
                </div>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-md-3"></div>
        <div class="col-md-6">
            <div class="box box-success">
                <div class="box-header with-border">
                    <h3 class="box-title"><b>GUARDAR PRUEBA</b></h3>
                    <div class="box-tools pull-right">
                        <button type="button" class="btn btn-box-tool" data-widget="collapse">
                            <i class="fa fa-minus"></i>
                        </button>
                    </div>
                </div>
                <div class="box-body" style="text-align: center;">

                    <div class="form-group col-md-12 no-padding">
                        <span class="col-md-2 control-label text-bold no-padding">Fecha de la prueba</span>
                        <div class="col-lg-10 no-padding">
                            <asp:TextBox ID="Fecha_Prueba" runat="server" CssClass="form-control" required TextMode="DateTime"></asp:TextBox>
                        </div>
                    </div>
                    <div class="form-group col-md-12 no-padding">
                        <span class="col-md-2 control-label text-bold no-padding">Observación</span>
                        <div class="col-lg-10 no-padding">
                            <asp:TextBox ID="TB_Observacion" runat="server" TextMode="MultiLine" onkeyDown="checkTextAreaMaxLength(this,event,'255');" Rows="3" CssClass="form-control" required MaxLength="255"
                                placeholder="Ingrese la obsercacion de esta prueba, pueden ser los aspectos a mejorar..."></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <asp:LinkButton Style="margin: 0% 0% 0% 0%;" runat="server" ID="Btn_Save_Prueba" CssClass="btn btn-success" OnClick="Btn_Save_Prueba_Click"><i class="fa fa-save"></i> Guardar Prueba</asp:LinkButton>
                        <asp:LinkButton Style="margin: 0% 0% 0% 0%;" runat="server" ID="Btn_Cerrar" CssClass="btn btn-danger"><i class="fa fa-remove"></i> Cancelar</asp:LinkButton>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-3"></div>
    </div>

    <div class="modal <%=modal_tipo%> fade" id="modal-perfil" data-backdrop="static" data-keyboard="false">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title"><%=modal_titulo%></h4>
                </div>
                <div class="modal-body">
                    <p><%=modal_mensaje%></p>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal" onclick="redirect(<%= modal_link %>)">Aceptar</button>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ScriptsEndPage" runat="server">
</asp:Content>
