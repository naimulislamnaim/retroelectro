<%@ Page Title="" Language="C#" MasterPageFile="~/admin/pages/admin.master" AutoEventWireup="true" CodeFile="AddNewSupplier.aspx.cs" Inherits="admin_pages_AddNewSupplier" %>

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
                                            Supplier Name
                                        </label>
                                        <asp:textbox runat="server" ID="txtSupplierName" cssClass="form-control"></asp:textbox>
                                        <asp:requiredfieldvalidator runat="server" errormessage="Supplier Name Required" ID="reqSupplierName" CssClass="alert-danger" ControlToValidate="txtSupplierName"></asp:requiredfieldvalidator>                                      
                                    </div>
                                    <div class="form-group">
                                        <label>Supplier Email</label>
                                        <asp:textbox runat="server" ID="txtSupplierEmail" cssClass="form-control"></asp:textbox>
                                        <asp:requiredfieldvalidator runat="server" errormessage="Supplier Email Required" ID="reqSupplierEmail" CssClass="alert-danger" ControlToValidate="txtSupplierEmail"></asp:requiredfieldvalidator>
                                    </div>
                                    <div class="form-group">
                                        <label>Supplier Phone</label>
                                        <asp:textbox runat="server" ID="txtSupplierPhone" cssClass="form-control"></asp:textbox>
                                        <asp:requiredfieldvalidator runat="server" errormessage="Supplier Phone No. Required" ID="reqSupplierPhone" CssClass="alert-danger" ControlToValidate="txtSupplierPhone"></asp:requiredfieldvalidator>
                                    </div>
                                    <asp:button runat="server" text="Add" ID="btnAddSupplier" cssClass="btn btn-primary" OnClick="btnAddSupplier_Click"/>
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

