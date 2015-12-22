# GetMultipleSeletedValues
TO get multiple selected asp checkbox list values
we will view how to get multiple selected values either by normal way or by comma separated values if you wan to dump to the database
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
