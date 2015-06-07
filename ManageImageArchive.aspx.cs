using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using veramaurinapressModel;
using System.Web.Security;

public partial class ManageImageArchive : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int imageArchiveId = Convert.ToInt32(Request.QueryString.Get("ImageArchiveId"));

        using (veramaurinapressEntities2 myEntities = new veramaurinapressEntities2())
        {
            string imageArchiveOwner = (from p in myEntities.ImageArchives
                                        where p.Id == imageArchiveId
                                        select p.UserName).Single();
            if (User.Identity.Name != imageArchiveOwner && !User.IsInRole("Managers"))
            {
                Response.Redirect("~/");
            }
        }
    }

    protected void EntityDataSource1_Inserting(object sender, EntityDataSourceChangingEventArgs e)
    {
        int imageArchiveId = Convert.ToInt32(Request.QueryString.Get("ImageArchiveId"));
        veramaurinapressModel.Image myImage = (veramaurinapressModel.Image)e.Entity;
        myImage.ImageArchiveId = imageArchiveId;

        FileUpload FileUpload1 = (FileUpload)ListView1.InsertItem.FindControl("FileUpload1");
        string virtualFolder = "~/FormImg/";
        string physicalFolder = Server.MapPath(virtualFolder);
        string fileName = Guid.NewGuid().ToString();
        string extension = System.IO.Path.GetExtension(FileUpload1.FileName);

        FileUpload1.SaveAs(System.IO.Path.Combine(physicalFolder, fileName + extension));
        myImage.ImageUrl = virtualFolder + fileName + extension;
    }
    protected void ListView1_ItemInserting(object sender, ListViewInsertEventArgs e)
    {

        FileUpload FileUpload1 = (FileUpload)ListView1.InsertItem.FindControl("FileUpload1");
        if (!FileUpload1.HasFile)
        {
            if
            (!FileUpload1.FileName.ToLower().EndsWith(".png")
            || !FileUpload1.FileName.ToLower().EndsWith(".gif")
            || !FileUpload1.FileName.ToLower().EndsWith(".jpg")
            || !FileUpload1.FileName.ToLower().EndsWith(".jpeg"))
            {
                CustomValidator cusValImage = (CustomValidator)ListView1.InsertItem.FindControl("cusValImage");
                cusValImage.IsValid = false;
                e.Cancel = true;   
            }
        }
        Messageii.Visible = true;
        ListView1.Visible = false;
    }

}