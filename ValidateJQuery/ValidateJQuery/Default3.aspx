<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="Default3.aspx.cs" Inherits="ValidateJQuery.Default3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
      <style>
          .success{color:green;}
          .error {color:red;}

      </style>
    
     <script type="text/javascript">                
         $(document).ready(function () {
             $("#form1").validate();
            validateName();
        });

        function validateName() {
            
            $('input[id$=txtName]').rules('add', {
                required: true,
                rangelength: [3, 20],
                minlength:5,
                messages: {
                    required: "First name is required",
                    rangelength: "Name must 3 to 20 characters",
                    minlength: "lớn hơn 1 kí tự",
                },
                eachValidField: function () {
                    // Validate thành công thì xóa class error và add class success
                    $(this).removeClass('error').addClass('success');
                },
                eachInvalidField: function () {
                    // Validate thất bại thì xóa class success và add class error
                    $(this).removeClass('success').addClass('error');
                }
            });
            return true;
        }
     </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     Name
        <asp:TextBox ID="txtName" runat="server" class="txtName" onkeypress="alertOK();"></asp:TextBox>
        <br />
        <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClientClick="if(validateName())alertOK();" />
    <script>
        
        function alertOK() {
            alert("OK");
            return false;
        }

    </script>
</asp:Content>
