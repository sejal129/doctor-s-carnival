<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm15.aspx.cs" Inherits="doctor.WebForm15" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style6
        {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <asp:Label ID="Label1" runat="server" Text="Get an Appointment!!" 
            style="font-weight: 700; font-size: xx-large; font-family: 'Berlin Sans FB'; color: #006666"></asp:Label>
    </p>
    <table class="style6">
        <tr>
            <td>
                <br />
                <asp:Label ID="Label6" runat="server" 
                    style="font-size: x-large; font-family: 'Berlin Sans FB'; color: #006666" 
                    Text="Doctor Details"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
            <td>
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
            DataKeyNames="Did" DataSourceID="SqlDataSource1" Height="80px" 
            Width="394px" BackColor="White" BorderColor="#999999" BorderStyle="Solid" 
            BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <EditRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <Fields>
                <asp:BoundField DataField="Did" HeaderText="Doctor Id" InsertVisible="False" 
                    ReadOnly="True" SortExpression="Did" />
                <asp:BoundField DataField="Dname" HeaderText="Doctor Name" SortExpression="Dname" />
                <asp:BoundField DataField="Dphone" HeaderText="Contact Number" 
                    SortExpression="Dphone" />
                <asp:BoundField DataField="Dposition" HeaderText="Position" 
                    SortExpression="Dposition" />
                <asp:BoundField DataField="Dspecialization" HeaderText="Specialization" 
                    SortExpression="Dspecialization" />
                <asp:BoundField DataField="Dqualification" HeaderText="Qualification" 
                    SortExpression="Dqualification" />
              <asp:ImageField HeaderText ="Image" DataImageUrlField="Dimage" 
                    DataImageUrlFormatString="{0}" ControlStyle-Width="200px" >
<ControlStyle Width="200px"></ControlStyle>
                </asp:ImageField>
                <asp:BoundField DataField="Dclinic" HeaderText="Clinic" 
                    SortExpression="Dclinic" />
                <asp:BoundField DataField="Dhospital" HeaderText="Hospital" 
                    SortExpression="Dhospital" />
                
                <asp:BoundField DataField="Dresearch" HeaderText="Research" 
                    SortExpression="Dresearch" />
                <asp:BoundField DataField="Dexperience" HeaderText="Experience" 
                    SortExpression="Dexperience" />
                <asp:BoundField DataField="Dtime" HeaderText="Dtime" SortExpression="Time" />
                <asp:BoundField DataField="Davailability" HeaderText="Availability" 
                    SortExpression="Davailability" />
                <asp:BoundField DataField="Dfee" HeaderText="Fee" SortExpression="Dfee" />
                <asp:BoundField DataField="Dcity" HeaderText="City" SortExpression="Dcity" />
                <asp:BoundField DataField="Dstate" HeaderText="State" 
                    SortExpression="Dstate" />
                <asp:BoundField DataField="Demail" HeaderText="Email" 
                    SortExpression="Demail" />
                <asp:BoundField DataField="Dgender" HeaderText="Gender" 
                    SortExpression="Dgender" />
            </Fields>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        </asp:DetailsView>
            </td>
            <td>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [Time]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [Doctors] where did=@did">
            <SelectParameters>
            <asp:QueryStringParameter Name="did" QueryStringField="did" />
            </SelectParameters>
            </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [Doctors] where did=@did">
             <SelectParameters>
             <asp:QueryStringParameter Name="Did" QueryStringField="Did" />
             </SelectParameters>
            </asp:SqlDataSource>

            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Label ID="Label4" runat="server" 
                    style="font-size: x-large; font-family: 'Berlin Sans FB'; color: #006666" 
                    Text="Select Hospital:"></asp:Label>
                <br />
        <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
            DataSourceID="SqlDataSource2" DataTextField="Dhospital" DataValueField="Did" >
        </asp:RadioButtonList>
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
        <asp:Label ID="Label2" runat="server" Text="Choose date: " 
                    style="font-size: x-large; font-family: 'Berlin Sans FB'; color: #006666"></asp:Label>
                <br />
        <asp:Calendar ID="Calendar1" runat="server" BackColor="White" 
            BorderColor="Black" Font-Names="Times New Roman" Font-Size="10pt" 
            ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" 
            SelectedDate="03/31/2019 22:38:12" Width="367px" DayNameFormat="Shortest" 
                    TitleFormat="Month">
            <DayHeaderStyle Font-Bold="True" Font-Size="7pt" BackColor="#CCCCCC" 
                ForeColor="#333333" Height="10pt" />
            <DayStyle Width="14%" />
            <NextPrevStyle Font-Size="8pt" ForeColor="White" />
            <OtherMonthDayStyle ForeColor="#999999" />
            <SelectedDayStyle BackColor="#CC3333" ForeColor="White" />
            <SelectorStyle BackColor="#CCCCCC" Font-Bold="True" Font-Names="Verdana" 
                Font-Size="8pt" ForeColor="#333333" Width="1%" />
            <TitleStyle BackColor="Black" 
                Font-Bold="True" Font-Size="13pt" ForeColor="White" Height="14pt" />
            <TodayDayStyle BackColor="#CCCC99" />
        </asp:Calendar>
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
                <asp:Label ID="Label5" runat="server" 
                    style="font-size: x-large; font-family: 'Berlin Sans FB'; color: #006666" 
                    Text="Choose a Slot:"></asp:Label>
                <br />
        <asp:RadioButtonList ID="RadioButtonList2" runat="server" 
            DataSourceID="SqlDataSource3" DataTextField="Time" DataValueField="Tid" 
                    RepeatColumns="3">
        </asp:RadioButtonList>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <br />
                <br />
                <br />
            </td>
            <td>
        <asp:Label ID="Label3" runat="server" Text="Label" Visible="False" 
                    style="color: #CC0000; font-size: x-large; font-family: 'Berlin Sans FB'"></asp:Label>
                <br />
        <asp:Button ID="Button1" runat="server" Height="32px" onclick="Button1_Click" 
            style="color: #FFFFFF; background-color: #CC0000" Text="Appointment" 
            Width="153px" />
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
        </tr>
    </table>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
&nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp; </p>
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
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        &nbsp;</p>
</asp:Content>
