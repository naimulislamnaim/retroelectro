<%@ Page Title="" Language="C#" MasterPageFile="~/admin/pages/admin.master" AutoEventWireup="true" CodeFile="AddNewDivision.aspx.cs" Inherits="admin_pages_AddDiviaion" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div id="page-wrapper">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Add New Division</h1>
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
                                            Division Name
                                        </label>
                                        <asp:textbox id="txtDivisionName" runat="server" cssclass="form-control"></asp:textbox>
                                        <br />
                                        <asp:requiredfieldvalidator id="RequiredFieldValidatorDivisionName" runat="server" errormessage="Division Name Required" cssclass="alert-danger" controltovalidate="txtDivisionName"></asp:requiredfieldvalidator>
                                    </div>
                                    <div class="form-group">
                                        <label>Division Description</label>
                                        <asp:textbox id="txtDivisionDescription" runat="server" cssclass="form-control" textmode="MultiLine"></asp:textbox>
                                    </div>
                                    <asp:button id="btnAddDivision" runat="server" text="Add" cssclass="btn btn-primary" onclick="btnAddDivision_Click" />
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

