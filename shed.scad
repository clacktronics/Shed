roof_height = 2440;

//base
// front stack



cube([50.8,101.6,roof_height]);
translate([2440,0,0]){cube([50.8,101.6,roof_height]);}
translate([1220,0,0]){cube([50.8,101.6,roof_height]);}
translate([3660,0,0]){cube([50.8,101.6,roof_height]);}

// back stack
translate([0,3660,0])
{
	cube([50.8,101.6,roof_height]);
	translate([2440,0,0]){cube([50.8,101.6,roof_height]);}
	translate([1220,0,0]){cube([50.8,101.6,roof_height]);}
	translate([3660,0,0]){cube([50.8,101.6,roof_height]);}
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