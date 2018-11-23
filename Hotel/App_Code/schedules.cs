using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for schedules
/// </summary>
public class schedules
{
	public schedules()
	{
		//
		// TODO: Add constructor logic here
		//
	}
	public string f_name { get; set; }

	public string l_name { get; set; }

	public string email { get; set; }

	public int room_type_id { get; set; }

	public DateTime date_in { get; set; }

	public DateTime date_out { get; set; }

	public DateTime time_in { get; set; }

	public DateTime time_out { get; set; }

	public int num_guest { get; set; }
}