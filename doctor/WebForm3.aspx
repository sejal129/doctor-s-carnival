<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="doctor.WebForm3" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .RatingStarOff
{
background-image: url(media/star_off.png);
width:15px;
height:15px;
}
.RatingStarOn
{
background-image: url(media/star_on.png);
width:15px;
height:15px;
}
.RatingStarEmpty
{
background-image: url(media/star_off.png);
width:15px;
height:15px;
}
.RatingStarWait
{
background-image: url(media/star_wait.png);
width:15px;
height:15px;
}
        .style6
        {
            font-size: xx-large;
            font-family: "Cooper Black";
        }
        .style7
        {
            color: #006666;
        }
        .style9
        {
            width: 100%;
        }
        .style8
        {
            font-family: "Berlin Sans FB";
        }
        .style10
        {
            font-family: "Berlin Sans FB";
            font-size: large;
            width: 219px;
        }
        .style11
        {
            color: #CC0000;
        }
        .style12
        {
            font-size: x-large;
        }
        .style13
        {
            font-family: "Berlin Sans FB";
            font-size: x-large;
            width: 219px;
        }
        .style14
        {
            height: 20px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </asp:ToolkitScriptManager>
    <p>
        <span class="style6"><strong><span class="style7">REVIEWS</span></strong></span></p>
    <p>
        &nbsp;</p>
    <table class="style9">
        <tr>
            <td class="style10">
                <span class="style12">Select
        Doctor Name: </span>&nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" Height="30px" Width="148px">
        </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style13">
                Any
        Reviews??:
            </td>
            <td>
                &nbsp;</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Height="20px" TextMode="MultiLine" 
                    Width="244px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style10">
                <span class="style12">Rate:&nbsp; </span>
                <br />
                <span class="style11">(Rate out of 10)</span></td>
            <td>
                &nbsp;</td>
            <td>
              
                     <asp:UpdatePanel ID="UP1" runat="server">
<ContentTemplate>
<asp:Rating ID="Rating1" runat="server" onchanged="Rating1_Changed" StarCssClass="RatingStarOff" AutoPostBack="true"
FilledStarCssClass="RatingStarOn" EmptyStarCssClass="RatingStarEmpty" WaitingStarCssClass="RatingStarWait" MaxRating="10" /><br />
<asp:Literal ID="lit_Rating" runat="server" />
</ContentTemplate>
</asp:UpdatePanel>
 

            </td>
        </tr>
        <tr>
            <td colspan="3">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Button" 
                    Height="29px" style="color: #FFFFFF; background-color: #CC0000" Width="131px" />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label1" runat="server" Text="Label" 
                    style="font-family: 'Berlin Sans FB'; color: #CC0000; font-weight: 700; font-size: x-large" 
                    Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style14" colspan="3">
                <asp:AdRotator ID="AdRotator1" runat="server" 
                    AdvertisementFile="~/XMLFile1.xml" />
            </td>
        </tr>
    </table>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        <span class="style8">&nbsp;&nbsp; </span>
    </p>
    <p>
        &nbsp;</p>
    <p>
        <span class="style8">&nbsp;</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        &nbsp;</p>
</asp:Content>
