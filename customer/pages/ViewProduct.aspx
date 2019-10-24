<%@ Page Title="" Language="C#" MasterPageFile="~/customer/pages/Customer.master" AutoEventWireup="true" CodeFile="ViewProduct.aspx.cs" Inherits="customer_pages_ViewProduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 188px;
        }
    </style>


    <script>
        //print function
        function printDiv(divName) {
            var pC = document.getElementById(divName).innerHTML;
            var oC = document.body.innerHTML;

            document.body.innerHTML = pC;
            window.print();
            document.body.innerHTML = oC;
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <br />
            <br />
            <div class="container col-md-offset-10">
                <input id="Button2" type="button" value="Print" onclick="printDiv('empPrint');" class="btn btn-info" />
                
            </div>
            <br />
            <div class="container table-responsive" id="empPrint">

                <table class="nav-justified table table table-striped table-bordered table-hover">
                    <tr>
                        <td class="auto-style1">&nbsp;</td>
                        <td>
                            <asp:Image ID="ImageProduct" runat="server" Width="250px" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1 info">Product Name</td>
                        <td>
                            <asp:Label ID="LabelName" runat="server" Text="Label"></asp:Label></td>
                    </tr>
                    <tr>
                        <td class="auto-style1 info">Category</td>
                        <td>
                            <asp:Label ID="LabelCategory" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1 info">SKU</td>
                        <td>
                            <asp:Label ID="LabelSKU" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1 info">Brand ID</td>
                        <td>
                            <asp:Label ID="LabelBrand" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1 info">Brand</td>
                        <td>
                            <asp:Image ID="ImageBrand" runat="server" Width="100px" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1 info">Price</td>
                        <td>
                            <asp:Label ID="LabelPrice" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1 info">Warrenty</td>
                        <td>
                            <asp:Label ID="LabelWarrentyType" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1 info">Description</td>
                        <td>
                            <asp:Label ID="LabelDescription" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1">Product in Stock</td>
                        <td>
                            <asp:Label ID="LabelQuantity" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1 info">Add Quantity (MAX 10)</td>
                        <td>
                            <asp:TextBox ID="TextBoxPurchesQuantity" runat="server"></asp:TextBox>
                            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxPurchesQuantity" ErrorMessage="Input Quantity!" CssClass="text-danger"></asp:RequiredFieldValidator>
                            &nbsp;<asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBoxPurchesQuantity" ErrorMessage="Input Valid Quantity!" MaximumValue="10" MinimumValue="1" Type="Integer" CssClass="text-danger"></asp:RangeValidator>
                            <br />
                            <asp:Label ID="LabelQuantityMessage" runat="server" CssClass="text-danger"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1 info">Add To Cart</td>
                        <td>
                            <asp:Button ID="ButtonAddToCart" runat="server" CssClass="btn btn-danger" Text="Add to Cart" OnClick="ButtonAddToCart_Click" />
                        </td>
                    </tr>
                </table>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>

    <asp:Literal ID="Literal1" runat="server"></asp:Literal>
    </asp:Content>

