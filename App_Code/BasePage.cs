using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for BasePage
/// </summary>
public class BasePage : System.Web.UI.Page
{
	private void Page_PreRender(object sender, EventArgs e)
	{
        if (this.Title == "Untitled Page" || string.IsNullOrEmpty(this.Title))
        {
            throw new Exception(
                "Page title cannot be \"Untitle Page\" or an empty string.");
        }
	}
    public BasePage()
    {
        this.PreRender += new EventHandler(Page_PreRender);
    }
}