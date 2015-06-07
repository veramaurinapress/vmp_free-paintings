using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class VmpProfile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
            FirstName.Text = Profile.FirstName;
            LastName.Text = Profile.LastName;
            Street1.Text = Profile.Street1;
            Street2.Text = Profile.Street2;
            City.Text = Profile.City;
            State.Text = Profile.State;
            ZipCode.Text = Profile.ZipCode;
    }

    protected void SaveButton_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            Profile.FirstName = FirstName.Text;
            Profile.LastName = LastName.Text;
            Profile.Street1 = Street1.Text;
            Profile.Street2 = Street2.Text;
            Profile.City = City.Text;
            Profile.State = State.Text;
            Profile.ZipCode = ZipCode.Text;

        }
    }        
}