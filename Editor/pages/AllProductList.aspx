<%@ Page Title="" Language="C#" MasterPageFile="admin.master" AutoEventWireup="true" CodeFile="AllProductList.aspx.cs" Inherits="admin_pages_AllProductList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
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
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="page-wrapper">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">All Category</h1>
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

                                    <div>
                                        <a href="AddProduct.aspx" class="btn btn-warning">Add New Product</a>
                                    </div>
                                    <br />
                                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" CssClass="table table-responsive table-bordered table-hover table-condensed" AllowPaging="True" AllowSorting="True" PageSize="5">
                                        <Columns>
                                            <asp:BoundField DataField="ProductName" HeaderText="ProductName" SortExpression="ProductName" />
                                            <asp:BoundField DataField="SKU" HeaderText="SKU" SortExpression="SKU" />
                                            <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
                                            <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                                            <asp:BoundField DataField="CategoryName" HeaderText="CategoryName" SortExpression="CategoryName" />
                                            <asp:BoundField DataField="BrandName" HeaderText="BrandName" SortExpression="BrandName" />
                                            <asp:BoundField DataField="WarrentyType" HeaderText="WarrentyType" SortExpression="WarrentyType" />
                                            <asp:HyperLinkField DataNavigateUrlFields="Id" DataNavigateUrlFormatString="UpdateProduct.aspx?x={0}" HeaderText="Edit" Text="Edit" />
                                            <asp:TemplateField HeaderText="Delete">
                                                <ItemTemplate>
                                                    <asp:LinkButton ID="linkDelete" runat="server" CommandName="Delete" OnClientClick="return confirm('are you sure want to dlete this record?')" ToolTip="Delete">Delete</asp:LinkButton>
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
</asp:Content>

