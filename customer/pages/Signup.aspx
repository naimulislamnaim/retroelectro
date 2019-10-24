<%@ Page Title="" Language="C#" MasterPageFile="~/customer/pages/Customer.master" AutoEventWireup="true" CodeFile="Signup.aspx.cs" Inherits="customer_pages_Sugnup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
<asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
    <div class="container">
        <div class="row">
            <div class="col-md-4 col-md-offset-4">
                <div class="login-panel panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title">Create New Account</h3>
                    </div>
                    <div class="panel-body">
                        <div role="form">
                            <fieldset>
                                <div>
                                
                                    

                                    
                                
                                <div class="form-group">
                                    <label>Email</label> <asp:Label ID="lblExistingMessage" runat="server" CssClass="alert-danger"></asp:Label>
                                    <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" TextMode="Email" placeholder="Email" AutoPostBack="True" OnTextChanged="txtEmail_TextChanged"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="reqEmail" runat="server" ErrorMessage="Email Required" ControlToValidate="txtEmail" CssClass="alert-danger"></asp:RequiredFieldValidator>
                                </div>
                                    
                                        
                                    </div>


                                <div class="form-group">
                                    <label>First Name</label>
                                    <asp:TextBox ID="txtFirstName" runat="server" CssClass="form-control" placeholder="First Name"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="reqFirstName" runat="server" ErrorMessage="First Name Required" ControlToValidate="txtFirstName" CssClass="alert-danger"></asp:RequiredFieldValidator>
                                </div>
                                <div class="form-group">
                                    <label>Last Name</label>
                                    <asp:TextBox ID="txtLastName" runat="server" CssClass="form-control" placeholder="Last Name"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="reqLastName" runat="server" ErrorMessage="Last Name Required" ControlToValidate="txtLastName" CssClass="alert-danger"></asp:RequiredFieldValidator>
                                </div>
                                <div class="form-group">
                                    <asp:TextBox ID="txtRoleCustomer" runat="server" CssClass="form-control" Text="Customer"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <label>Password</label> 
                                    <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" TextMode="Password" placeholder="Password"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="reqPassword" runat="server" ErrorMessage="Password Required" ControlToValidate="txtPassword" CssClass="alert-danger"></asp:RequiredFieldValidator>
                                </div>
                                <div class="form-group">
                                    <label>Confirm Password</label> <asp:Label ID="lblPassNotMatch" runat="server" CssClass="alert-danger"></asp:Label>
                                    &nbsp;<asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtConfirmPassword" CssClass="alert-danger" ErrorMessage="password not match"></asp:CompareValidator>
                                    &nbsp;<asp:TextBox ID="txtConfirmPassword" runat="server" CssClass="form-control" TextMode="Password" placeholder="Confirm Password"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="reqConfirmPassword" runat="server" ErrorMessage="Re-enter Password" ControlToValidate="txtConfirmPassword" CssClass="alert-danger"></asp:RequiredFieldValidator>
                                </div>
                                <div class="form-group">
                                    <label>Account Create Date (Auto Generated)</label>
                                    <asp:TextBox ID="txtAccountCreateDate" runat="server" CssClass="form-control" ReadOnly="True"></asp:TextBox>
                                </div>
                                <div class="checkbox">
                                    <label>
                                        <asp:CheckBox ID="checkGetConfirmEmail" runat="server" /> Get Account Confirmation
                                    </label>
                                </div>
                                <asp:Button ID="btnSignup" runat="server" Text="Signup" class="btn btn-lg btn-success btn-block" OnClick="btnSignup_Click"/>
                                <br />
                                <asp:Label ID="lblSuccessMessage" runat="server" CssClass="alert-success"></asp:Label>
                            </fieldset>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </ContentTemplate>
</asp:UpdatePanel>
</asp:Content>

