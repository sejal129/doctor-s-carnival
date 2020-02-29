<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm8.aspx.cs" Inherits="doctor.WebForm8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style5
        {
            font-family: "Comic Sans MS";
            font-size: large;
            color: #006666;
        }
        .style6
        {
            color: #006666;
        }
        .style7
        {
            font-family: "Bell MT";
            color: #006666;
        }
        .style8
        {
            color: #CC0000;
            font-family: "Berlin Sans FB";
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <span class="style6">&nbsp;</span><span class="style5"><strong>Hello Patient,</strong></span><br />
</p>
<p>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="style7"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
    Enter Specialisation:</strong></span>&nbsp;
    <asp:DropDownList ID="DropDownList1" runat="server" 
        Height="50px" Width="269px">
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
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</p>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp; <span class="style7"><strong>&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;Or, </strong></span>
        &nbsp; <span class="style7"><strong>Enter Doctor Name:</strong></span><asp:TextBox 
            ID="TextBox1" runat="server" 
            Height="35px" Width="271px" style="margin-left: 217px" 
            AutoCompleteType="DisplayName"></asp:TextBox>
</p>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       
        <asp:Button ID="Button1" runat="server" Height="32px" onclick="Button1_Click" 
            style="font-weight: 700; color: #FFFFFF; font-size: medium; background-color: #CC0000" 
            Text="Search" Width="126px" />
</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;<span class="style8">&nbsp;&nbsp; *Select the id to&nbsp;get more details</span></p>
<p>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        AllowSorting="True" EmptyDataText="NO DATA PRESENT" 
            DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#336666" 
            BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal" 
            Visible="False" Height="200px" Width="536px"  >
        <Columns>
   <asp:HyperLinkField HeaderText="Doctor Id" DataTextField="Did" DataNavigateUrlFields="Did" DataNavigateUrlFormatString="WebForm15.aspx?Did={0}"/>
        <asp:BoundField DataField="Dname" HeaderText="Doctor Name" SortExpression="Dname" />
           <asp:BoundField DataField="Dfee" HeaderText="Fees" SortExpression="Dfee" />
            <asp:BoundField DataField="Dtime" HeaderText="Timing" SortExpression="Dtime" />
            
               <asp:ImageField HeaderText="Image" DataImageUrlField="Dimage" 
                DataImageUrlFormatString="{0}" ControlStyle-Width="200px" >
<ControlStyle Width="200px"></ControlStyle>
            </asp:ImageField>
        </Columns>
        <FooterStyle BackColor="White" ForeColor="#333333" />
        <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="White" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F7F7F7" />
        <SortedAscendingHeaderStyle BackColor="#487575" />
        <SortedDescendingCellStyle BackColor="#E5E5E5" />
        <SortedDescendingHeaderStyle BackColor="#275353" />
    </asp:GridView>
   
    </p>
    <p>
   
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT [Did],[Dname], [Dfee], [Dtime],[Dimage] FROM [Doctors] where dspecialization=@dspecialization" >
            <SelectParameters>
            <asp:ControlParameter Name="dspecialization" ControlID="DropDownList1" PropertyName="SelectedValue" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
<p>
     &nbsp;</p>
    <p>
</p>
    <p>
        &nbsp;</p>
<p>
</p>
<p>
</p>
</asp:Content>
