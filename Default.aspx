<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Update Panel - Exemplo</title>
    <script src="jquery-3.2.1.min.js" language="javascript" type="text/javascript"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>

                    <asp:Button ID="Button1" runat="server" CssClass="botao_para_desabilitar" OnClick="Button1_Click" Text="Clique-me" />
                    <br />
                    <br />
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                </ContentTemplate>
            </asp:UpdatePanel>
            <asp:UpdateProgress ID="UpdateProgress1" runat="server">
                <ProgressTemplate>Carregando...</ProgressTemplate>
            </asp:UpdateProgress>
        </div>
    </form>
    <script type="text/javascript">
        Sys.WebForms.PageRequestManager.getInstance().add_beginRequest(startRequest);
        Sys.WebForms.PageRequestManager.getInstance().add_endRequest(endRequest);

        function startRequest(sender, e) {
            //disable button during the AJAX call
            $(".botao_para_desabilitar").attr("disabled", "disabled");
            //document.getElementById('<%=Button1.ClientID%>').disabled = true;
        }

        function endRequest(sender, e) {
            //re-enable button once the AJAX call has completed
            $(".botao_para_desabilitar").removeAttr("disabled");
            //document.getElementById('<%=Button1.ClientID%>').disabled = false;
        }
    </script>
</body>
</html>
