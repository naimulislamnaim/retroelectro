<%@ Page Title="" Language="C#" MasterPageFile="~/admin/pages/Admin.master" AutoEventWireup="true" CodeFile="AddNewCategory.aspx.cs" Inherits="admin_pages_AddNewCategory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
   
    <div id="page-wrapper">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Add New Category</h1>
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
                                        <label>Category Name</label><asp:textbox runat="server" cssClass="form-control" ID="TxtCategoryName"></asp:textbox>
                                        <br />
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TxtCategoryName" ErrorMessage="Category Name can't be Empty!" CssClass="alert-danger"></asp:RequiredFieldValidator>
                                    </div>
                                    <div class="form-group">
                                        <label>Category Description</label>
                                        <asp:textbox runat="server" cssClass="form-control" rows="10" ID="TxtCategoryDescription" TextMode="MultiLine"></asp:textbox>
                                    </div>
                                    <asp:button runat="server" text="Add" cssClass="btn btn-primary" ID="BtnAddCategory" OnClick="BtnAddCategory_Click"/>
                                    &nbsp
                                        <button type="reset" class="btn btn-info">Reset</button>
                                    <br />
                                    <asp:Label ID="lblAlertMessage" runat="server" CssClass="alert-danger"></asp:Label>
                                    <br />
                                    <asp:Label ID="lblSuccessMessage" runat="server" CssClass="alert-success"></asp:Label>
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

