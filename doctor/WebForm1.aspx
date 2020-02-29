<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="doctor.WebForm1" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<!-- Start WOWSlider.com HEAD section -->
<link rel="stylesheet" type="text/css" href="engine1/style.css" />
<script type="text/javascript" src="engine1/jquery.js"></script>
<!-- End WOWSlider.com HEAD section -->
    <title></title>
    <style type="text/css">
        .BarIndicatorweak
{
    color:Red;
    background-color:Red;
}
.BarIndicatoraverage
{
    color:Blue;
    background-color:Blue;
}
.BarIndicatorgood
{
    color:Green;
    background-color:Green;
}

.BarBorder
{
    border-style:solid;
    border-width:1px;
    padding:2px 2px 2px 2px;
    width:200px;
    vertical-align:middle;
}
        .style1
        {
            width: 100%;
        }
        .style2
        {
            font-family: "Arial Black";
            font-size: xx-large;
            color: #FFFFFF;
            }
        .style3
        {
            height: 23px;
        }
        .style4
        {
            color: #CC3300;
        }
        .style5
        {
            font-family: Arial;
        }
        td
        {
            text-align:left;
        }
        .style6
        {
            width: 12px;
           
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </asp:ToolkitScriptManager>
    <table class="style1">
        <tr>
            <td colspan="4">
                &nbsp;</td>
        </tr>
        <tr>
            <td bgcolor="#006666" colspan="4" class="style6">
                <br />
                <br />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <span class="style2">&nbsp; Register </span>
            </td>
        </tr>
        <tr>
            <td rowspan="19" style="width:100px;">
                &nbsp;</td>
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <span class="style4">*</span>&nbsp;-Mandatory Fields</td>
            <td>
                &nbsp;</td>
            <td class="style6" rowspan:"19"  style="width:960px;" rowspan="19">
               <!-- Start WOWSlider.com BODY section -->
<div id="wowslider-container1">
<div class="ws_images"><ul>
		<li><a href="www.banasthalividyapith.com"><img src="data1/images/bv.jpg" alt="BV" title="BV" id="wows1_0"/></a></li>
		<li><a href="www.flipkart.com"><img src="data1/images/flipkart.jpg" alt="FLIPKART" title="FLIPKART" id="wows1_1"/></a></li>
		<li><a href="www.fortis.com"><img src="data1/images/fortis.jpg" alt="FORTIS" title="FORTIS" id="wows1_2"/></a></li>
		<li><a href="www.netflix.com"><img src="data1/images/netflix.jpg" alt="NETFLIX" title="NETFLIX" id="wows1_3"/></a></li>
		<li><a href="www.oppo.com"><img src="data1/images/oppo.jpg" alt="OPPO" title="OPPO" id="wows1_4"/></a></li>
		<li><a href="http://wowslider.net"><img src="data1/images/pizza_hut.jpg" alt="jquery slideshow" title="PIZZA HUT" id="wows1_5"/></a></li>
		<li><img src="data1/images/zomato.jpg" alt="ZOMATO" title="ZOMATO" id="wows1_6"/></li>
	</ul></div>
	<div class="ws_bullets"><div>
		<a href="#" title="BV"><span><img src="data1/tooltips/bv.jpg" alt="BV"/>1</span></a>
		<a href="#" title="FLIPKART"><span><img src="data1/tooltips/flipkart.jpg" alt="FLIPKART"/>2</span></a>
		<a href="#" title="FORTIS"><span><img src="data1/tooltips/fortis.jpg" alt="FORTIS"/>3</span></a>
		<a href="#" title="NETFLIX"><span><img src="data1/tooltips/netflix.jpg" alt="NETFLIX"/>4</span></a>
		<a href="#" title="OPPO"><span><img src="data1/tooltips/oppo.jpg" alt="OPPO"/>5</span></a>
		<a href="#" title="PIZZA HUT"><span><img src="data1/tooltips/pizza_hut.jpg" alt="PIZZA HUT"/>6</span></a>
		<a href="#" title="ZOMATO"><span><img src="data1/tooltips/zomato.jpg" alt="ZOMATO"/>7</span></a>
	</div></div><div class="ws_script" style="position:absolute;left:-99%"><a href="http://wowslider.net">bootstrap slider</a> by WOWSlider.com v8.8</div>
<div class="ws_shadow"></div>
</div>	
<script type="text/javascript" src="engine1/wowslider.js"></script>
<script type="text/javascript" src="engine1/script.js"></script>
<!-- End WOWSlider.com BODY section -->
               
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="First Name " 
                    style="font-weight: 700"></asp:Label>
                <span class="style4">*</span><br />
                <asp:TextBox ID="TextBox1" runat="server" Width="326px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="Enter Your Name" 
                    style="font-weight: 700; color: #CC0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label14" runat="server" Text="Last Name" 
                    style="font-weight: 700"></asp:Label>
                <span class="style4">*</span><br />
                <asp:TextBox ID="TextBox2" runat="server" Width="326px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="Enter The Field" 
                    style="font-weight: 700; color: #CC0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Email" style="font-weight: 700"></asp:Label>
                <span class="style4">*</span><br />
                <asp:TextBox ID="TextBox3" runat="server" TextMode="Email" Width="326px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="TextBox3" ErrorMessage="Enter Email id" 
                    style="color: #CC0000; font-weight: 700"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="TextBox3" ErrorMessage="Expression Invalid" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                    style="font-weight: 700; color: #CC0000"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label4" runat="server" Text="Mobile" style="font-weight: 700"></asp:Label>
                <span class="style4">*</span><br />
                <asp:TextBox ID="TextBox4" runat="server" TextMode="Phone" Width="326px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="TextBox4" ErrorMessage="Enter Mobile Number" 
                    style="color: #CC0000; font-weight: 700"></asp:RequiredFieldValidator>
                <br />
                <asp:RangeValidator ID="RangeValidator1" runat="server" 
                    ControlToValidate="TextBox4" ErrorMessage="Range Invalid" 
                    MaximumValue="999999999999" MinimumValue="11111111111" 
                    style="color: #CC0000; font-weight: 700"></asp:RangeValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label15" runat="server" Text="Gender" style="font-weight: 700"></asp:Label>
                <span class="style4">*</span><br />
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                    <asp:ListItem>Other</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="DropDownList1" ErrorMessage="Mandatory Field" 
                    style="color: #CC0000; font-weight: 700"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label16" runat="server" Text="Date of Birth" 
                    style="font-weight: 700"></asp:Label>
                <span class="style4">*</span><br />
                <asp:TextBox ID="TextBox6" runat="server" Width="326px" TextMode="Date"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="TextBox6" ErrorMessage="Pick The Date" 
                    style="color: #CC0000; font-weight: 700"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label7" runat="server" Text="State" style="font-weight: 700"></asp:Label>
                <span class="style4">*</span><br />
                <asp:DropDownList ID="DropDownList2" runat="server">
                    <asp:ListItem>Andhra Pradesh</asp:ListItem>
                    <asp:ListItem>Arunachal Pradesh</asp:ListItem>
                    <asp:ListItem>Assam</asp:ListItem>
                    <asp:ListItem>Bihar</asp:ListItem>
                    <asp:ListItem>Chattisgarh</asp:ListItem>
                    <asp:ListItem>Goa</asp:ListItem>
                    <asp:ListItem>Gujarat</asp:ListItem>
                    <asp:ListItem>Haryana</asp:ListItem>
                    <asp:ListItem>Himachal Pradesh</asp:ListItem>
                    <asp:ListItem>Jammu and Kashmir</asp:ListItem>
                    <asp:ListItem>Jharkhand</asp:ListItem>
                    <asp:ListItem>Karnataka</asp:ListItem>
                    <asp:ListItem>Kerala</asp:ListItem>
                    <asp:ListItem>Madhya Pradesh</asp:ListItem>
                    <asp:ListItem>Maharashtra</asp:ListItem>
                    <asp:ListItem>Manipur</asp:ListItem>
                    <asp:ListItem>Meghalya</asp:ListItem>
                    <asp:ListItem>Mizoram</asp:ListItem>
                    <asp:ListItem>Nagaland</asp:ListItem>
                    <asp:ListItem>Odisha</asp:ListItem>
                    <asp:ListItem>Punjab</asp:ListItem>
                    <asp:ListItem>Rajasthan</asp:ListItem>
                    <asp:ListItem>Sikkim</asp:ListItem>
                    <asp:ListItem>Tamil Nadu</asp:ListItem>
                    <asp:ListItem>Telangana</asp:ListItem>
                    <asp:ListItem>Tripura</asp:ListItem>
                    <asp:ListItem>Uttarakhand</asp:ListItem>
                    <asp:ListItem>Uttar Pradesh</asp:ListItem>
                    <asp:ListItem>West Bengal</asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="DropDownList2" ErrorMessage="Enter State" 
                    style="color: #CC0000; font-weight: 700"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label8" runat="server" Text="City" style="font-weight: 700"></asp:Label>
                <br />
                <asp:TextBox ID="TextBox8" runat="server" Width="326px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                <asp:Label ID="Label9" runat="server" Text="Address" style="font-weight: 700"></asp:Label>
                <br />
                <asp:TextBox ID="TextBox9" runat="server" TextMode="MultiLine" Width="326px"></asp:TextBox>
            </td>
            <td class="style3">
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label10" runat="server" Text="Age" style="font-weight: 700"></asp:Label>
                <br />
                <asp:TextBox ID="TextBox10" runat="server" Width="326px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label11" runat="server" Text="Password" style="font-weight: 700"></asp:Label>
                <span class="style4">*</span><br />
                <asp:TextBox ID="TextBox11" runat="server" TextMode="Password" Width="326px"></asp:TextBox>
                   <asp:PasswordStrength ID="PasswordStrength2" 
                      runat="server" 
        TargetControlID="TextBox11" 
        RequiresUpperAndLowerCaseCharacters="true"
        MinimumNumericCharacters="1" 
        MinimumSymbolCharacters="1" 
        MinimumUpperCaseCharacters="1" 
        PreferredPasswordLength="8"
        DisplayPosition="RightSide" 
        StrengthIndicatorType="BarIndicator" 
        BarBorderCssClass="BarBorder" 
StrengthStyles="BarIndicatorweak;BarIndicatoraverage;BarIndicatorgood;">
</asp:PasswordStrength>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                    ControlToValidate="TextBox11" ErrorMessage="Enter Password" 
                    style="color: #CC0000; font-weight: 700"></asp:RequiredFieldValidator>
                <br />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label12" runat="server" Text="Confirm Password" 
                    style="font-weight: 700"></asp:Label>
                <span class="style4">*</span><br />
                <asp:TextBox ID="TextBox12" runat="server" TextMode="Password" Width="326px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                    ControlToValidate="TextBox12" ErrorMessage="Confirm Your Password" 
                    style="font-weight: 700; color: #CC0000"></asp:RequiredFieldValidator>
                <br />
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="TextBox11" ControlToValidate="TextBox12" 
                    ErrorMessage="Password don't match" 
                    style="color: #CC0000; font-weight: 700"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" BackColor="#CC3300" ForeColor="White" 
                    Height="39px" Text="Register" Width="335px" onclick="Button1_Click" 
                    onclientclick="False" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td rowspan="2">
                <asp:Panel ID="Panel1" runat="server" Visible="False">
                    <br />
                    <span class="style5"><strong>You have been successfully registered.</strong></span><strong><br class="style5" />
                    </strong><span class="style5"><strong>Your Id is: </strong></span>&nbsp;<asp:Label 
                        ID="Label17" runat="server" style="font-weight: 700; font-size: x-large" 
                        Text="Label"></asp:Label>
                    <br />
                    <br />
                    <span class="style5"><strong>Click here to proceed.</strong></span><br /> 
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" Height="33px" onclick="Button2_Click" 
                        style="color: #FFFFFF; background-color: #CC0000" Text="Submit" 
                        Width="176px" CausesValidation="False" UseSubmitBehavior="False" />
                    <br />
                </asp:Panel>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    <div>
    
    </div>
    </form>
</body>
</html>
