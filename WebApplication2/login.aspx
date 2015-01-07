<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="WebApplication2.login" %>

<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8"/>
		<title>e-Redovalnica</title>
		<link rel="stylesheet" href="Content/prijava.css">		
	</head>
	<body id="telo">
	<div id="big_wrapper" class="fade">	
		<div id="new_div" class="fade">
			<h1 id=redovalnica>e-Redovalnica</h1>		
		</div>
		<hr id=glavnaCrta/>
		<div id="form-main">
			<div id="form-div">
				<form class="form" runat="server" name="form1" action="#" method="post">
                    
                    

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat=server 
                        ControlToValidate=name
                        ErrorMessage="Vpišite ime.">
                    </asp:RequiredFieldValidator>
                    
                   <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat=server 
                    ControlToValidate="name" 
                    ErrorMessage="V imenu so lahko samo črke." 
                    ValidationExpression="[a-zA-Z]{2,20}" />

                    <asp:CustomValidator id="CustomValidator1" runat="server" 
                      OnServerValidate="preveriVpis" 
                      ControlToValidate="name" 
                      ErrorMessage="Uporabnik s tem imenom je ze vpisan.">
                    </asp:CustomValidator>


				  <p class="name">
					<input runat="server" name="ime" type="text"  class="feedback-input"  placeholder="Ime" id="name" />
				  </p>
				  <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat=server 
                        ControlToValidate=passwd
                        ErrorMessage="Vpišite priimek.">
                    </asp:RequiredFieldValidator>

                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat=server 
                    ControlToValidate="passwd" 
                    ErrorMessage="V priimku so lahko samo črke." 
                    ValidationExpression="[a-zA-ZŠ]{2,20}" />
				  <p class="password">
					<input runat="server" name="priimek" type="text" class="feedback-input" id="passwd" placeholder="Priimek" />
				  </p>
				   <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat=server 
                        ControlToValidate=email
                        ErrorMessage="Vpišite geslo.">
                    </asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat=server 
                    ControlToValidate="email" 
                    ErrorMessage="Geslo ne sme vsebovati posebnih znakov." 
                    ValidationExpression="[a-zA-Z0-9]{3,16}" />
				  <p class="email">
					<input runat="server" name="geslo" type="password" class="feedback-input" id="email" placeholder="Geslo" />
				  </p>
				  
				  
				  <select id="Selektor" class="fade">
					  <option value="Ucitelj">
						Ucitelj
					  </option>
					  <option value="Dijak">Dijak</option>
					  <option value="Skrbnik">Skrbnik</option>
				  </select>
				       
					<div class="submit" class="fade">
						<asp:button runat="server" type="submit" value="PRIJAVA" id="buttonBlue" name="submit" onClick="preusmeri"/>
						<div class="ease"></div>
					</div>
				</form>
			</div>
		</div>	
		
	</div>
		
	</body>
</html>
