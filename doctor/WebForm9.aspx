<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="WebForm9.aspx.cs" Inherits="doctor.WebForm9" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .style5
    {
        width: 100%;
        height: 306px;
    }
        .style6
        {
            width: 149px;
        }
        .style7
        {}
        .style8
        {}
        .style9
        {
            width: 323px;
            height: 306px;
            font-size: x-large;
            font-family: "Comic Sans MS";
            color: #006666;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <span class="style6">&nbsp;</span><span class="style9"><strong>Hello Doctor,</strong></span><br />
    <table class="style5">
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td class="style6">
                <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
                    DataKeyNames="Did" DataSourceID="SqlDataSource1" Height="217px" 
                    Width="308px" BackColor="White" BorderColor="#336666" BorderStyle="Double" 
                    BorderWidth="3px" CellPadding="4" GridLines="Horizontal">
                    <EditRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                    <Fields>
                        <asp:BoundField DataField="Did" HeaderText="Doctor Id" InsertVisible="False" 
                            ReadOnly="True" SortExpression="Did" />
                        <asp:BoundField DataField="Dname" HeaderText="Doctor Name" SortExpression="Dname" />
                        <asp:BoundField DataField="Dtime" HeaderText="Timing" SortExpression="Dtime" />
                        <asp:BoundField DataField="Davailability" HeaderText="Availability" 
                            SortExpression="Davailability" />
                        <asp:CommandField ShowEditButton="True" />
                    </Fields>
                    <FooterStyle BackColor="White" ForeColor="#333333" />
                    <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="White" ForeColor="#333333" />
                </asp:DetailsView>
            </td>
            <td class="style7">
                &nbsp;</td>
            <td>
                &nbsp;
                &nbsp;<asp:HiddenField ID="HiddenField1" runat="server" 
                    onvaluechanged="HiddenField1_ValueChanged" />
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    DeleteCommand="DELETE FROM [Doctors] WHERE [Did] = @Did" 
                    InsertCommand="INSERT INTO [Doctors] ([Dname], [Dtime], [Davailability]) VALUES (@Dname, @Dtime, @Davailability)" 
                    SelectCommand="SELECT [Did], [Dname], [Dtime], [Davailability] FROM [Doctors] where did=@did" 
                    UpdateCommand="UPDATE [Doctors] SET [Dname] = @Dname, [Dtime] = @Dtime, [Davailability] = @Davailability WHERE [Did] = @Did">
                   <SelectParameters>
                        <asp:ControlParameter ControlID="HiddenField1" Name="did" PropertyName="Value" />
                        </SelectParameters>
                   
                    <DeleteParameters>
                        <asp:Parameter Name="Did" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Dname" Type="String" />
                        <asp:Parameter Name="Dtime" Type="String" />
                        <asp:Parameter Name="Davailability" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Dname" Type="String" />
                        <asp:Parameter Name="Dtime" Type="String" />
                        <asp:Parameter Name="Davailability" Type="String" />
                        <asp:Parameter Name="Did" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="style8" colspan="4">
                <br />
                <asp:AdRotator ID="AdRotator1" runat="server" 
                    AdvertisementFile="~/XMLFile1.xml" />
            </td>
        </tr>
        </table>
</p>
<p>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
    &nbsp;</p>
<p>
</p>
<p>
</p>
<p>
</p>
<p>
</p>
<p>
</p>
</asp:Content>
