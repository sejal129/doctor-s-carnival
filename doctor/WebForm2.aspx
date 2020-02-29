<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="doctor.WebForm2" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
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
            color: #CC0000;
            font-weight: bold;
        }
        .style6
        {
            color: #000000;
            font-weight: bold;
        }
        .style7
        {
            font-family: Arial;
            background-color: #FFFFFF;
        }
        .style8
        {
            color: #000000;
            font-weight: bold;
            font-family: Arial;
            background-color: #FFFFFF;
        }
        .style9
        {
            color: #000000;
            font-family: Arial;
            background-color: #FFFFFF;
        }
        .style10
        {
            font-family: Arial;
        }
        .style11
        {
            color: #000000;
        }
        .style12
        {
            width: 100px;
        }
        .style14
        {
        }
        .style15
        {
            height: 23px;
            width: 486px;
        }
    </style>

    </head>
     <body>
     
  
  
   <form id="form2" runat="server">
   
   <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
   </asp:ToolkitScriptManager>
  
    <table class="style1">
        <tr>
           <td bgcolor="#006666" colspan="5">
                <br />
                <br />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <span class="style2">&nbsp; Register </span>
            </td>
        </tr>
        <tr>
            <td rowspan="19">
                <br />
            </td>
            <td>
                &nbsp;</td>
            <td class="style14">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <span class="style4">*</span><strong>&nbsp;-Mandatory Fields</strong></td>
            <td class="style12" rowspan="12" style="width:70px">
                <br />
                <br />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style14">
                <asp:Label ID="Label1" runat="server" Text="First Name " 
                    style="font-weight: 700"></asp:Label>
                <span class="style4">*</span><br />
                <asp:TextBox ID="TextBox1" runat="server" Width="326px"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="Enter Your Name" 
                    style="color: #CC0000; font-weight: 700"></asp:RequiredFieldValidator>
            </td>
            <td>
                <asp:Label ID="Label9" runat="server" Text="Clinic Address" 
                    style="font-weight: 700"></asp:Label>
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" Width="97px" 
                    onselectedindexchanged="RadioButtonList1_SelectedIndexChanged" 
                    AutoPostBack="True">
                    <asp:ListItem>Yes</asp:ListItem>
                    <asp:ListItem>No</asp:ListItem>
                </asp:RadioButtonList>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                <asp:TextBox ID="TextBox9" runat="server" TextMode="MultiLine" Width="326px" 
                    Visible="False"></asp:TextBox>
                <br />
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style14">
                <asp:Label ID="Label14" runat="server" Text="Last Name" 
                    style="font-weight: 700"></asp:Label>
                <span class="style4">*</span><br />
                <asp:TextBox ID="TextBox2" runat="server" Width="326px"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="Enter The Field" 
                    style="color: #CC0000; font-weight: 700"></asp:RequiredFieldValidator>
            </td>
            <td>
                <asp:Label ID="Label13" runat="server" Text="Specialisation" 
                    style="font-weight: 700"></asp:Label>
                <span class="style4">*</span><br />
                <asp:DropDownList ID="DropDownList3" runat="server">
                <asp:ListItem> </asp:ListItem>
                    <asp:ListItem>Allergists/Immunologists</asp:ListItem>
                    <asp:ListItem>Anesthesiologists</asp:ListItem>
                    <asp:ListItem>Cardiologists</asp:ListItem>
                    <asp:ListItem>Colon and Rectal Surgeons</asp:ListItem>
                    <asp:ListItem>Dermatologists</asp:ListItem>
                    <asp:ListItem>Endocriniologists</asp:ListItem>
                    <asp:ListItem>Family Physician</asp:ListItem>
                    <asp:ListItem>Gaestroentrologists</asp:ListItem>
                    <asp:ListItem>Geriatric Medicine Specialists</asp:ListItem>
                    <asp:ListItem>Hematologists</asp:ListItem>
                    <asp:ListItem>Infectious Disease Specialists</asp:ListItem>
                    <asp:ListItem>Internists</asp:ListItem>
                    <asp:ListItem>Nephrologists</asp:ListItem>
                    <asp:ListItem>Neurologists</asp:ListItem>
                    <asp:ListItem>Obstetricians/Gynecologists</asp:ListItem>
                    <asp:ListItem>Oncologists</asp:ListItem>
                    <asp:ListItem>Ophthalmologists</asp:ListItem>
                    <asp:ListItem>Osteopaths</asp:ListItem>
                    <asp:ListItem>Otolaryngologists</asp:ListItem>
                    <asp:ListItem>Pathologists</asp:ListItem>
                    <asp:ListItem>Pediatricians</asp:ListItem>
                    <asp:ListItem>Physiatrists</asp:ListItem>
                    <asp:ListItem>Plastic Surgeons</asp:ListItem>
                    <asp:ListItem>Podiatrists</asp:ListItem>
                    <asp:ListItem>Preventive Medicine Specialists</asp:ListItem>
                    <asp:ListItem>Psychiatrists</asp:ListItem>
                    <asp:ListItem>Pulmonologists</asp:ListItem>
                    <asp:ListItem>Radiologists</asp:ListItem>
                    <asp:ListItem>Rheumatologists</asp:ListItem>
                    <asp:ListItem>Sports Medicine Specialists</asp:ListItem>
                    <asp:ListItem>General Surgeons</asp:ListItem>
                    <asp:ListItem>Urologists</asp:ListItem>
                </asp:DropDownList>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                    ControlToValidate="DropDownList3" ErrorMessage="Enter Specialisation" 
                    style="font-weight: 700; color: #CC0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style14">
                <asp:Label ID="Label3" runat="server" Text="Email" style="font-weight: 700"></asp:Label>
                <span class="style4">*</span><br />
                <asp:TextBox ID="TextBox3" runat="server" TextMode="Email" Width="326px"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="TextBox3" ErrorMessage="Enter Email Id" 
                    CssClass="style5"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="TextBox3" ErrorMessage="Expression Invalid" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                    CssClass="style5" Display="Dynamic"></asp:RegularExpressionValidator>
            </td>
            <td>
                <asp:Label ID="Label17" runat="server" Text="Qualification" 
                    style="font-weight: 700"></asp:Label>
                <span class="style4">*<br />
                <asp:ListBox ID="ListBox3" runat="server" SelectionMode="Multiple" 
                    Height="149px" Width="150px">
                    <asp:ListItem>MBBS</asp:ListItem>
                    <asp:ListItem>BMBS</asp:ListItem>
                    <asp:ListItem>MBChB</asp:ListItem>
                    <asp:ListItem>MBBCh</asp:ListItem>
                    <asp:ListItem>M.D</asp:ListItem>
                    <asp:ListItem>Dr.MuD</asp:ListItem>
                    <asp:ListItem>Dr.MeD</asp:ListItem>
                    <asp:ListItem>DO</asp:ListItem>
                    <asp:ListItem>B.A.M.S</asp:ListItem>
                    <asp:ListItem>B.H.M.S</asp:ListItem>
                    <asp:ListItem>MD(Res)</asp:ListItem>
                    <asp:ListItem>D.M</asp:ListItem>
                    <asp:ListItem>PhD</asp:ListItem>
                    <asp:ListItem>DPhil</asp:ListItem>
                    <asp:ListItem>MCM</asp:ListItem>
                    <asp:ListItem>MMSc</asp:ListItem>
                    <asp:ListItem>MMEdSc</asp:ListItem>
                    <asp:ListItem>MM</asp:ListItem>
                    <asp:ListItem>MMed</asp:ListItem>
                    <asp:ListItem>MPhil</asp:ListItem>
                    <asp:ListItem>MS</asp:ListItem>
                    <asp:ListItem>MSurg</asp:ListItem>
                    <asp:ListItem>MSc</asp:ListItem>
                    <asp:ListItem>DClinSurg</asp:ListItem>
                    <asp:ListItem>DMSc</asp:ListItem>
                    <asp:ListItem>DSurg</asp:ListItem>
                </asp:ListBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                    ControlToValidate="ListBox3" ErrorMessage="Mandatory Field" 
                    style="font-weight: 700; color: #CC0000"></asp:RequiredFieldValidator>
                </span></td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style14">
                <asp:Label ID="Label4" runat="server" Text="Mobile" style="font-weight: 700"></asp:Label>
                <span class="style4">*</span><br />
                <asp:TextBox ID="TextBox4" runat="server" Width="326px"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="TextBox4" ErrorMessage="Enter Mobile Number" 
                    CssClass="style5"></asp:RequiredFieldValidator>
                <br />
                <asp:RangeValidator ID="RangeValidator1" runat="server" 
                    ControlToValidate="TextBox4" ErrorMessage="Range Invalid" 
                    MaximumValue="999999999999" MinimumValue="11111111111" CssClass="style5" 
                    Display="Dynamic"></asp:RangeValidator>
            </td>
            <td>
                <br />
                <asp:Label ID="Label28" runat="server" Text="Position" 
                    style="font-weight: 700"></asp:Label>
                <br />
                <asp:TextBox ID="TextBox18" runat="server" Height="26px" Width="193px"></asp:TextBox>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;</td>
            <td class="style14">
                <asp:Label ID="Label15" runat="server" Text="Gender" style="font-weight: 700"></asp:Label>
                <span class="style4">*</span><br />
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                    <asp:ListItem>Other</asp:ListItem>
                </asp:DropDownList>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="DropDownList1" ErrorMessage="Mandatory Field" 
                    style="font-weight: 700; color: #CC0000"></asp:RequiredFieldValidator>
            </td>
            <td>
                <asp:Label ID="Label19" runat="server" Text="Hospitals " 
                    style="font-weight: 700"></asp:Label>
                <span class="style4">*</span><br />
                <asp:TextBox ID="TextBox21" runat="server" Height="29px" Width="167px"></asp:TextBox>
                <br />
                <asp:Label ID="Label29" runat="server" Text="Floor No. " 
                    style="font-weight: 700"></asp:Label>
                <span class="style4">*
                <br />
                <asp:TextBox ID="TextBox22" runat="server" Height="31px" Width="166px"></asp:TextBox>
                <br />
                <asp:Label ID="Label30" runat="server" Text="Room No." 
                    style="font-weight: 700; color: #000000;"></asp:Label>
                *
                <br />
                <asp:TextBox ID="TextBox23" runat="server" Height="28px" Width="167px"></asp:TextBox>
                <br />
                <asp:Label ID="Label31" runat="server" Text="Address" 
                    style="font-weight: 700; color: #000000;"></asp:Label>
                *&nbsp;&nbsp;&nbsp;
                <br />
                </span>
                <asp:TextBox ID="TextBox24" runat="server" Height="28px" Width="161px"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" 
                    ControlToValidate="TextBox21" ErrorMessage="Required Field" 
                    style="font-weight: 700; color: #CC0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style14">
                <asp:Label ID="Label16" runat="server" Text="Date of Birth" 
                    style="font-weight: 700"></asp:Label>
                <span class="style4">*</span><br />
                <asp:TextBox ID="TextBox6" runat="server" Width="326px" TextMode="Date"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="TextBox6" ErrorMessage="Pick The Date" 
                    style="font-weight: 700; color: #CC0000"></asp:RequiredFieldValidator>
            </td>
            <td>
                <asp:Label ID="Label20" runat="server" Text="Fees (in rupees)" 
                    style="font-weight: 700"></asp:Label>
                <span class="style4">*</span><br />
                <asp:TextBox ID="TextBox14" runat="server" Width="326px"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" 
                    ControlToValidate="TextBox14" ErrorMessage="Required Entry" 
                    style="font-weight: 700; color: #CC0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style14">
                <asp:Label ID="Label7" runat="server" Text="State" style="font-weight: 700"></asp:Label>
                <span class="style4">*</span><br />
                <asp:DropDownList ID="DropDownList2" runat="server">
                    <asp:ListItem>Andhra Pradesh</asp:ListItem>
                    <asp:ListItem>Arunachal Pradesh</asp:ListItem>
                    <asp:ListItem>Assam</asp:ListItem>
                    <asp:ListItem>Bihar</asp:ListItem>
                    <asp:ListItem>Chattisgarh</asp:ListItem>
                    <asp:ListItem>Delhi</asp:ListItem>
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
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="DropDownList2" ErrorMessage="Enter State" 
                    style="font-weight: 700; color: #CC0000"></asp:RequiredFieldValidator>
            </td>
            <td>
                <asp:Label ID="Label21" runat="server" Text="Research Areas" 
                    style="font-weight: 700"></asp:Label>
                <br />
                <asp:TextBox ID="TextBox15" runat="server" Width="325px" TextMode="MultiLine"></asp:TextBox>
            &nbsp;&nbsp; </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style14">
                <asp:Label ID="Label8" runat="server" Text="City" style="font-weight: 700"></asp:Label>
                <br />
                <asp:TextBox ID="TextBox8" runat="server" Width="326px"></asp:TextBox>
            </td>
            <td>
                <asp:Label ID="Label25" runat="server" Text="Availability:" 
                    style="font-weight: 700"></asp:Label>
                <span class="style4">*</span><br />
                <asp:ListBox ID="ListBox4" runat="server" SelectionMode="Multiple" 
                    Height="119px" Width="138px">
                    <asp:ListItem>Monday</asp:ListItem>
                    <asp:ListItem>Tuesday</asp:ListItem>
                    <asp:ListItem>Wednesday</asp:ListItem>
                    <asp:ListItem>Thursday</asp:ListItem>
                    <asp:ListItem>Friday</asp:ListItem>
                    <asp:ListItem>Saturday</asp:ListItem>
                    <asp:ListItem>Sunday</asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                </asp:ListBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" 
                    ControlToValidate="ListBox4" ErrorMessage="Mandatory Field" 
                    style="font-weight: 700; color: #CC0000"></asp:RequiredFieldValidator>
                <br />
            </td>
        </tr>
        <tr>
            <td class="style3">
            </td>
            <td class="style15">
                <asp:Label ID="Label10" runat="server" Text="Age" style="font-weight: 700"></asp:Label>
                <br />
                <asp:TextBox ID="TextBox10" runat="server" Width="326px" Height="24px"></asp:TextBox>
                <br />
            </td>
            <td class="style3">
                <asp:Label ID="Label24" runat="server" Text="Timing" style="font-weight: 700"></asp:Label>
                <span class="style4">*</span><br />
                <span class="style4"><br />
                </span>
                <span class="style11"><strong>From: </strong>
                </span>
                <span class="style4">&nbsp;</span><asp:TextBox ID="TextBox19" runat="server" 
                    Height="25px" Width="108px" 
                    TextMode="Time"></asp:TextBox>
            &nbsp;
                <br />
                <strong>To:&nbsp; </strong>&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox20" runat="server" Height="24px" Width="108px" 
                    TextMode="Time" ></asp:TextBox>
            &nbsp;<br />
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style14">
                <asp:Label ID="Label22" runat="server" Text="Experience (in years)" 
                    style="font-weight: 700"></asp:Label>
                <br />
                <br />
                <asp:TextBox ID="TextBox16" runat="server" Width="326px"></asp:TextBox>
            </td>
            <td>
                <span class="style4">
                <br />
                <asp:Label ID="Label11" runat="server" Text="Password" 
                    style="font-weight: 700; color: #000000;"></asp:Label>
                *</span><br />
                <asp:TextBox ID="TextBox11" runat="server" TextMode="Password" Width="269px" 
                    style="margin-bottom: 0px"></asp:TextBox>
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
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                    ControlToValidate="TextBox11" ErrorMessage="Enter Password" 
                    style="font-weight: 700; color: #CC0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style14">
                <asp:Label ID="Label26" runat="server" Text="Upload Photo" 
                    style="font-weight: 700"></asp:Label>
                <br />
                <asp:FileUpload ID="FileUpload1" runat="server" />
                <br />
                <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Upload" 
                    Height="29px" style="color: #FFFFFF; background-color: #CC0000" 
                    Width="110px" CausesValidation="False" />
                <br />
                <asp:Image ID="Image1" runat="server" Height="91px" Width="111px" />
                <br />
                <br />
                <br />
            </td>
            <td>
                <br />
                <br />
                <span class="style4">
                <asp:Label ID="Label12" runat="server" Text="Confirm Password" 
                    style="font-weight: 700; color: #000000"></asp:Label>
                *<br />
                <br />
                </span>
                <asp:TextBox ID="TextBox12" runat="server" TextMode="Password" 
                    Width="269px" ></asp:TextBox>
                 
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                    ControlToValidate="TextBox12" ErrorMessage="Confirm Your Password" 
                    CssClass="style5"></asp:RequiredFieldValidator>
                <br />
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="TextBox11" ControlToValidate="TextBox12" 
                    ErrorMessage="Password don't match" CssClass="style5" Display="Dynamic"></asp:CompareValidator>
                <br />
&nbsp;&nbsp;&nbsp;
                <br />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style14" colspan="3" rowspan="7">
                <br />
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" BackColor="#CC3300" ForeColor="White" 
                    Height="39px" Text="Register" Width="335px" onclick="Button1_Click" 
                    style="text-align: center" />
                &nbsp;
                <br />
                <table class="style1">
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                            &nbsp;</td>
                        <td>
                <asp:Panel ID="Panel1" runat="server" Height="147px" Visible="False" 
                    Width="315px">
                    <br class="style9" />
                    <span class="style6"><strong><span class="style7">You have been successfully 
                    registered.</span></strong></span><strong><br class="style8" /> </strong>
                    <span class="style6"><strong><span class="style7">Your Id is: </span></strong>
                    </span>&nbsp;<asp:Label ID="Label27" runat="server" 
                        style="font-size: x-large; font-weight: 700" Text="Label"></asp:Label>
                    <br />
                    <br />
                    <span class="style11"><span class="style10"><strong>Click here to proceed.<br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</strong><asp:Button ID="Button3" runat="server" Height="29px" onclick="Button3_Click" 
                        style="color: #FFFFFF; font-size: medium; background-color: #CC0000" 
                        Text="Submit" Width="168px" CausesValidation="False" />
                    <br />
                    <br />
                    </span></span>
                </asp:Panel>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                <br />
                <br />
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    <div>
    
        <table class="style1">
            <tr>
                <td>
                    &nbsp;</td>
                <td>
&nbsp;</td>
                <td>
                    &nbsp;</td>
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
                <td>
                    &nbsp;</td>
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
                <td>
                    <br />
                </td>
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
                <td>
                    &nbsp;</td>
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
                <td>
                    &nbsp;</td>
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
                <td>
                    &nbsp;</td>
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
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
   
    </form>
 
  

      </body>

</html>
