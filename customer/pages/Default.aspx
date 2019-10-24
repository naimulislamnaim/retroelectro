<%@ Page Title="" Language="C#" MasterPageFile="~/customer/pages/Customer.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="customer_pages_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="myCarousel" class="carousel slide" data-ride="carousel">
        <!-- Indicators -->
        <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
        </ol>

        <!-- Wrapper for slides -->
        <div class="carousel-inner">
            <div class="item active">
                <img src="../images/Brother-Banner.jpg" style="width:1500px; height:300px"/>
                <div class="carousel-caption">
                    <h3>New Product</h3>
                    <p>Great offer!</p>
                </div>
            </div>

            <div class="item">
                <img src="../images/Toilet-banner.jpg" style="width:1500px; height:300px"/>
                <div class="carousel-caption">
                    <h3>Discount!</h3>
                    <p>On Big Purchase!</p>
                </div>
            </div>

            <div class="item">
                <img src="../images/banner1.jpg"  style="width:1500px; height:300px"/>
                <div class="carousel-caption">
                    <p>Buy one get one free!</p>
                </div>
            </div>
        </div>

        <!-- Left and right controls -->
        <a class="left carousel-control" href="#myCarousel" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#myCarousel" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>
    <br />

    <center>

    <div class="container">
        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/customer/images/button_images/1-workbench.jpg" PostBackUrl="~/customer/pages/Product.aspx"/>
        <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/customer/images/button_images/2-components.jpg" PostBackUrl="~/customer/pages/Product.aspx"/>
        <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/customer/images/button_images/2-security.jpg" PostBackUrl="~/customer/pages/Product.aspx"/>
        <asp:ImageButton ID="ImageButton4" runat="server" ImageUrl="~/customer/images/button_images/3-ITcomms.jpg" PostBackUrl="~/customer/pages/Product.aspx"/><br />
        <asp:ImageButton ID="ImageButton5" runat="server" ImageUrl="~/customer/images/button_images/4-soundvideo.jpg" PostBackUrl="~/customer/pages/Product.aspx"/>
        <asp:ImageButton ID="ImageButton6" runat="server" ImageUrl="~/customer/images/button_images/5-hobbiesgadgets.jpg" PostBackUrl="~/customer/pages/Product.aspx"/>
        <asp:ImageButton ID="ImageButton7" runat="server" ImageUrl="~/customer/images/button_images/6-cablesconnectors.jpg" PostBackUrl="~/customer/pages/Product.aspx"/>
        <asp:ImageButton ID="ImageButton8" runat="server" ImageUrl="~/customer/images/button_images/8-power.jpg" PostBackUrl="~/customer/pages/Product.aspx"/>
        <br />
        <br />
        <br />
        <asp:Image ID="Image2" runat="server" ImageUrl="~/customer/images/Jaycar-CarouselTiles-Mar18-2-1.png" />
&nbsp;<asp:Image ID="Image3" runat="server" ImageUrl="~/customer/images/Jaycar-CarouselTiles-Mar18-2-2.png" />
&nbsp;<asp:Image ID="Image4" runat="server" ImageUrl="~/customer/images/Jaycar-CarouselTiles-Mar18-2-3.png" />
&nbsp;<asp:Image ID="Image5" runat="server" ImageUrl="~/customer/images/Jaycar-CarouselTiles-Mar18-2-4.png" Width="182px" />
&nbsp;<asp:Image ID="Image6" runat="server" ImageUrl="~/customer/images/Jaycar-CarouselTiles-Mar18-2-5.png" />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    </div>
        </center>

<nav class="navbar navbar-inverse navbar-bottom">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">Retro Electro</a>
    </div>
    <ul class="nav navbar-nav">
      <li><a href="#"><i class="fa fa-2x fa-facebook"></i></a></li>
        <li><a href="#"><i class="fa fa-2x fa-twitter"></i></a></li>
        <li><a href="#"><i class="fa fa-2x fa-google-plus"></i></a></li>
        <li><a href="#"><i class="fa fa-2x fa-instagram"></i></a></li>
    </ul>
  </div>
</nav>
</asp:Content>

