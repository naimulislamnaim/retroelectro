<%@ Page Title="" Language="C#" MasterPageFile="~/login/pages/Login.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="login_pages_Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
        <div class="row">
            <div class="col-md-4 col-md-offset-4">
                <div class="login-panel panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title">Please Sign In</h3>
                    </div>
                    <div class="panel-body">
                        <center>
                        <asp:image runat="server" Height="120px" ImageUrl="~/images/logo_animation_tubik_design-1.gif" Width="150px"></asp:image>
                            <br />
                            <br />
                            </center>
                        <div role="form">
                            <fieldset>
                                <div class="form-group">
                                    <%--<input class="form-control" placeholder="E-mail" name="email" type="email" autofocus />--%>
                                    <asp:textbox runat="server" class="form-control" placeholder="E-mail" name="email" type="email" autofocus ID="txtEmail"></asp:textbox>
                                </div>
                                <div class="form-group">
                                    <%--<input class="form-control" placeholder="Password" name="password" type="password" value=""/>--%>
                                    <asp:textbox runat="server" class="form-control" placeholder="Password" name="password" type="password" value="" ID="txtPass"></asp:textbox>
                                </div>
                                <div class="checkbox">
                                    <label>
                                        <input name="remember" type="checkbox" value="Remember Me">Remember Me
                                    </label>
                                </div>
                                <!-- Change this to a button or input when using this as a form -->
                                <%--<a href="index.html" class="btn btn-lg btn-success btn-block">Login</a>--%>
                                <asp:button runat="server" text="Login" href="index.html" class="btn btn-lg btn-warning btn-block" ID="btnLogin" OnClick="btnLogin_Click"/>
                            </fieldset>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

