<%@ Page Title="" Language="C#" MasterPageFile="admin.master" AutoEventWireup="true" CodeFile="UpdateProductStock.aspx.cs" Inherits="admin_pages_UpdateProductStock" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        .GridPager a,
        .GridPager span {
            display: inline-block;
            padding: 0px 9px;
            margin-right: 4px;
            border-radius: 3px;
            border: solid 1px #c0c0c0;
            background: #e9e9e9;
            box-shadow: inset 0px 1px 0px rgba(255,255,255, .8), 0px 1px 3px rgba(0,0,0, .1);
            font-size: .875em;
            font-weight: bold;
            text-decoration: none;
            color: #717171;
            text-shadow: 0px 1px 0px rgba(255,255,255, 1);
        }

        .GridPager a {
            background-color: #f5f5f5;
            color: #969696;
            border: 1px solid #969696;
        }

        .GridPager span {
            background: #616161;
            box-shadow: inset 0px 0px 8px rgba(0,0,0, .5), 0px 1px 0px rgba(255,255,255, .8);
            color: #f0f0f0;
            text-shadow: 0px 0px 3px rgba(0,0,0, .5);
            border: 1px solid #3AC0F2;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>


            <div id="page-wrapper">
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">Update Product Stock</h1>
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
                                            <br />
                                            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" CssClass="table table-responsive table-bordered table-hover" PageSize="3">
                                                <Columns>
                                                    <asp:TemplateField HeaderText="Id" InsertVisible="False" SortExpression="Id">
                                                        <EditItemTemplate>
                                                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("Id") %>'></asp:Label>
                                                        </EditItemTemplate>
                                                        <ItemTemplate>
                                                            <asp:Label ID="Label6" runat="server" Text='<%# Bind("Id") %>'></asp:Label>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="ProductName" SortExpression="ProductName">
                                                        <EditItemTemplate>
                                                            <asp:Label ID="LabelProductName" runat="server" Text='<%# Bind("ProductName") %>'></asp:Label>
                                                        </EditItemTemplate>
                                                        <ItemTemplate>
                                                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("ProductName") %>'></asp:Label>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="SKU" SortExpression="SKU">
                                                        <EditItemTemplate>
                                                            <asp:Label ID="LabelSKU" runat="server" Text='<%# Bind("SKU") %>'></asp:Label>
                                                        </EditItemTemplate>
                                                        <ItemTemplate>
                                                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("SKU") %>'></asp:Label>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="CategoryName" SortExpression="CategoryName">
                                                        <EditItemTemplate>
                                                            <asp:Label ID="LabelCategoryName" runat="server" Text='<%# Bind("CategoryName") %>'></asp:Label>
                                                        </EditItemTemplate>
                                                        <ItemTemplate>
                                                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("CategoryName") %>'></asp:Label>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="Quantity" SortExpression="Quantity">
                                                        <EditItemTemplate>
                                                            <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Quantity") %>'></asp:TextBox>
                                                            <br />
                                                            <asp:RangeValidator ID="RangeValidatorQuantity" runat="server" ControlToValidate="TextBox4" CssClass="alert-danger" ErrorMessage="Invalid Quantity!" MaximumValue="1000" MinimumValue="1" Type="Integer"></asp:RangeValidator>
                                                            <br />
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox4" CssClass="alert-danger" ErrorMessage="No Quantity!"></asp:RequiredFieldValidator>
                                                        </EditItemTemplate>
                                                        <ItemTemplate>
                                                            <asp:Label ID="Label4" runat="server" Text='<%# Bind("Quantity") %>'></asp:Label>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="BrandName" SortExpression="BrandName">
                                                        <EditItemTemplate>
                                                            <asp:Label ID="LabelBrandName" runat="server" Text='<%# Bind("BrandName") %>'></asp:Label>
                                                        </EditItemTemplate>
                                                        <ItemTemplate>
                                                            <asp:Label ID="Label5" runat="server" Text='<%# Bind("BrandName") %>'></asp:Label>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="Update Stock">
                                                        <EditItemTemplate>
                                                            <asp:LinkButton ID="LinkButtonUpdate" runat="server" CommandName="Update">Update</asp:LinkButton>
                                                            &nbsp;<asp:LinkButton ID="LinkButtonCancel" runat="server" CommandName="Cancel">Cancel</asp:LinkButton>
                                                        </EditItemTemplate>
                                                        <ItemTemplate>
                                                            <asp:LinkButton ID="LinkButtonEdit" runat="server" CommandName="Edit" ToolTip="Edit">Edit</asp:LinkButton>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                </Columns>
                                                <PagerStyle CssClass="GridPager" />
                                            </asp:GridView>
                                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Product] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Product] ([ProductName], [ProductDescription], [SupplierId], [CategoryName], [Quantity], [Price], [ProductImage], [BrandImage], [WarrentyType], [BrandName], [SKU]) VALUES (@ProductName, @ProductDescription, @SupplierId, @CategoryName, @Quantity, @Price, @ProductImage, @BrandImage, @WarrentyType, @BrandName, @SKU)" SelectCommand="SELECT * FROM [Product]" UpdateCommand="UPDATE [Product] SET [ProductName] = @ProductName, [ProductDescription] = @ProductDescription, [SupplierId] = @SupplierId, [CategoryName] = @CategoryName, [Quantity] = @Quantity, [Price] = @Price, [ProductImage] = @ProductImage, [BrandImage] = @BrandImage, [WarrentyType] = @WarrentyType, [BrandName] = @BrandName, [SKU] = @SKU WHERE [Id] = @Id">
                                                <DeleteParameters>
                                                    <asp:Parameter Name="Id" Type="Int32" />
                                                </DeleteParameters>
                                                <InsertParameters>
                                                    <asp:Parameter Name="ProductName" Type="String" />
                                                    <asp:Parameter Name="ProductDescription" Type="String" />
                                                    <asp:Parameter Name="SupplierId" Type="Int32" />
                                                    <asp:Parameter Name="CategoryName" Type="String" />
                                                    <asp:Parameter Name="Quantity" Type="String" />
                                                    <asp:Parameter Name="Price" Type="Decimal" />
                                                    <asp:Parameter Name="ProductImage" Type="String" />
                                                    <asp:Parameter Name="BrandImage" Type="String" />
                                                    <asp:Parameter Name="WarrentyType" Type="String" />
                                                    <asp:Parameter Name="BrandName" Type="String" />
                                                    <asp:Parameter Name="SKU" Type="String" />
                                                </InsertParameters>
                                                <UpdateParameters>
                                                    <asp:Parameter Name="ProductName" Type="String" />
                                                    <asp:Parameter Name="ProductDescription" Type="String" />
                                                    <asp:Parameter Name="SupplierId" Type="Int32" />
                                                    <asp:Parameter Name="CategoryName" Type="String" />
                                                    <asp:Parameter Name="Quantity" Type="String" />
                                                    <asp:Parameter Name="Price" Type="Decimal" />
                                                    <asp:Parameter Name="ProductImage" Type="String" />
                                                    <asp:Parameter Name="BrandImage" Type="String" />
                                                    <asp:Parameter Name="WarrentyType" Type="String" />
                                                    <asp:Parameter Name="BrandName" Type="String" />
                                                    <asp:Parameter Name="SKU" Type="String" />
                                                    <asp:Parameter Name="Id" Type="Int32" />
                                                </UpdateParameters>
                                            </asp:SqlDataSource>
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

