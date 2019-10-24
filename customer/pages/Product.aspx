<%@ Page Title="" Language="C#" MasterPageFile="~/customer/pages/Customer.master" AutoEventWireup="true" CodeFile="Product.aspx.cs" Inherits="customer_pages_Product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        .card {
            box-shadow: 0 1px 3px 0 rgba(0,0,0,0.2);
            transition: 0.5s;
            width: 40%;
            background-color: #f0f5f5;
            margin: 20px;
            border-top-left-radius:40px;
            border-bottom-right-radius:40px;
            border: 6px solid white;
            
        }

            .card:hover {
                box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2);
            }

        .container {
            padding: 2px 16px;
        }

        .auto-style1 {
            width: 162px;
            text-align: center;
        }
        .auto-style2 {
            margin-left: auto;
            margin-right: auto;
            padding: 2px 15px;
        }

    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:scriptmanager runat="server"></asp:scriptmanager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <div id="div1" class="container">
                <p>Vier product with category:</p>
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                    <asp:ListItem Value="0">--select--</asp:ListItem>
                </asp:DropDownList>
                &nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBoxSkuSearch" runat="server" placeholder="Search with Brand name or SKU..." Width="335px" OnTextChanged="TextBoxSkuSearch_TextChanged"></asp:TextBox>
                &nbsp;<asp:Button ID="ButtonSearchProduct" runat="server" OnClick="ButtonSearchProduct_Click" Text="Search" cssClass="btn btn-primary"/>
                <br />
                <br />
                <hr />

                <asp:DataList ID="DataList1" runat="server" RepeatColumns="4" CellPadding="3" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" OnItemCommand="DataList1_ItemCommand">
                    <FooterStyle BackColor="White" ForeColor="#000066" />
                    <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                    <ItemStyle ForeColor="#000066" />
                    <ItemTemplate>
                        <div class="card" style="width: 18rem;">
                        <div class="auto-style1" style="padding:20px;">

                        <asp:Image ID="imgProduct" runat="server" ImageUrl='<%# Eval("ProductImage", "../../admin/pages/Images/{0}") %>' Width="100px" CssClass="auto-style2" />
                        <br />
                        <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' Visible="False"></asp:Label>
                        <br />
                            name:&nbsp;
                        <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("ProductName")  %>' cssClass="card-title"></asp:Label>
                            <br />
                            SKU:<asp:Label ID="SKULabel" runat="server" Text='<%# Eval("SKU") %>'></asp:Label>
                            <br />
                            Price:&nbsp;<asp:Label ID="PriceLabel" runat="server" cssClass="card-text" Text='<%# Eval("Price") %>'></asp:Label>
                            <br />
                            <asp:Label ID="CatLabel" runat="server" Text='<%# Eval("CategoryName") %>' Visible="False"></asp:Label>
                            &nbsp;<asp:Label ID="BrLabel" runat="server" Text='<%# Eval("BrandName") %>' Visible="False"></asp:Label>
                            <br />
                            <asp:Label ID="WarLabel" runat="server" Text='<%# Eval("WarrentyType") %>' Visible="False"></asp:Label>
                            <asp:Label ID="DesLabel" runat="server" Text='<%# Eval("ProductDescription") %>' Visible="False"></asp:Label>
                            <br />
                            <asp:Label ID="QuantityLabel" runat="server" Text='<%# Eval("Quantity") %>' Visible="False"></asp:Label>
                            <br />
                            <asp:Image ID="BrandImage" runat="server" ImageUrl='<%# Eval("BrandImage", "../../admin/pages/Images/{0}") %>' Visible="False" Width="25px" />
                            <br />
                            <br />
                            <asp:LinkButton ID="LinkButton1" runat="server" CommandName="bbb" ToolTip="Select" CssClass="btn btn-primary">View Item</asp:LinkButton>

                            </div>
                            </div>
                    </ItemTemplate>
                    <SelectedItemStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                </asp:DataList>

            </div>
        </ContentTemplate>

    </asp:UpdatePanel>
</asp:Content>

