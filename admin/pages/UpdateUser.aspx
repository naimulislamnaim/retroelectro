<%@ Page Title="" Language="C#" MasterPageFile="~/admin/pages/admin.master" AutoEventWireup="true" CodeFile="UpdateUser.aspx.cs" Inherits="admin_pages_UpdateUser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>


    <div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Add New User</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Update selected user details.
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-6">
                                    <div role="form">
                                        <%--<div class="form-group">
                                            <label>User Name</label>
                                            <input class="form-control">
                                            <asp:textbox runat="server"></asp:textbox>
                                        </div>--%>
                                        <div class="form-group">
                                            <label>E-mail / User name can't be change</label>
                                            <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" ReadOnly="True"></asp:TextBox> 
                                        </div>
                                        <div class="form-group">
                                            <label>First Name</label>
                                            <asp:TextBox ID="txtFirstName" runat="server" CssClass="form-control"></asp:TextBox>
                                        </div>
                                        <div class="form-group">
                                            <label>Last Name</label>
                                            <asp:TextBox ID="txtLastName" runat="server" CssClass="form-control"></asp:TextBox>
                                        </div>
                                        <div class="form-group">
                                            <asp:Button ID="btnPasswordGen" runat="server" Text="Generate Password" CssClass="btn btn-primary" OnClick="btnPasswordGen_Click" />
                                            
                                            
                                        </div>
                                        <div class="form-group">
                                            <label>Password</label>
                                            <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control"></asp:TextBox>
                                        </div>
                                        <br />
                                        <br />
                                        <div>
                                            <h4>Update Others Information</h4>
                                        </div>
                                        <br />
                                        <div class="form-group">
                                            <label>Role</label>
                                            <asp:TextBox ID="txtRole" runat="server" CssClass="form-control" ReadOnly="True"></asp:TextBox>
                                        </div>
                                        <div class="form-group">
                                            <label>Account Create Date</label>
                                            <asp:TextBox ID="txtAccountCreateDate" runat="server" CssClass="form-control" ReadOnly="True"></asp:TextBox>
                                        </div>
                                        <div class="form-group">
                                            <label>Address Line 1</label>
                                            <asp:TextBox ID="txtAddressLine1" runat="server" CssClass="form-control"></asp:TextBox>
                                        </div>
                                        <div class="form-group">
                                            <label>Address Line 2</label>
                                            <asp:TextBox ID="txtAddressLine2" runat="server" CssClass="form-control"></asp:TextBox>
                                        </div>
                                        <div class="form-group">
                                            <label>Post Code</label>
                                            <asp:TextBox ID="txtPostCode" runat="server" CssClass="form-control"></asp:TextBox>
                                        </div>
                                        <div class="form-group">
                                            <label>Phone</label>
                                            <asp:TextBox ID="txtPhone" runat="server" CssClass="form-control"></asp:TextBox>
                                        </div>
                                        <div class="form-group">
                                            <label>Division</label>
                                            <asp:DropDownList ID="dropDivisionList" runat="server" CssClass="form-control" DataSourceID="SqlDataSource1" DataTextField="DivisionName" DataValueField="Id"></asp:DropDownList>
                                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Divisions]"></asp:SqlDataSource>
                                            <div class="form-control">
                                                <asp:Literal ID="litDivisionName" runat="server"></asp:Literal>
                                            </div>
                                        </div>
                                        <asp:Button ID="btnUpdateUser" runat="server" Text="Update" CssClass="btn btn-primary" OnClick="btnUpdateUser_Click" />
                                        &nbsp
                                        <button type="reset" class="btn btn-info">Reset</button>

                                        <div class="form-group">
                                            <asp:Literal ID="litMessage" runat="server"></asp:Literal>
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
                    </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

