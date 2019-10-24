<%@ Page Title="" Language="C#" MasterPageFile="~/admin/pages/admin.master" AutoEventWireup="true" CodeFile="DivisionList.aspx.cs" Inherits="admin_pages_DivisionList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="page-wrapper">
    <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">All Division List</h1>
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
                                        <div>
                                        <a href="AddNewDivision.aspx" class="btn btn-warning">Add Division</a>
                                    </div>
                                    <br />
                                        <asp:gridview runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" cssClass="table table-bordered table-responsive table-hover">
                                            <Columns>
                                                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                                                <asp:BoundField DataField="DivisionName" HeaderText="DivisionName" SortExpression="DivisionName" />
                                                <asp:BoundField DataField="DivisionDescription" HeaderText="DivisionDescription" SortExpression="DivisionDescription" />
                                                <asp:TemplateField HeaderText="Edit / Delete">
                                                    <EditItemTemplate>
                                                        <asp:LinkButton ID="LinkButtonUpdate" runat="server" CommandName="Update">Update</asp:LinkButton>
                                                        &nbsp;<asp:LinkButton ID="LinkButtonCancel" runat="server" CommandName="Cancel">Cancel</asp:LinkButton>
                                                    </EditItemTemplate>
                                                    <ItemTemplate>
                                                        <asp:LinkButton ID="LinkButtonEdit" runat="server" CommandName="Edit" ToolTip="Edit">Edit</asp:LinkButton>
                                                        &nbsp;<asp:LinkButton ID="LinkButtonDelete" runat="server" CommandName="Delete" OnClientClick="return confirm('are you sure want to dlete this record?')" ToolTip="Delete">Delete</asp:LinkButton>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                            </Columns>
                                        </asp:gridview>
                                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Divisions] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Divisions] ([DivisionName], [DivisionDescription]) VALUES (@DivisionName, @DivisionDescription)" SelectCommand="SELECT * FROM [Divisions]" UpdateCommand="UPDATE [Divisions] SET [DivisionName] = @DivisionName, [DivisionDescription] = @DivisionDescription WHERE [Id] = @Id">
                                            <DeleteParameters>
                                                <asp:Parameter Name="Id" Type="Int32" />
                                            </DeleteParameters>
                                            <InsertParameters>
                                                <asp:Parameter Name="DivisionName" Type="String" />
                                                <asp:Parameter Name="DivisionDescription" Type="String" />
                                            </InsertParameters>
                                            <UpdateParameters>
                                                <asp:Parameter Name="DivisionName" Type="String" />
                                                <asp:Parameter Name="DivisionDescription" Type="String" />
                                                <asp:Parameter Name="Id" Type="Int32" />
                                            </UpdateParameters>
                                        </asp:SqlDataSource>
                                    </div>
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

