<%@ Page Title="" Language="C#" MasterPageFile="~/customer/pages/Customer.master" AutoEventWireup="true" CodeFile="EditMyProfile.aspx.cs" Inherits="customer_pages_EditMyProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
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
                            Update My Profile!
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
                                            <%--<input class="form-control">--%>
                                            <asp:textbox runat="server" cssClass="form-control" ID="txtEmail" ReadOnly="True"></asp:textbox>
                                        </div>
                                        <div class="form-group">
                                            <label>First Name</label>
                                            <%--<input class="form-control">--%>
                                            <asp:textbox runat="server" cssClass="form-control" ID="txtFirstName"></asp:textbox>
                                        </div>
                                        <div class="form-group">
                                            <label>Last Name</label>
                                            <%--<input class="form-control">--%>
                                            <asp:textbox runat="server" cssClass="form-control" ID="txtLastName"></asp:textbox>
                                        </div>
                                        <div class="form-group">
                                            <asp:button runat="server" text="Generate Password" ID="BtnPasswordGen" class="btn btn-primary" OnClick="BtnPasswordGen_Click"/>   
                                        </div>
                                        <div class="form-group">
                                            <label>Password</label>
                                            <%--<input class="form-control"/>--%>
                                            <asp:textbox runat="server" cssClass="form-control" ID="txtPassword"></asp:textbox>
                                        </div>
                                        <br />
                                        <br />
                                        <div>
                                            <h4>Update Others Information</h4>
                                        </div>
                                        <br />
                                        <div class="form-group">
                                            <label>My Role</label>
                                            <%--<input class="form-control"/>--%>
                                            <asp:textbox runat="server" cssClass="form-control" ID="txtRole" ReadOnly="True"></asp:textbox>
                                        </div>
                                        <div class="form-group">
                                            <label>Account Create Date</label>
                                            <%--<input class="form-control"/>--%>
                                            <asp:textbox runat="server" cssClass="form-control" ID="txtAccountCreateDate" ReadOnly="True"></asp:textbox>
                                        </div>
                                        <div class="form-group">
                                            <label>Address Line 1</label>
                                            <%--<input class="form-control"/>--%>
                                            <asp:textbox runat="server" cssClass="form-control" ID="txtAddressLine1"></asp:textbox>
                                        </div>
                                        <div class="form-group">
                                            <label>Address Line 2</label>
                                            <%--<input class="form-control"/>--%>
                                            <asp:textbox runat="server" ID="txtAddressLine2" CssClass="form-control"></asp:textbox>
                                        </div>
                                        <div class="form-group">
                                            <label>Post Code</label>
                                            <%--<input class="form-control"/>--%>
                                            <asp:textbox runat="server" ID="txtPostCode" CssClass="form-control"></asp:textbox>
                                        </div>
                                        <div class="form-group">
                                            <label>Phone</label>
                                            <%--<input class="form-control"/>--%>
                                            <asp:textbox runat="server" ID="txtPhone" CssClass="form-control"></asp:textbox>
                                        </div>
                                        <div class="form-group">
                                            <label>Division</label>
                                            <%--<input class="form-control"/>--%>
                                            <br />
                                            <asp:DropDownList ID="DropDownListDivision" runat="server" cssClass="form-control">
                                            </asp:DropDownList>
                                        </div>
                                        <asp:button runat="server" text="Update" ID="btnUpdateUserAdmin" cssClass="btn btn-primary" OnClick="btnUpdateUserAdmin_Click"/>
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
</asp:Content>

