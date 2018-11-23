using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Sql;
using System.Data.SqlClient;

/// <summary>
/// Summary description for KHDatPhong
/// </summary>
public class KHDatPhong
{
	SqlConnection con;
	public KHDatPhong()
	{
		string strConnect = @"Data Source=.\sqlexpress;Initial Catalog=qlkhachsan;Integrated Security=True";
		con = new SqlConnection(strConnect);
	}

	public List<room_types> getRoomTypes()
	{
		List<room_types> li = new List<room_types>();
		string sql = "Select * From room_types";
		con.Open();
		SqlCommand cmd = new SqlCommand(sql, con);
		SqlDataReader rd = cmd.ExecuteReader();
		while (rd.Read())
		{
			room_types room = new room_types();
			room.name = (string)rd["name"];
			li.Add(room);
		}
		con.Close();
		return li;
	}

	public void ThemDatPhong(schedules book)
	{
		string sql = "Insert Into schedules Values (@f_name, @l_name, @email, @room_type_id, @date_in, @date_out, @time_in, @time_out, @num_guest)";
		con.Open();
		SqlCommand cmd = new SqlCommand(sql, con);
		cmd.Parameters.AddWithValue("f_name", book.f_name);
		cmd.Parameters.AddWithValue("l_name", book.l_name);
		cmd.Parameters.AddWithValue("email", book.email);
		cmd.Parameters.AddWithValue("room_type_id", book.room_type_id);
		cmd.Parameters.AddWithValue("date_in", book.date_in);
		cmd.Parameters.AddWithValue("date_out", book.date_out);
		cmd.Parameters.AddWithValue("time_in", book.time_in);
		cmd.Parameters.AddWithValue("time_out", book.time_out);
		cmd.Parameters.AddWithValue("num_guest", book.num_guest);
		cmd.ExecuteNonQuery();
		con.Close();
	}
}