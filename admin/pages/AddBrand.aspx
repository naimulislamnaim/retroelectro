<%@ Page Title="" Language="C#" MasterPageFile="~/admin/pages/admin.master" AutoEventWireup="true" CodeFile="AddBrand.aspx.cs" Inherits="admin_pages_AddBrand" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:scriptmanager runat="server"></asp:scriptmanager>
    <asp:updatepanel runat="server">
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
                                                <asp:Label ID="LabelBrandExiest" runat="server" CssClass="text-danger"></asp:Label>
                                                </label>
                                                <asp:TextBox ID="TextBoxBrandName" runat="server" CssClass="form-control" AutoPostBack="True" OnTextChanged="TextBoxBrandName_TextChanged"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxBrandName" ErrorMessage="Brand Name Required!" CssClass="text-danger"></asp:RequiredFieldValidator>
                                            </div>
                                            <div class="form-group">
                                                <label>Brand Description</label>
                                                <asp:TextBox ID="TextBoxdescription" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                            <div class="form-group">
                                                <label>Supplier</label>
                                                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control"></asp:DropDownList>
                                            </div>
                                            <div class="form-group">
                                                <label>Brand Image</label>
                                                <asp:Image ID="ImageBrand" runat="server" CssClass="form-control show-image" />
                                                <br />
                                                <asp:Label ID="LabelBrandImage" runat="server" Text=""></asp:Label>
                                                
                                                <br />
                                                
                                                <asp:FileUpload ID="fileBrandImage" runat="server" CssClass="form-control" onchange="updateImg(this);"/>
                                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="fileBrandImage" ErrorMessage="insert valid image file!" ValidationExpression="^([0-9a-zA-Z_\-~ :\\])+(.jpg|.JPG|.jpeg|.JPEG|.bmp|.BMP|.gif|.GIF|.png|.PNG)$" CssClass="alert-danger"></asp:RegularExpressionValidator>
                                            </div>
                                            
                                            <asp:Button ID="ButtonAdd" runat="server" Text="Add" CssClass="btn btn-primary" OnClick="ButtonAdd_Click"/>
                                            &nbsp
                                        <button type="reset" class="btn btn-info">Reset</button>
                                            <br />
                                            <br />
                                            <br />
                                            <asp:Label ID="LabelMessage" runat="server" CssClass="text-success"></asp:Label>
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
    </asp:updatepanel>

</asp:Content>

