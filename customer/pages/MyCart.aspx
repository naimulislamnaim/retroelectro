<%@ Page Title="" Language="C#" MasterPageFile="~/customer/pages/Customer.master" AutoEventWireup="true" CodeFile="MyCart.aspx.cs" Inherits="customer_pages_MyCart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:scriptmanager id="ScriptManager1" runat="server"></asp:scriptmanager>
    <asp:updatepanel id="UpdatePanel1" runat="server">
        <ContentTemplate>


    <div class="container">
        <asp:gridview id="GridView1" runat="server" cssclass=" table table-responsive table-bordered" onrowdeleting="GridView1_RowDeleting1">
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" />
                    </Columns>
                </asp:gridview>

        <div class="alert alert-info ui-icon-notice">
            <h4>Gran Total: <asp:label id="LabelGtotal" runat="server"></asp:label></h4>
            <asp:UpdateProgress ID="UpdateProgress1" runat="server">
                <ProgressTemplate>
                    Order is processing......<%--<asp:Image ID="Image1" runat="server" Height="98px" ImageUrl="~/customer/images/kick.gif" Width="100px" />--%>
                </ProgressTemplate>
            </asp:UpdateProgress>
        </div>
        <asp:label id="LabelCustoemrId" runat="server"></asp:label>
        <asp:Label ID="LabelCustomerEmail" runat="server"></asp:Label>
        <asp:Label ID="LabelOrderSuccess" runat="server"></asp:Label>
        <br />
        <a href="Product.aspx" class="btn btn-success">Continue Shopping</a>&nbsp;

                
                    <asp:button id="ButtonCheckOut" runat="server" text="Check Out" cssclass="btn btn-warning" onclick="ButtonCheckOut_Click" visible="false" />


        &nbsp;
                    <asp:button runat="server" text="Login To Check Out" cssclass="btn btn-danger" id="BtnLoginToCheckout" visible="False" OnClick="BtnLoginToCheckout_Click"/>


    </div>
            </ContentTemplate>
    </asp:updatepanel>
</asp:Content>

