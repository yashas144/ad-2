<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="ims.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2 class="text-center text-uppercase" style ="color:blueviolet">Malla Reddy College of Engineering and Technology</h2>
    <h3 class="text-center text-uppercase" style ="color:blueviolet">Department of Information Technology</h3>
    <h4 class="text-center text-uppercase" style ="color:blueviolet">III B.TECH II SEM INTERNAL EXAMS</h4>

     

    <%--<asp:GridView ID="grvTeachers" runat="server">
        </asp:GridView>--%>

    <div class="container py-4">  
                 <h5 class="text-center text-uppercase" style ="color:blueviolet">Faculty Availability for Invigilation</h5>  
            <asp:GridView CssClass="table table-bordered" HeaderStyle-CssClass="bg-primary text-white" AutoGenerateColumns="false" ID="grvTeachers" runat="server" OnRowDataBound="grvTeachers_RowDataBound">  
                <Columns>  
                    <asp:BoundField HeaderText="ID" DataField="emp_id" />  
                    <%--<asp:ImageField HeaderText="Image" ControlStyle-Height="50" DataImageUrlField="ProductImage"></asp:ImageField>--%>  
                    <asp:BoundField HeaderText="Name" DataField="emp_name" />  
                    <asp:BoundField HeaderText="APR_21_2023" DataField="APR_21_2023" />  
                    <asp:BoundField HeaderText="APR_24_2023" DataField="APR_24_2023" />
                    <asp:BoundField HeaderText="APR_25_2023" DataField="APR_25_2023" />
                    <asp:BoundField HeaderText="APR_26_2023" DataField="APR_26_2023" />
                    <asp:BoundField HeaderText="APR_27_2023" DataField="APR_27_2023" />
                </Columns>  
            </asp:GridView>  
        </div>  


   <%-- <h3>Your contact page.</h3>
    <address>
        One Microsoft Way<br />
        Redmond, WA 98052-6399<br />
        <abbr title="Phone">P:</abbr>
        425.555.0100
    </address>

    <address>
        <strong>Support:</strong>   <a href="mailto:Support@example.com">Support@example.com</a><br />
        <strong>Marketing:</strong> <a href="mailto:Marketing@example.com">Marketing@example.com</a>
    </address>--%>
</asp:Content>
