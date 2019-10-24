<%@ Page Title="" Language="C#" MasterPageFile="~/admin/pages/admin.master" AutoEventWireup="true" CodeFile="AddNewBrand.aspx.cs" Inherits="admin_pages_AddNewBrand" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
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
                                                    Brand Name 
                                                </label><asp:Label ID="LabelBrandNameExiest" runat="server" CssClass="alert-danger"></asp:Label>
                                                <asp:TextBox ID="txtBrandName" runat="server" CssClass="form-control" OnTextChanged="txtBrandName_TextChanged"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="reqBrandName" runat="server" ErrorMessage="Branb Name Required" ControlToValidate="txtBrandName" CssClass="alert-danger"></asp:RequiredFieldValidator>
                                            </div>
                                            <div class="form-group">
                                                <label>Brand Description</label>
                                                <asp:TextBox ID="txtBrandDescription" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                            <div class="form-group">
                                                <label>Supplier</label>
                                                <asp:DropDownList ID="dropSupplierName" runat="server" CssClass="form-control" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="SupplierName" DataValueField="Id" fileType="jpg"></asp:DropDownList>
                                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Id], [SupplierName] FROM [Supplier]"></asp:SqlDataSource>
                                            </div>
                                            <div class="form-group">
                                                <label>Brand Image</label>
                                                <asp:Image ID="imgBrand" runat="server" Width="100px" CssClass="form-control show-image" />
                                                <br />
                                                <br />
                                                <br />
                                                <br />
                                                <br />
                                                <br />
                                                <br />
                                                <asp:Label ID="lblBrandImage" runat="server"></asp:Label>
                                                <asp:FileUpload ID="fileBrandImage" runat="server" CssClass="form-control" onchange="updateImg(this);"/>
                                                <%--<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="fileBrandImage" ErrorMessage="insert valid image file!" ValidationExpression="^([0-9a-zA-Z_\-~ :\\])+(.jpg|.JPG|.jpeg|.JPEG|.bmp|.BMP|.gif|.GIF|.png|.PNG)$" CssClass="alert-danger"></asp:RegularExpressionValidator>
                                           --%> </div>
                                            
                                            <asp:Button ID="brnAddBrand" runat="server" Text="Add" CssClass="btn btn-primary" OnClick="brnAddBrand_Click" />
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

        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

