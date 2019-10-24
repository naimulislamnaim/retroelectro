<%@ Page Title="" Language="C#" MasterPageFile="~/customer/pages/Login.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="customer_pages_Login" %>

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
                            <asp:Image ID="imgLoginAnimation" runat="server" ImageUrl="~/images/HandyAfraidKiskadee-small.gif" Width="150px"></asp:Image>
                            <br />
                        </center>
                        
                        <div role="form">
                            <fieldset>
                                <div class="form-group">
                                    <%--<input class="form-control" placeholder="E-mail" name="email" type="email" autofocus>--%>
                                    <asp:TextBox ID="txtUserName" runat="server" cssClass="form-control" placeholder="E-mail" TextMode="Email" ToolTip="User Email"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="reqEmail" runat="server" ErrorMessage="Email Required" ControlToValidate="txtUserName" CssClass="alert-danger"></asp:RequiredFieldValidator>
                                </div>
                                <div class="form-group">
                                    <%--<input class="form-control" placeholder="Password" name="password" type="password" value="">--%>
                                    <asp:TextBox ID="txtPassword" runat="server" cssClass="form-control" placeholder="Password" TextMode="Password" ToolTip="User Password"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="reqPass" runat="server" ErrorMessage="Password Required Too" ControlToValidate="txtPassword" CssClass="alert-danger"></asp:RequiredFieldValidator>
                                </div>
                                <%--<div class="checkbox">
                                    <label>
                                        <input name="remember" type="checkbox" value="Remember Me">Remember Me
                                    </label>
                                </div>--%>
                                <!-- Change this to a button or input when using this as a form -->
                                <asp:Button ID="btnLoginCustomer" runat="server" Text="Login" cssClass="btn btn-lg btn-warning btn-block" OnClick="btnLoginCustomer_Click" ToolTip="Click to Login" />
                                
                                
                                    <asp:Label ID="lblMessage" runat="server" class="alert-danger"></asp:Label>
                                
                                
                            </fieldset>
                        </div> 
                    </div> 
                </div>
                <center>
                    <a href="Default.aspx" class="alert-info"> Back to Home</a>
                </center>
            </div>
        </div>
        
    </div>
    

</asp:Content>

