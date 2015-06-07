using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using veramaurinapressModel;

public partial class NewImageArchive : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void EntityDataSource1_Inserted(object sender, EntityDataSourceChangedEventArgs e)
    {
        ImageArchive myImageArchive = (ImageArchive)e.Entity;
        Response.Redirect(string.Format("ManageImageArchive.aspx?ImageArchiveId={0}",
            myImageArchive.Id.ToString()));
    }

    protected void EntityDataSource1_Inserting(object sender, EntityDataSourceChangingEventArgs e)
    {
        ImageArchive myImageArchive = (ImageArchive)e.Entity;
        myImageArchive.UserName = User.Identity.Name;
    }
}