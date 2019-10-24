<%@ Page Title="" Language="C#" MasterPageFile="~/admin/pages/admin.master" AutoEventWireup="true" CodeFile="AddNewWarrentyType.aspx.cs" Inherits="admin_pages_AddNewWarrentyType" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="page-wrapper">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Add New Brand</h1>
            </div>
            <!-- /.col-lg-12 -->
        </div>
        <!-- /.row -->
        <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-default">
                    <div class="panel-body">
                        <div class="row">
                            <div class="col-lg-6">
                                <div role="form">
                                    <div class="form-group">
                                        <label>
                                            Warrenty Type
                                        </label>
                                        <asp:textbox runat="server" ID="txtWarrentyType" cssClass="form-control"></asp:textbox>
                                        <asp:requiredfieldvalidator runat="server" errormessage="Warrenty Type Required" ID="reqWarrentyType" ControlToValidate="txtWarrentyType" CssClass="alert-danger"></asp:requiredfieldvalidator>
                                        <br />
                                    </div>
                                    <asp:button runat="server" text="Add" ID="btnWarrentyType" cssClass="btn btn-primary" OnClick="btnWarrentyType_Click"/>
                                    &nbsp
                                        <button type="reset" class="btn btn-info">Reset</button>
                                    <br />
                                    <asp:label id="lblAlertMessage" runat="server" cssclass="alert-danger"></asp:label>
                                    <br />
                                    <asp:label id="lblSuccessMessage" runat="server" cssclass="alert-success"></asp:label>
                                    <br />
                                </div>
                            </div>
                            <!-- /.col-lg-6 (nested) -->

                            <!-- /.row (nested) -->
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
        </div>
    </div>
</asp:Content>

