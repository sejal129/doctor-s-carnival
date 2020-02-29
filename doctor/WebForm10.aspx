<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm10.aspx.cs" Inherits="doctor.WebForm10" %>
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
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Height="33px" onclick="Button1_Click" 
            style="color: #FFFFFF; background-color: #CC0000" Text="Log Out" Width="95px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <table class="style6">
            <tr>
                <td>
    <asp:HiddenField ID="HiddenField1" runat="server" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        DeleteCommand="DELETE FROM [Patient] WHERE [Pid] = @Pid" 
        InsertCommand="INSERT INTO [Patient] ([Pname], [Pgender], [Pdob], [Pcity], [Page], [Pemail], [Ppassword], [Pstate], [Pphone], [Paddress]) VALUES (@Pname, @Pgender, @Pdob, @Pcity, @Page, @Pemail, @Ppassword, @Pstate, @Pphone, @Paddress)" 
        SelectCommand="SELECT * FROM [Patient] where pid=@pid" 
        UpdateCommand="UPDATE [Patient] SET [Pname] = @Pname, [Pgender] = @Pgender, [Pdob] = @Pdob, [Pcity] = @Pcity, [Page] = @Page, [Pemail] = @Pemail, [Ppassword] = @Ppassword, [Pstate] = @Pstate, [Pphone] = @Pphone, [Paddress] = @Paddress WHERE [Pid] = @Pid">
        <SelectParameters>
          
          
          
          
          
          
          
          
          
          <asp:ControlParameter ControlID="HiddenField1" Name="pid" PropertyName="Value" />
         </SelectParameters>
        
        <DeleteParameters>
            <asp:Parameter Name="Pid" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Pname" Type="String" />
            <asp:Parameter Name="Pgender" Type="String" />
            <asp:Parameter DbType="Date" Name="Pdob" />
            <asp:Parameter Name="Pcity" Type="String" />
            <asp:Parameter Name="Page" Type="Int32" />
            <asp:Parameter Name="Pemail" Type="String" />
            <asp:Parameter Name="Ppassword" Type="String" />
            <asp:Parameter Name="Pstate" Type="String" />
            <asp:Parameter Name="Pphone" Type="String" />
            <asp:Parameter Name="Paddress" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Pname" Type="String" />
            <asp:Parameter Name="Pgender" Type="String" />
            <asp:Parameter DbType="Date" Name="Pdob" />
            <asp:Parameter Name="Pcity" Type="String" />
            <asp:Parameter Name="Page" Type="Int32" />
            <asp:Parameter Name="Pemail" Type="String" />
            <asp:Parameter Name="Ppassword" Type="String" />
            <asp:Parameter Name="Pstate" Type="String" />
            <asp:Parameter Name="Pphone" Type="String" />
            <asp:Parameter Name="Paddress" Type="String" />
            <asp:Parameter Name="Pid" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
                </td>
                <td rowspan="2">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    &nbsp;<asp:DetailsView ID="DetailsView1" runat="server" Height="107px" Width="335px" 
        AutoGenerateRows="False" DataKeyNames="Pid" DataSourceID="SqlDataSource1" 
                        BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" 
                        CellPadding="4" GridLines="Horizontal" 
      >
                        <EditRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
        <Fields>
            <asp:BoundField DataField="Pid" HeaderText="Patient Id" InsertVisible="False" 
                ReadOnly="True" SortExpression="Pid" />
            <asp:BoundField DataField="Pname" HeaderText="Name" SortExpression="Pname" />
            <asp:BoundField DataField="Pgender" HeaderText="Gender" 
                SortExpression="Pgender" />
            <asp:BoundField DataField="Pdob" HeaderText="Date of Birth" SortExpression="Pdob" />
            <asp:BoundField DataField="Pcity" HeaderText="City" SortExpression="Pcity" />
            <asp:BoundField DataField="Page" HeaderText="Age" SortExpression="Page" />
            <asp:BoundField DataField="Pemail" HeaderText="Email" 
                SortExpression="Pemail" />
            <asp:BoundField DataField="Ppassword" HeaderText="Password" 
                SortExpression="Ppassword" />
            <asp:BoundField DataField="Pstate" HeaderText="State" 
                SortExpression="Pstate" />
            <asp:BoundField DataField="Pphone" HeaderText="Phone" 
                SortExpression="Pphone" />
            <asp:BoundField DataField="Paddress" HeaderText="Address" 
                SortExpression="Paddress" />
            <asp:CommandField ShowEditButton="True" />
        </Fields>
                        <FooterStyle BackColor="White" ForeColor="#333333" />
                        <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="White" ForeColor="#333333" />
        </asp:DetailsView>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="3">
                    <asp:AdRotator ID="AdRotator1" runat="server" 
                        AdvertisementFile="~/XMLFile1.xml" />
                </td>
            </tr>
        </table>
        &nbsp;</p>
</asp:Content>
