<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="WebForm4.aspx.cs" Inherits="doctor.WebForm4" %>
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
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button 
            ID="Button1" runat="server" Height="29px" onclick="Button1_Click" 
            style="color: #FFFFFF; background-color: #CC0000" Text="Log Out" 
            Width="111px" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <table class="style6">
            <tr>
                <td rowspan="10">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:Image ID="Image2" runat="server" Height="161px" Width="228px" />
                </td>
                <td>
                    <asp:SqlDataSource ID="SqlDataSource1" 
                        runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        DeleteCommand="DELETE FROM [Doctors] WHERE [Did] = @Did" 
                        InsertCommand="INSERT INTO [Doctors] ([Dname], [Dphone], [Dposition], [Dspecialization], [Dqualification], [Dimage], [Dclinic], [Dhospital], [Dpassword], [Dresearch], [Dexperience], [Dtime], [Davailability], [Dfee], [Dcity], [Dstate], [Demail], [Dgender]) VALUES (@Dname, @Dphone, @Dposition, @Dspecialization, @Dqualification, @Dimage, @Dclinic, @Dhospital, @Dpassword, @Dresearch, @Dexperience, @Dtime, @Davailability, @Dfee, @Dcity, @Dstate, @Demail, @Dgender)" 
                        SelectCommand="SELECT * FROM [Doctors] where did=@did" 
                        UpdateCommand="UPDATE [Doctors] SET [Dname] = @Dname, [Dphone] = @Dphone, [Dposition] = @Dposition, [Dspecialization] = @Dspecialization, [Dqualification] = @Dqualification, [Dimage] = @Dimage, [Dclinic] = @Dclinic, [Dhospital] = @Dhospital, [Dpassword] = @Dpassword, [Dresearch] = @Dresearch, [Dexperience] = @Dexperience, [Dtime] = @Dtime, [Davailability] = @Davailability, [Dfee] = @Dfee, [Dcity] = @Dcity, [Dstate] = @Dstate, [Demail] = @Demail, [Dgender] = @Dgender WHERE [Did] = @Did">
                        <SelectParameters>
                        <asp:ControlParameter ControlID="HiddenField1" Name="did" PropertyName="Value" />
                        </SelectParameters>
                        <DeleteParameters>
                            <asp:Parameter Name="Did" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="Dname" Type="String" />
                            <asp:Parameter Name="Dphone" Type="String" />
                            <asp:Parameter Name="Dposition" Type="String" />
                            <asp:Parameter Name="Dspecialization" Type="String" />
                            <asp:Parameter Name="Dqualification" Type="String" />
                            <asp:Parameter Name="Dimage" Type="String" />
                            <asp:Parameter Name="Dclinic" Type="String" />
                            <asp:Parameter Name="Dhospital" Type="String" />
                            <asp:Parameter Name="Dpassword" Type="String" />
                            <asp:Parameter Name="Dresearch" Type="String" />
                            <asp:Parameter Name="Dexperience" Type="String" />
                            <asp:Parameter Name="Dtime" Type="String" />
                            <asp:Parameter Name="Davailability" Type="String" />
                            <asp:Parameter Name="Dfee" Type="String" />
                            <asp:Parameter Name="Dcity" Type="String" />
                            <asp:Parameter Name="Dstate" Type="String" />
                            <asp:Parameter Name="Demail" Type="String" />
                            <asp:Parameter Name="Dgender" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="Dname" Type="String" />
                            <asp:Parameter Name="Dphone" Type="String" />
                            <asp:Parameter Name="Dposition" Type="String" />
                            <asp:Parameter Name="Dspecialization" Type="String" />
                            <asp:Parameter Name="Dqualification" Type="String" />
                            <asp:Parameter Name="Dimage" Type="String" />
                            <asp:Parameter Name="Dclinic" Type="String" />
                            <asp:Parameter Name="Dhospital" Type="String" />
                            <asp:Parameter Name="Dpassword" Type="String" />
                            <asp:Parameter Name="Dresearch" Type="String" />
                            <asp:Parameter Name="Dexperience" Type="String" />
                            <asp:Parameter Name="Dtime" Type="String" />
                            <asp:Parameter Name="Davailability" Type="String" />
                            <asp:Parameter Name="Dfee" Type="String" />
                            <asp:Parameter Name="Dcity" Type="String" />
                            <asp:Parameter Name="Dstate" Type="String" />
                            <asp:Parameter Name="Demail" Type="String" />
                            <asp:Parameter Name="Dgender" Type="String" />
                            <asp:Parameter Name="Did" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                    <asp:HiddenField ID="HiddenField1" runat="server" />
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:DetailsView 
                        ID="DetailsView1" runat="server" Height="219px" Width="228px" 
                        AutoGenerateEditButton="True" DataSourceID="SqlDataSource1" 
                        BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" 
                        CellPadding="4" GridLines="Horizontal" >
                        <EditRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                        <FooterStyle BackColor="White" ForeColor="#333333" />
                        <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="White" ForeColor="#333333" />
                    </asp:DetailsView>
                    &nbsp;&nbsp;
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
            </tr>
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
            </tr>
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
        &nbsp;</p>
    <p>
        &nbsp;</p>
</asp:Content>
