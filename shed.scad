roof_height = 2440;
beam_w = 50.8;
beam_d = 101.6;

// BASE ////////////////

// roof beams

translate([0,0,roof_height - beam_d]) { 
				cube([beam_w,3660,beam_d]); 
				translate([1220 - (beam_w / 2),0,0]){cube([beam_w,3660,beam_d]); }
				translate([2440 - (beam_w / 2),0,0]){cube([beam_w,3660,beam_d]); }
				translate([3660 - beam_w,0,0]){cube([beam_w,3660,beam_d]); }
								}



// Side floor beams

cube([beam_w,3660,beam_d]);
translate([3660 - beam_w,0,0]) {cube([beam_w,3660,beam_d]);}

// side pilars

		translate([0,1220,0]) { cube([beam_w,beam_d,roof_height]);}
		translate([0,2440,0]) { cube([beam_w,beam_d,roof_height]);}

		translate([3660 - beam_w,0,0])
		{
			translate([0,1220,0]) { cube([beam_w,beam_d,roof_height]);}
			translate([0,2440,0]) { cube([beam_w,beam_d,roof_height]);}
		}

// front pilars and beams
	cube([beam_w,beam_d,roof_height]);
	translate([2440 - (beam_w / 2) ,0,0]){cube([beam_w,beam_d,roof_height]);}
	translate([1220 - (beam_w / 2),0,0]) {cube([beam_w,beam_d,roof_height]);}
	translate([3660 - beam_w,0,0]){cube([beam_w,beam_d,roof_height]);}

	cube([3660,beam_d,beam_w]); // Floor beam
	translate([0,0,roof_height - beam_w]){ cube([3660,beam_d,beam_w]); } // roof beam

// back pilars and beams

translate([0,3660,0])
{
	cube([50.8,101.6,roof_height]);
	translate([2440 - (beam_w / 2),0,0]){cube([beam_w,beam_d,roof_height]);}
	translate([1220 - (beam_w / 2),0,0]){cube([beam_w,beam_d,roof_height]);}
	translate([3660 - beam_w,0,0]){cube([beam_w,beam_d,roof_height]);}

	cube([3660,beam_d,beam_w]);
	translate([0,0,roof_height - beam_w]){ cube([3660,beam_d,beam_w]); } // roof beam
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