<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>ASP | Website khách sạn</title>

<!-- css files -->
<link rel="stylesheet" href="css/bootstrap.css"> <!-- Bootstrap-Core-CSS -->
<link rel="stylesheet" href="css/style.css" type="text/css" media="all" /> <!-- Style-CSS --> 
<!-- //css files -->

<!-- js -->
<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script> <!-- Necessary-JavaScript-File-For-Bootstrap --> 
<!-- //js -->

<style type="text/css">
img#imgSlide {
    position: absolute;
    max-width: 100%;
    height: 100%;
}
.footer-w3 {margin-top: 3px;}
</style>
</head>
<body>
<form id="form1" runat="server">
			
<!-- header -->
<div class="header">
	<div class="agile-top-header">
		<div class="banner-agile-top">
			<div class="number">
				<h3><i class="fa fa-phone" aria-hidden="true"></i> +84 975 853 528</h3>
			</div>
			<div class="clearfix"></div>
		</div>
		<div class="logo">
			<h1><a href="index.aspx"><span>welcome hotel</span></a></h1>
		</div>
	</div>
</div>
	
<!--Slider-->
<div class="slider">
	<div class="callbacks_container">
		<ul class="rslides" id="slider">
			<li>
				<img src="images/ban2.jpg" id="imgSlide" alt="Alternate Text" />
				<div class="slider-info">
					<h3>Welcome!</h3>
					<p>Khách sạn Welcome là khách sạn Quốc tế đầu tiên tại Hà Nội với 218 phòng nghỉ tiện nghi, hiện đại và sang trọng. Đặc biệt, với vị trí trung tâm thuận lợi kề bên Nhổn yên bình, khách sạn là điểm dừng chân lý tưởng của du khách trong và ngoài nước mỗi khi có chuyến công tác hay du lịch cùng bạn bè và người thân.</p>
				</div>
			</li>
		</ul>
	</div>
	<div class="clearfix"></div>
</div>		
<!--//Slider-->

<!--//main-->
<div class="main" id="main" style="top: 25%;">
	<div class="w3layouts_main_grid">
		<div class="booking-form-head-agile">
		<h3>Đặt phòng khách sạn</h3>
		</div>
				<div class="w3_agileits_main_grid w3l_main_grid">
					<div class="agileits_grid">
						<h5>Họ và tên * </h5>
						<div class="nam">
							<asp:TextBox ID="txtF_name" runat="server" placeholder="Tên" required="" />
						</div>
						<div class="nam1">
							<asp:TextBox ID="txtL_name" runat="server" placeholder="Họ đệm" required="" />
						</div>
						<div class="clearfix"></div>
					</div>
				</div>
				<div class="w3_agileits_main_grid w3l_main_grid">
					<div class="agileits_grid">
						<h5>E-mail *</h5>
							<asp:TextBox ID="txtEmail" type="email" runat="server" placeholder="ex : myname@gmail.com" required="" />
					</div>
				</div>
				<div class="agileits_main_grid w3_agileits_main_grid">
					<div class="wthree_grid">
						<h5>Loại phòng</h5>
						<asp:DropDownList ID="category" required="" runat="server">
							<%-- Danh sách loại phòng --%>
						</asp:DropDownList>
					</div>
				</div>
				<div class="agileits_w3layouts_main_grid w3ls_main_grid">
					<div class="agileinfo_grid">
					<h5>Ngày & giờ nhận phòng *</h5>
						
						<div class="agileits_w3layouts_main_gridl">
							<asp:TextBox ID="txtDateIn" runat="server" type="date" required=""></asp:TextBox>
						</div>
						<div class="agileits_w3layouts_main_gridr">
							<asp:TextBox type="time" ID="txtTimeIn" runat="server" required=""></asp:TextBox>
						</div>
						<div class="clearfix"> </div>
					</div>
				</div>
				<div class="agileits_w3layouts_main_grid w3ls_main_grid">
					<div class="agileinfo_grid">
					<h5>Ngày & giờ trả phòng *</h5>
						
						<div class="agileits_w3layouts_main_gridl">
							<asp:TextBox ID="txtDateOut" runat="server" type="date" required=""></asp:TextBox>
						</div>
						<div class="agileits_w3layouts_main_gridr">
							<asp:TextBox type="time" ID="txtTimeOut" runat="server" required=""></asp:TextBox>
						</div>
						<div class="clearfix"> </div>
					</div>
				</div>
				<div class="agileinfo_main_grid">
					<div class="agileits_w3layouts_grid">
						<h5>Số lượng khách *</h5>
						<asp:DropDownList ID="category1" runat="server" required="">
							<asp:ListItem Value="1" Text="1" />
							<asp:ListItem Value="2" Text="2" />
							<asp:ListItem Value="3" Text="3" />
							<asp:ListItem Value="4" Text="4" />
							<asp:ListItem Value="5" Text="5" />
						</asp:DropDownList>
					</div>
				</div>
				<div class="w3_main_grid">
					<asp:Label ID="err_msg" runat="server" />
					<div class="w3_main_grid_right">
						<asp:Button ID="btn_BookRoom" runat="server" Text="Đặt ngay" OnClick="btn_BookRoom_Click" />
					</div>
					<div class="clearfix"> </div>
				</div>
		</div>
</div>
<!-- //header -->

<!--footer-->
<div class="footer-w3">
	<p>&copy; 2018 Website Hotel | ASP.NET</p>
</div>

<a href="#" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>

</form>
</body>
</html>
