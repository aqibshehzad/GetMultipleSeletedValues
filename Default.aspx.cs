using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblvalues.Text = "";
    }
    protected void btnget_Click(object sender, EventArgs e)
    {
        lblvalues.Text = "";

        foreach (ListItem lst in chklistcolors.Items)
        {
            if (lst.Selected == true)
            {
                lblvalues.Text += "Selected Item Text: " + lst.Text + "<br />";
            }

        }
    }
    protected void btngetsplittedvalues_Click(object sender, EventArgs e)
    {
        lblvalues.Text = "";
        string selectedItems = String.Join(",",
         chklistcolors.Items.OfType<ListItem>().Where(r => r.Selected)
        .Select(r => r.Text));
        lblvalues.Text = selectedItems;
    }
}
