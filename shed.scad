roof_height = 2440;
roof_angle = 3;
beam_w = 50.8;
beam_d = 101.6;
roof_offset = -610;
ply_thickness = 18;

front_height = -roof_offset * tan(roof_angle);
mid_position = 2440 * tan(roof_angle);
back_height = 3660 * tan(roof_angle);

show_walls = true;
show_roof = false;


// human size
translate([2440,2440,0]) {cube([500,500,1780]);}

echo("The back beams are ", back_height, " high");

// BASE ////////////////





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
	cube([50.8,101.6,roof_height + back_height]);
	translate([2440 - (beam_w / 2),0,0]){cube([beam_w,beam_d,roof_height + back_height]);}
	translate([1220 - (beam_w / 2),0,0]){cube([beam_w,beam_d,roof_height + back_height]);}
	translate([3660 - beam_w,0,0]){cube([beam_w,beam_d,roof_height + back_height]);}

	cube([3660,beam_d,beam_w]);
	translate([0,0,roof_height + back_height - beam_w]){ cube([3660,beam_d,beam_w]); } // roof beam
}

//Roof

if(show_roof)
{

	translate([0,roof_offset,roof_height - front_height])
	{
		rotate([roof_angle,0,0])
	{
		cube([1220,2440,ply_thickness]);
		translate([1220,0,0]){cube([1220,2440,ply_thickness]);}
		translate([2440,0,0]){cube([1220,2440,ply_thickness]);}
	}

}

translate([0,2440 + roof_offset,roof_height + (2440 * sin(roof_angle)) - front_height ])
{
	rotate([roof_angle,0,0])
	{
		cube([1220,2440,ply_thickness]);
		translate([1220,0,0]){cube([1220,2440,ply_thickness]);}
		translate([2440,0,0]){cube([1220,2440,ply_thickness]);}
	}
}

}


// roof beams


translate([0,0,roof_height - beam_d])
			 { 
				rotate([roof_angle,0,0])
				{				
					cube([beam_w,3660,beam_d]); 
					translate([1220 - (beam_w / 2),0,0]){cube([beam_w,3660,beam_d]); }
					translate([2440 - (beam_w / 2),0,0]){cube([beam_w,3660,beam_d]); }
					translate([3660 - beam_w,0,0]){cube([beam_w,3660,beam_d]); }
				}
			}







	// S	ide walls
if(show_walls)
{
	// front wall
	cube([1220,ply_thickness,2440]);
	translate([1220,0,0]){cube([1220,ply_thickness,2440]);}
	translate([2440,0,0]){cube([1220,ply_thickness,2440]);}

	// left wall
	translate([-ply_thickness,0,0])
	{
	cube([ply_thickness,1220,2440]);
	translate([0,1220,0]){cube([ply_thickness,1220,2440]);}
	translate([0,2440,0]){cube([ply_thickness,1220,2440]);}
	}

	// right wall
	translate([ 3660 + ply_thickness,0,0])
	{
	cube([ply_thickness,1220,2440]);
	translate([0,1220,0]){cube([ply_thickness,1220,2440]);}
	translate([0,2440,0]){cube([ply_thickness,1220,2440]);}
	}

	// back wall
	translate([0,3660 + beam_d,0])
	{
	cube([1220,ply_thickness,2440]);
	translate([1220,0,0]){cube([1220,ply_thickness,2440]);}
	translate([2440,0,0]){cube([1220,ply_thickness,2440]);}
	}

	}