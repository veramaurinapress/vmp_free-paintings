using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using veramaurinapressModel;

public partial class Management_AddEditTextsHandCoded : System.Web.UI.Page
{
    int _id = -1;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!string.IsNullOrEmpty(Request.QueryString.Get("Id")))
       {
            _id = Convert.ToInt32(Request.QueryString.Get("Id"));
        }
        if (!Page.IsPostBack && _id > -1)
        {
            using (veramaurinapressEntities2 myEntities = new veramaurinapressEntities2())
            {
                var text = (from r in myEntities.Texts
                            where r.Id == _id
                            select r).SingleOrDefault();
                if (text != null)
                {
                    TitleText.Text = text.Title;
                    SummaryText.Text = text.Summary;
                    BodyText.Text = text.Body;
                    FieldsList.DataBind();
                    ListItem myItem = 
                        FieldsList.Items.FindByValue(text.FieldId.ToString());
                    if (myItem != null) 
                    {
                        myItem.Selected = true;
                    }
                    Authorized.Checked = text.Authorized;
                }
            }
        }
    }
    protected void SaveButton_Click(object sender, EventArgs e)
    {
        using (veramaurinapressEntities2 myEntities = new veramaurinapressEntities2())
        {
            Text myText;
            if (_id == -1) //Insert new item
            {
                myText = new Text();
                myText.CreateDateTime = DateTime.Now;
                myText.UpdateDateTime = myText.CreateDateTime;
                myEntities.AddToTexts(myText);
            }
            else //update existing item
            {
                myText = (from r in myEntities.Texts
                          where r.Id == _id
                          select r).Single();
                myText.UpdateDateTime = DateTime.Now;
            }

            myText.Title = TitleText.Text;
            myText.Summary = SummaryText.Text;
            myText.Body = BodyText.Text;
            myText.FieldId = Convert.ToInt32(FieldsList.SelectedValue);
            myText.Authorized = Authorized.Checked;

            myEntities.SaveChanges();
            Response.Redirect("Text.aspx");
        }
    }


    protected void GenreList_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}
    