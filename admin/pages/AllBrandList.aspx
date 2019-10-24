<%@ Page Title="" Language="C#" MasterPageFile="~/admin/pages/admin.master" AutoEventWireup="true" CodeFile="AllBrandList.aspx.cs" Inherits="admin_pages_AllBrandList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="page-wrapper">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">All Brand</h1>
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
                                        <a href="AddBrand.aspx" class="btn btn-warning">Add Brand</a>
                                    </div>
                                    <br />
                                    <asp:gridview runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" cssClass="table table-responsive  table-bordered table-striped">
                                        <Columns>
                                            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                                            <asp:TemplateField HeaderText="BrandName" SortExpression="BrandName">
                                                <EditItemTemplate>
                                                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("BrandName") %>'></asp:Label>
                                                </EditItemTemplate>
                                                <ItemTemplate>
                                                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("BrandName") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="SupplierId" SortExpression="SupplierId">
                                                <EditItemTemplate>
                                                    <br />
                                                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSourceDrop" DataTextField="SupplierName" DataValueField="Id" SelectedValue='<%# Bind("SupplierId") %>'>
                                                    </asp:DropDownList>
                                                    <asp:SqlDataSource ID="SqlDataSourceDrop" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [SupplierName], [Id] FROM [Supplier]"></asp:SqlDataSource>
                                                </EditItemTemplate>
                                                <ItemTemplate>
                                                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("SupplierId") %>'></asp:Label>
                                                    <br />
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="BrandImage" SortExpression="BrandImage">
                                                <EditItemTemplate>
                                                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("BrandImage") %>'></asp:TextBox>
                                                </EditItemTemplate>
                                                <ItemTemplate>
                                                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("BrandImage") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="BrandDescription" SortExpression="BrandDescription">
                                                <EditItemTemplate>
                                                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("BrandDescription") %>'></asp:TextBox>
                                                </EditItemTemplate>
                                                <ItemTemplate>
                                                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("BrandDescription") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Edit">
                                                <EditItemTemplate>
                                                    <asp:LinkButton ID="LinkButtonUpdate" runat="server" CommandName="Update">Update</asp:LinkButton>
                                                    &nbsp;<asp:LinkButton ID="LinkButtonCancle" runat="server" CommandName="Cancel">Cancel</asp:LinkButton>
                                                </EditItemTemplate>
                                                <ItemTemplate>
                                                    <asp:LinkButton ID="LinkButtonEdit" runat="server" CommandName="Edit" ToolTip="Edit">Edit</asp:LinkButton>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Delete">
                                                <ItemTemplate>
                                                    <asp:LinkButton ID="LinkButtonDelete" runat="server" CommandName="Delete" OnClientClick="return confirm('are you sure want to dlete this record?')">Delete</asp:LinkButton>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                        </Columns>
                                    </asp:gridview>
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Brand] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Brand] ([BrandName], [SupplierId], [BrandImage], [BrandDescription]) VALUES (@BrandName, @SupplierId, @BrandImage, @BrandDescription)" SelectCommand="SELECT * FROM [Brand]" UpdateCommand="UPDATE [Brand] SET [BrandName] = @BrandName, [SupplierId] = @SupplierId, [BrandImage] = @BrandImage, [BrandDescription] = @BrandDescription WHERE [Id] = @Id">
                                        <DeleteParameters>
                                            <asp:Parameter Name="Id" Type="Int32" />
                                        </DeleteParameters>
                                        <InsertParameters>
                                            <asp:Parameter Name="BrandName" Type="String" />
                                            <asp:Parameter Name="SupplierId" Type="Int32" />
                                            <asp:Parameter Name="BrandImage" Type="String" />
                                            <asp:Parameter Name="BrandDescription" Type="String" />
                                        </InsertParameters>
                                        <UpdateParameters>
                                            <asp:Parameter Name="BrandName" Type="String" />
                                            <asp:Parameter Name="SupplierId" Type="Int32" />
                                            <asp:Parameter Name="BrandImage" Type="String" />
                                            <asp:Parameter Name="BrandDescription" Type="String" />
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

