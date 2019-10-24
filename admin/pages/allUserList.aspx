<%@ Page Title="" Language="C#" MasterPageFile="~/admin/pages/admin.master" AutoEventWireup="true" CodeFile="AllUserList.aspx.cs" Inherits="admin_pages_allUserList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>


            <div id="page-wrapper">
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">All User List</h1>
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
                                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" CssClass="table table-responsive table-hover table-bordered" AllowPaging="True" AllowSorting="True">
                                                <Columns>
                                                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                                                    <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                                                    <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
                                                    <asp:BoundField DataField="Role" HeaderText="Role" SortExpression="Role" />
                                                    <asp:BoundField DataField="AccountCreateDate" HeaderText="AccountCreateDate" SortExpression="AccountCreateDate" />
                                                    <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
                                                    <asp:HyperLinkField DataNavigateUrlFields="Id" DataNavigateUrlFormatString="UpdateUser.aspx?x={0}" HeaderText="Edit" Text="Edit" />
                                                    <asp:TemplateField HeaderText="Delete">
                                                        <ItemTemplate>
                                                            &nbsp;<asp:LinkButton ID="LinkButtonDelete" runat="server" CommandName="Delete" ToolTip="Delete" OnClientClick="return confirm('Are you sure you want delete');">Delete</asp:LinkButton>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                </Columns>
                                            </asp:GridView>
                                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [User] WHERE [Id] = @Id" InsertCommand="INSERT INTO [User] ([Email], [FirstName], [LastName], [Password], [Role], [AccountCreateDate], [AddressLine1], [AddressLine2], [PostCode], [Phone], [DivisionId]) VALUES (@Email, @FirstName, @LastName, @Password, @Role, @AccountCreateDate, @AddressLine1, @AddressLine2, @PostCode, @Phone, @DivisionId)" SelectCommand="SELECT * FROM [User]" UpdateCommand="UPDATE [User] SET [Email] = @Email, [FirstName] = @FirstName, [LastName] = @LastName, [Password] = @Password, [Role] = @Role, [AccountCreateDate] = @AccountCreateDate, [AddressLine1] = @AddressLine1, [AddressLine2] = @AddressLine2, [PostCode] = @PostCode, [Phone] = @Phone, [DivisionId] = @DivisionId WHERE [Id] = @Id">
                                                <DeleteParameters>
                                                    <asp:Parameter Name="Id" Type="Int32" />
                                                </DeleteParameters>
                                                <InsertParameters>
                                                    <asp:Parameter Name="Email" Type="String" />
                                                    <asp:Parameter Name="FirstName" Type="String" />
                                                    <asp:Parameter Name="LastName" Type="String" />
                                                    <asp:Parameter Name="Password" Type="String" />
                                                    <asp:Parameter Name="Role" Type="String" />
                                                    <asp:Parameter DbType="Date" Name="AccountCreateDate" />
                                                    <asp:Parameter Name="AddressLine1" Type="String" />
                                                    <asp:Parameter Name="AddressLine2" Type="String" />
                                                    <asp:Parameter Name="PostCode" Type="String" />
                                                    <asp:Parameter Name="Phone" Type="String" />
                                                    <asp:Parameter Name="DivisionId" Type="Int32" />
                                                </InsertParameters>
                                                <UpdateParameters>
                                                    <asp:Parameter Name="Email" Type="String" />
                                                    <asp:Parameter Name="FirstName" Type="String" />
                                                    <asp:Parameter Name="LastName" Type="String" />
                                                    <asp:Parameter Name="Password" Type="String" />
                                                    <asp:Parameter Name="Role" Type="String" />
                                                    <asp:Parameter DbType="Date" Name="AccountCreateDate" />
                                                    <asp:Parameter Name="AddressLine1" Type="String" />
                                                    <asp:Parameter Name="AddressLine2" Type="String" />
                                                    <asp:Parameter Name="PostCode" Type="String" />
                                                    <asp:Parameter Name="Phone" Type="String" />
                                                    <asp:Parameter Name="DivisionId" Type="Int32" />
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

