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
		RandomSlide();
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
			schedule.room_type_id = int.Parse(category.SelectedValue);
			schedule.date_in = DateTime.Parse(txtDateIn.Text);
			schedule.date_out = DateTime.Parse(txtDateOut.Text);
			schedule.time_in = DateTime.Parse(txtTimeIn.Text);
			schedule.time_out = DateTime.Parse(txtTimeOut.Text);
			schedule.num_guest = int.Parse(category1.SelectedValue);

			data.ThemDatPhong(schedule);

			err_msg.ForeColor = System.Drawing.Color.Aqua;
			err_msg.Text = "Bạn đã thêm đặt phòng thành công!";
		}
		catch (Exception ex)
		{
			err_msg.ForeColor = System.Drawing.Color.Red;
			err_msg.Text = "Đã xảy ra lỗi: " + ex.Message;
		}
	}

	protected void Timer1_Tick(object sender, EventArgs e)
	{
		RandomSlide();
	}

	private void RandomSlide()
	{
		Random r = new Random();
		int n = r.Next(1, 5);
		imgSlide.ImageUrl = "images/ban" + n + ".jpg";
	}
}