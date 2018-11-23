using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class index : System.Web.UI.Page
{
	KHDatPhong data = new KHDatPhong();
	protected void Page_Load(object sender, EventArgs e)
	{
		if (!IsPostBack)
		{
			category.DataSource = data.getRoomTypes();
			category.DataTextField = "name";
			category.DataValueField = "id";
			DataBind();
		}
	}

	protected void btn_BookRoom_Click(object sender, EventArgs e)
	{
		try
		{
			schedules schedule = new schedules();
			schedule.f_name = txtF_name.Text;
			schedule.l_name = txtL_name.Text;
			schedule.email = txtEmail.Text;
			//schedule.room_type_id = int.Parse(category.SelectedValue);
			//schedule.date_in = 
			//schedule.date_out = txtEmail.Text;
			//schedule.time_in = txtEmail.Text;
			//schedule.time_out = txtEmail.Text;
			//schedule.num_guest = txtEmail.Text;


			err_msg.ForeColor = System.Drawing.Color.Green;
			err_msg.Text = "Bạn đã thêm đặt phòng thành công!";
		}
		catch (Exception ex)
		{
			err_msg.ForeColor = System.Drawing.Color.Red;
			err_msg.Text = "Đã xảy ra lỗi: " + ex.Message;
		}
	}
}