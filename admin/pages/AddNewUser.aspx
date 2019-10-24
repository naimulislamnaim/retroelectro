<%@ Page Title="" Language="C#" MasterPageFile="~/admin/pages/Admin.master" AutoEventWireup="true" CodeFile="AddNewUser.aspx.cs" Inherits="admin_pages_AddNewUser" %>

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
                            Create a brand new user and add them to this site.
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
                                            <label>E-mail</label> <%--<input class="form-control">--%>
                                        <asp:Label ID="lblAlertMessage" runat="server" CssClass="alert-danger"></asp:Label>
                                            <asp:textbox runat="server" cssClass="form-control" ID="txtEmail" TextMode="Email" AutoPostBack="True" OnTextChanged="txtEmail_TextChanged"></asp:textbox>
                                            <asp:RequiredFieldValidator ID="reqEmail" runat="server" ErrorMessage="Email Required" ControlToValidate="txtEmail" CssClass="alert-danger"></asp:RequiredFieldValidator>
                                        </div>
                                        <div class="form-group">
                                            <label>First Name</label> <%--<input class="form-control">--%>
                                            <asp:textbox runat="server" cssClass="form-control" ID="txtFirstName"></asp:textbox>
                                            <asp:RequiredFieldValidator ID="reqFirstName" runat="server" ErrorMessage="First Name Required" ControlToValidate="txtFirstName" CssClass="alert-danger"></asp:RequiredFieldValidator>
                                        </div>
                                        <div class="form-group">
                                            <label>Last Name</label> <%--<input class="form-control">--%>
                                            <asp:textbox runat="server" cssClass="form-control" ID="txtLastName"></asp:textbox>
                                            <asp:RequiredFieldValidator ID="reqLastName" runat="server" ErrorMessage="Last Name Required" ControlToValidate="txtLastName" CssClass="alert-danger"></asp:RequiredFieldValidator>
                                        </div>
                                        <div class="form-group">
                                            <label>Role</label>                                            <%--<select class="form-control" id="selectRole">
                                                <option>-- Choose Category --</option>
                                                <option>Administrator</option>
                                                <option>Customer</option>
                                                <option>Editor</option>
                                            </select>--%>
                                            <asp:DropDownList ID="DropDownListRole" runat="server" CssClass="form-control">
                                                <asp:ListItem text="--Select Role--" Value=""></asp:ListItem>
                                                <asp:ListItem text="Administrator" Value="Admin"></asp:ListItem>
                                                <asp:ListItem text="Customer" Value="Customer"></asp:ListItem>
                                                <asp:ListItem text="Editor" Value="Editor"></asp:ListItem>
                                            </asp:DropDownList>
                                            <asp:RequiredFieldValidator ID="reqRole" runat="server" ErrorMessage="Role Required" ControlToValidate="DropDownListRole" CssClass="alert-danger"></asp:RequiredFieldValidator>
                                        </div>
                                        <div class="form-group">
                                            <label>Account Create Date (Auto Generate)</label>                                            <%--<input class="form-control">--%>
                                            <asp:TextBox ID="txtAccountCreateDate" runat="server" CssClass="form-control" ReadOnly="True"></asp:TextBox>
                                        </div>
                                        <div class="form-group">
                                            <%--<input class="btn btn-primary" type="button" value="Generate Password" onclick="generatePassword()"/> &nbsp
                                            <label id="demo"></label>--%><%--<input class="form-control" type="button"/>--%>

                                            <asp:Button ID="btnRandomPass" runat="server" Text="Generate Password" class="btn btn-primary" OnClick="btnRandomPass_Click"/>
                                            
                                        </div>
                                        <div class="form-group">
                                            <label>Password</label>                                            <%--<input class="form-control"/>--%>
                                            <asp:textbox runat="server" cssClass="form-control" ID="txtPassword"></asp:textbox>
                                            <%--<asp:RequiredFieldValidator ID="reqPassword" runat="server" ErrorMessage="Password Required" ControlToValidate="txtPassword"></asp:RequiredFieldValidator>--%>
                                        </div>
                                        <div class="form-group">
                                            <label>Sent Email to New User</label> &nbsp
                                            <%--<input class="form-control"/>--%>
                                            <asp:checkbox runat="server" ID="checkBoxEmail"></asp:checkbox>
                                        </div>

                                        <asp:button runat="server" text="Add New User" cssClass="btn btn-primary" ID="btnAddUser" OnClick="btnAddUser_Click"/>
                                        <%--<button type="submit" class="">Add New User</button>--%>&nbsp
                                        <%--<button type="reset" class="btn btn-info">Reset</button>--%>
                                        <br />
                                        <br />
                                        <asp:Label ID="lblSuccessMessage" runat="server" CssClass="alert-success"></asp:Label>
                                        <br />

                                        <div class="form-group">
                                            <asp:Literal ID="litMessage" runat="server"></asp:Literal>
                                            <asp:Literal ID="litEmailMessage" runat="server"></asp:Literal>
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

