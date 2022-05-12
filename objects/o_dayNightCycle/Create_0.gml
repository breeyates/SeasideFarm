#region variables
timePause = false;

seconds = 0;
minutes = 0;
hours = 6;
//Change hour to start at 6

day = 1;
months = 1;
year = 1;

timeInc = 10;

maxNightColor = 0.5;
nightColor = 0;
lightColor = c_black;
drawLight = false;

VPWidth = display_get_gui_width();
VPHeight = display_get_gui_height();

#endregion

enum phases {
	//Sunrise = 6
	sunrise = 0,
	//Daytime = 9
	daytime = 6,
	//Sunset = 6
	sunset = 16,
	//Night = 9
	night = 20,

}