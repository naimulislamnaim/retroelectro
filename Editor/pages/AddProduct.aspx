<%@ Page Title="" Language="C#" MasterPageFile="~/Editor/pages/admin.master" AutoEventWireup="true" CodeFile="AddProduct.aspx.cs" Inherits="Editor_pages_AddProduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div id="page-wrapper">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Add New Product</h1>
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
                                        <label>Product Name</label>
                                        <asp:TextBox runat="server" CssClass="form-control" ID="txtProductName"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Product Name Required" ControlToValidate="txtProductName" CssClass="alert-danger"></asp:RequiredFieldValidator>
                                    </div>
                                    <div class="form-group">
                                        <label>Product SKU</label>
                                        <asp:TextBox runat="server" CssClass="form-control" ID="txtSKU"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="SKU Required" ControlToValidate="txtSKU" CssClass="alert-danger"></asp:RequiredFieldValidator>
                                    </div>
                                    <div class="form-group">
                                        <label>Product Description</label>
                                        <asp:TextBox runat="server" CssClass="form-control" ID="txtDescription" Rows="10" TextMode="MultiLine"></asp:TextBox>
                                    </div>
                                    <div class="form-group">
                                        <label>Quantity in Stock</label>
                                        <asp:TextBox runat="server" CssClass="form-control" ID="txtQuantity"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Product Quantity Required" ControlToValidate="txtQuantity" CssClass="alert-danger"></asp:RequiredFieldValidator>
                                    </div>
                                    <div class="form-group">
                                        <label>Price (৳)</label>
                                        <asp:TextBox runat="server" CssClass="form-control" ID="txtPrice"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Product Price Required" ControlToValidate="txtPrice" CssClass="alert-danger"></asp:RequiredFieldValidator>
                                    </div>
                                    <div class="form-group">
                                        <label>Category</label>
                                        <div>
                                            <asp:DropDownList runat="server" ID="dropCategoryName" CssClass="form-control" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="CategoryName" DataValueField="CategoryName"></asp:DropDownList>
                                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Id], [CategoryName] FROM [Category]"></asp:SqlDataSource>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Category Required" ControlToValidate="dropCategoryName" CssClass="alert-danger"></asp:RequiredFieldValidator>
                                        </div>

                                    </div>
                                    <div class="form-group">
                                        <label>Supplier</label>
                                        <div>
                                            <asp:DropDownList runat="server" ID="dropSupplierName" CssClass="form-control" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="SupplierName" DataValueField="Id"></asp:DropDownList>
                                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Id], [SupplierName] FROM [Supplier]"></asp:SqlDataSource>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Supplier Required" ControlToValidate="dropSupplierName" CssClass="alert-danger"></asp:RequiredFieldValidator>
                                        </div>

                                    </div>
                                    <div class="form-group">
                                        <label>Brand</label>
                                        <div>
                                            <asp:DropDownList runat="server" ID="dropBrandName" CssClass="form-control" DataSourceID="SqlDataSource3" DataTextField="BrandName" DataValueField="Id" AutoPostBack="True" OnSelectedIndexChanged="dropBrandName_SelectedIndexChanged"></asp:DropDownList>
                                            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [BrandName], [Id] FROM [Brand]"></asp:SqlDataSource>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Brand Name Required" ControlToValidate="dropBrandName" CssClass="alert-danger"></asp:RequiredFieldValidator>

                                        </div>

                                    </div>
                                    <div class="form-group">
                                        <label>Warrenty Type</label>
                                        <div>
                                            <asp:DropDownList ID="dropWarrentyType" runat="server" CssClass="form-control" DataSourceID="SqlDataSource4" DataTextField="WarrentyType" DataValueField="WarrentyType" AutoPostBack="True"></asp:DropDownList>
                                            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [WarrentyType] FROM [Warrenty]"></asp:SqlDataSource>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Warrenty Type Required" ControlToValidate="dropWarrentyType" CssClass="alert-danger"></asp:RequiredFieldValidator>
                                        </div>

                                    </div>

                                    <div class="form-group">
                                        <label>Brand Image</label>
                                        <asp:Image ID="imgBrand" runat="server" Width="100px" CssClass="form-control" />
                                        <asp:Label ID="lblBrandImage" runat="server"></asp:Label>
                                        <%--<asp:fileupload runat="server" ID="FileBrandImage" CssClass="form-control"></asp:fileupload>--%>
                                    </div>
                                        <div class="form-group">
                                            <label>Product Image</label>
                                            <asp:Image ID="imgProduct" runat="server" Width="100px" CssClass="form-control show-image"/>
                                            <asp:Label ID="lblProductImage" runat="server"></asp:Label>
                                            <asp:fileupload runat="server" ID="fileProductImage" CssClass="form-control" onchange="updateImg(this);"></asp:fileupload>
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Invalid Image Type!" ControlToValidate="fileProductImage" ValidationExpression="^([0-9a-zA-Z_\-~ :\\])+(.jpg|.JPG|.jpeg|.JPEG|.bmp|.BMP|.gif|.GIF|.png|.PNG)$" CssClass="alert-danger"></asp:RegularExpressionValidator>
                                        </div>
                                    <asp:Button runat="server" Text="Add" CssClass="btn btn-primary" ID="btnUpdateProduct" OnClick="btnAddProduct_Click" />
                                    &nbsp
                                        <button type="reset" class="btn btn-info">Reset</button>
                                    <br />
                                    <asp:Label ID="lblAlertMessage" runat="server" CssClass="alert-danger"></asp:Label>
                                    <br />
                                    <asp:Label ID="lblSuccessMessage" runat="server" CssClass="alert-success"></asp:Label>
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

