roof_height = 2440;
beam_w = 50.8;
beam_d = 101.6;

//base

cube([beam_d,3660,beam_w]);
translate([3660 - beam_d,0,0]) {cube([beam_d,3660,beam_w]);}

// front pilars
cube([50.8,101.6,roof_height]);
translate([2440 - (beam_w / 2) ,0,0]){cube([beam_w,beam_d,roof_height]);}
translate([1220 - (beam_w / 2),0,0]) {cube([beam_w,beam_d,roof_height]);}
translate([3660 - beam_w,0,0]){cube([beam_w,beam_d,roof_height]);}

cube([3660,beam_d,beam_w]);

// back pilars
translate([0,3660,0])
{
	cube([50.8,101.6,roof_height]);
	translate([2440 - (beam_w / 2),0,0]){cube([beam_w,beam_d,roof_height]);}
	translate([1220 - (beam_w / 2),0,0]){cube([beam_w,beam_d,roof_height]);}
	translate([3660 - beam_w,0,0]){cube([beam_w,beam_d,roof_height]);}

	cube([3660,beam_d,beam_w]);
}

//Roof

translate([0,-610,roof_height])
{
	rotate([0,0,0])
	{
		cube([1220,2440,12]);
		translate([1220,0,0]){cube([1220,2440,12]);}
		translate([2440,0,0]){cube([1220,2440,12]);}
	}
}

translate([0,1830,roof_height])
{
	rotate([0,0,0])
	{
		cube([1220,2440,12]);
		translate([1220,0,0]){cube([1220,2440,12]);}
		translate([2440,0,0]){cube([1220,2440,12]);}
	}
}