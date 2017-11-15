using System;
using System.Threading;

public partial class _Default : System.Web.UI.Page
{
    public static int CONTADOR = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = CONTADOR.ToString();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Button1.Enabled = false;
        Thread.Sleep(3000);
        Label1.Text = (++CONTADOR).ToString();
        Button1.Enabled = true;
    }
}