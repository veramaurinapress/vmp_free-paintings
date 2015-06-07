using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using veramaurinapressModel;

public partial class ImageArchives_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void ListView1_DataBound(object sender, EventArgs e)
    {
        if (!string.IsNullOrEmpty(DropDownList1.SelectedValue))
        {
            int imageArchiveId = Convert.ToInt32(DropDownList1.SelectedValue);
            using (veramaurinapressEntities2 myEntities = new veramaurinapressEntities2())
            {
                string imageArchiveOwner = (from p in myEntities.ImageArchives
                                            where p.Id == imageArchiveId
                                            select p.UserName).Single();
                if (User.Identity.IsAuthenticated && (User.Identity.Name == imageArchiveOwner || User.IsInRole("Managers")))
                {
                    EditLink.NavigateUrl = string.Format("~/ManageImageArchive.aspx?ImageArchiveId={0}", DropDownList1.SelectedValue);
                    EditLink.Visible = true;
                }
                else
                {
                    EditLink.Visible = false;
                }

                if (!string.IsNullOrEmpty(imageArchiveOwner))
                {
                    ProfileCommon ownerProfile = Profile.GetProfile(imageArchiveOwner);
                    UserNameLabel.Text = imageArchiveOwner;
                    ImageArchiveDetails.Visible = true;
                }
                else
                {
                    ImageArchiveDetails.Visible = false;
                }
            }
        }
        else
        {
            EditLink.Visible = false;
        }
    }

}
