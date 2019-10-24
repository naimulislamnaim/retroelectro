<%@ Page Title="" Language="C#" MasterPageFile="~/admin/pages/login.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="admin_pages_login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
        <div class="row">
            <div class="col-md-4 col-md-offset-4">
                <div class="login-panel panel panel-default" style="box-shadow: 5px 5px 20px; color:gray">
                    <div class="panel-heading">
                        <h3 class="panel-title">Please Sign In</h3>
                    </div>
                    <div class="panel-body">

                        <center>
                            <asp:Image ID="imgLoginAnimation" runat="server" Height="150px" ImageUrl="~/images/tenor.gif" Width="150px" />
                            <br />
                            <br />
                        </center>
                        <div role="form">
                            <fieldset>
                                <div class="form-group">
                                    <%--<input class="form-control" placeholder="E-mail" name="email" type="email" autofocus>--%>
                                    <asp:TextBox ID="txtUserName" runat="server" cssClass="form-control" placeholder="E-mail" TextMode="Email"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUserName" CssClass="alert-danger" ErrorMessage="Email Required!"></asp:RequiredFieldValidator>
                                </div>
                                <div class="form-group">
                                    <%--<input class="form-control" placeholder="Password" name="password" type="password" value="">--%>
                                    <asp:TextBox ID="txtPassword" runat="server" cssClass="form-control" placeholder="Password" TextMode="Password"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPassword" CssClass="alert-danger" ErrorMessage="Password Also Required!"></asp:RequiredFieldValidator>
                                </div>
                                <%--<div class="checkbox">
                                    <label>
                                        <input name="remember" type="checkbox" value="Remember Me">Remember Me
                                    </label>
                                </div>--%>
                                <!-- Change this to a button or input when using this as a form -->
                                <%--<a href="index.html" class="btn btn-lg btn-success btn-block">Login</a>--%>
                                <asp:Button ID="btnLoginAdmin" runat="server" Text="Login" cssClass="btn btn-lg btn-primary btn-block" OnClick="btnLoginAdmin_Click"/>
                                <br />
                                
                                    <asp:Label ID="Label1" runat="server" CssClass="alert-danger"></asp:Label>
                                
                                
                            </fieldset>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

