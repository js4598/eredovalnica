<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication2._Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <head>
		<meta charset="utf-8"/>
		<title>e-Redovalnica</title>
		<link rel="stylesheet" href="Content/Site.css">
	</head>
	<body>	
	<script type="text/javascript">
	    function div_show() {
	        document.getElementById('abc').style.display = "block";
	    }

	    function div_hide() {
	        document.getElementById('abc').style.display = "none";
	        document.getElementById('abc1').style.display = "none";
	    }

	    function prikaziVnos() {
	        var element1 = document.getElementById('urnikDiv');
	        var element2 = document.getElementById('Moznosti12');
	        element1.style.visibility = "visible";
	        element2.style.visibility = "visible";
	    }
	    function skrij() {
	        var element1 = document.getElementById('urnikDiv');
	        var element2 = document.getElementById('Moznosti12');
	        element1.style.visibility = "hidden";
	        element2.style.visibility = "hidden";
	    }
	</script>
	<div class="abc" id="abc">
			<div id="popupContact">
				<!--<form class="form1" name="form">
				<img id="closeimg" src="images/3.png" onclick ="div_hide()">
				<h2 id="hre2">Dodaj predmet</h2>
				<hr id="hrex">
				<input id="imePredmeta" name="imePredmeta" placeholder="Ime predmeta" type="text">
				<input id="steviloDijakov" name="steviloDijakov" placeholder="Stevilo dijakov" type="text">
				<input type = "submit" id="submit" value = "Dodaj predmet" onClick="div_hide()"/>
				</form>-->
                
    <div>
        <img id="closeimg" src="images/3.png" onclick ="div_hide()">
		<h2 id="hre2">Dodaj predmet</h2>
		<hr id="hrex">
        <asp:TextBox ID="txtFirstName" placeholder="Ime predmeta" runat="server"></asp:TextBox>
        <asp:TextBox ID="txtLastName" placeholder="Stevilo dijakov" runat="server"></asp:TextBox>
        <asp:Button ID="submit" class="submit" runat="server" Text="Save" onClick="btnSave_Click"/>
    </div>

			</div>
		</div>
	<div id="big_wrapper">	
		<div id="new_div">
			<h1 id=redovalnica>e-Redovalnica</h1>
			<asp:Label runat="server" ID="ipText">prijavljeni ste kot Ucitelj</asp:Label>
		</div>
		<hr id=glavnaCrta/>
		
		<div id="LeviInDesni">
			<div id = "NavigacijaInUrnik">
				<section id="Navigacija">
					<p>Navigacija</p>
					<hr/>
					<nav id="top_menu">
						<ul>
							<li id="li1"><a href="file:///C:/Users/uporabnik/Downloads/faza2ŠtihecJan/home.html">Moji predmeti</a></li>
							<li id="li2"><a href="file:///C:/Users/uporabnik/Downloads/faza2ŠtihecJan/belezka.html">Moja beležka</a></li>
							<li id="li3"><a href="file:///D:/HTMLprojekti/e-Redovalnica/home.html">Moja sporočila</a></li>
							<li id="li4"><a href="file:///D:/HTMLprojekti/e-Redovalnica/home.html">Moj urnik</a></li>
						</ul>
					</nav>
				</section>
				<section id="Urnik">
					<p>Koledar</p>
					<hr/>
					<a href="default.asp">
						<img src="Images/koledar.png" id="SlikaUrnik" alt="Zahtevano">
					</a>					
				</section>
			</div>
			
			<div id="MzonostiInPredmeti">				
				<section id="Predmeti">
					<p>Moji predmeti:</p>
						<hr id = "CrtaPredmeti"/>
						
				    <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" Height="198px" Width="800px" AutoGenerateColumns="False">
                        <Columns>
                            <asp:BoundField DataField="imePredmeta" HeaderText="imePredmeta" SortExpression="imePredmeta" />
                            <asp:BoundField DataField="steviloDijakov" HeaderText="steviloDijakov" SortExpression="steviloDijakov" />
                            <asp:BoundField DataField="naslednjePredavanje" HeaderText="naslednjePredavanje" SortExpression="naslednjePredavanje" />
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:bazaeredovalnicaConnectionString %>" ProviderName="<%$ ConnectionStrings:bazaeredovalnicaConnectionString.ProviderName %>" SelectCommand="SELECT imePredmeta, steviloDijakov, naslednjePredavanje FROM predmeti"></asp:SqlDataSource>
						
				</section>
			
			
                


			
				<section id="Moznosti">
					<div id="podMoznosti">
							<div id="Moznost1" class="Moznost1" onClick="div_show()">
								<p>Dodaj predmet</p>
							</div>
					</div>
				</section>

                <section id="Moznosti">
					<div id="podMoznosti">
                            <asp:UpdatePanel ID="pnlHelloWorld" runat="server">
                                <ContentTemplate>
                                    <div id="Moznost1" class="Moznost1">
                                        <asp:LinkButton runat="server" class="Moznost1" ID="btnHelloWorld" OnClick="btnHelloWorld_Click" Text="Naslednje predavanje" Font-Bold="True" Font-Size="20px" Font-Names="Tahoma" ForeColor="White" />
                                    </div>
                               </ContentTemplate>

                            </asp:UpdatePanel>
					</div>
				</section>



				
				<section id="Predmeti1">
					<p>Urnik:</p>
						<hr id = "CrtaPredmeti1"/>
					<asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" Height="224px" Width="800px">
                        <Columns>
                            <asp:BoundField DataField="dan" HeaderText="dan" SortExpression="dan" />
                            <asp:BoundField DataField="osmihDevetih" HeaderText="8:00" SortExpression="osmihDevetih" />
                            <asp:BoundField DataField="devetihDesetih" HeaderText="9:00" SortExpression="devetihDesetih" />
                            <asp:BoundField DataField="desetihEnajstih" HeaderText="10:00" SortExpression="desetihEnajstih" />
                            <asp:BoundField DataField="enajstihDvanajstih" HeaderText="11:00" SortExpression="enajstihDvanajstih" />
                            <asp:BoundField DataField="dvanajstihEnih" HeaderText="12:00" SortExpression="dvanajstihEnih" />
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:bazaeredovalnicaConnectionString %>" ProviderName="<%$ ConnectionStrings:bazaeredovalnicaConnectionString.ProviderName %>" SelectCommand="Select dan, osmihDevetih, devetihDesetih, desetihEnajstih, enajstihDvanajstih, dvanajstihEnih from Urnik"></asp:SqlDataSource>
					<!--	
                    <table id="TimeTable">
						
								<tr>
									<th>Ura</th>
									<th>Ponedeljek</th>
									<th>Torek</th>
									<th>Sreda</th>
									<th>Četrtek</th>
									<th>Petek</th>
								</tr>
							 

							<tr>
									<th>8:00 - 9:00</th>                                                                                                 
									<td rowspan="2">Matematika</td>
									<td></td>
									<td></td>
									<td></td>
									<td></td>
							</tr>

							<tr>
								<th>9:00 - 10:00</th>       
									<td></td>
									<td rowspan="2">Kemija</td>
									<td>Športna vzgoja</td>
									<td>Sloveščina</td>
							</tr>

							<tr>
								<th>10:00 - 11:00</th>       
									<td></td>
									<td>Angleščina</td>
									<td>Matematika</td>
									<td>Geografija</td>
							</tr>

							<tr>
								<th>11:00 - 12:00</th>      
									<td colspan="2" rowspan="2">Informatika</td>
									<td>Šprtna vzgoja</td>
									<td>Angleščina</td>
									<td>Kemija</td>
							</tr>

							<tr>
								<th>12:00 - 13:00</th>
								
									<td>Vera in kultura</td>
									<td>Zgodovina</td>
									<td>Geografija</td>
							</tr>
						</table>
						
				-->	
						
				</section>
				<section id="Moznosti1">
					<div id="podMoznosti1">
							<div id="Moznost11">
								<p>Spremeni urnik</p>
							</div>
					</div>
				</section>				
			</div>
		</div>
	<footer id="Nogica">
		<p>@copyright Stihec Jan 2014</p>
		<hr/>
	</footer>	
	</div>
	<script type="text/javascript" src="js/jquery.js"></script>
	<script type="text/javascript" src="js/izbraniPredmetJs.js"></script>
	<script type="text/javascript" src="js/jquery.js"></script>
		<script src="http://www.google.com/jsapi"></script>
		<script>
		    google.load("jquery", "1");
		    google.load("jqueryui", "1");
		</script>
		<script>
		    $(document).ready(function () {
		        $('body').hide().fadeIn(2000);
		    });
		</script>
	</body>
</asp:Content>
