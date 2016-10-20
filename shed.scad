shutter_thickness = 12;
cladding_bar_thickness = 12;
cladding_thickness = 12;

frame_bar_width = 120;
frame_bar_depth = 45;

slab_width = 3120;
slab_depth = 3550;
shed_width = slab_width-(2*shutter_thickness);
shed_depth = slab_depth-(2*shutter_thickness);

shed_height = 2530;
shed_back_height = shed_height+310.6; //based off trig of windows
shed_left_height = shed_height-526-frame_bar_depth;
shed_right_height = shed_height-frame_bar_depth;




spacing = 0;


translate([500,500,0])cube([1220,1220,18]);



// base
color("lightgrey")
translate([0,0,-50]) cube([slab_width, slab_depth, 50]);

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Front Frame
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
color("green")
translate([shutter_thickness, shutter_thickness , 0])
{
cube([frame_bar_depth, frame_bar_width, shed_height]); //left



//studs

translate([240,0,0]) cube([frame_bar_depth, frame_bar_width, shed_height]);  // supp left

translate([1560,0,0])
for(i=[0:1])
{
translate([frame_bar_depth+ i * 600,0,0]) cube([frame_bar_depth, frame_bar_width, 2100]); 
}


translate([shed_width - 240 - frame_bar_depth,0,0]) cube([frame_bar_depth, frame_bar_width, shed_height]); // supp right
translate([shed_width-frame_bar_depth,0,0]) cube([frame_bar_depth, frame_bar_width, shed_height]); //right
translate([frame_bar_depth,0,0]) cube([240-frame_bar_depth, frame_bar_width, frame_bar_depth]);//bottom_left
translate([1560+frame_bar_depth,0,0]) cube([shed_width-1560-frame_bar_depth, frame_bar_width, frame_bar_depth]);//bottom_right
translate([frame_bar_depth+240,0,2100]) cube([shed_width-(2*frame_bar_depth)-480, frame_bar_width, frame_bar_depth]);//middle
translate([frame_bar_depth-300,0,shed_height-frame_bar_depth]) cube([shed_width-(2*frame_bar_depth)+300, frame_bar_width, frame_bar_depth]);//top
}
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Back Frame
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
color("pink")
translate([shutter_thickness, shutter_thickness + shed_depth - frame_bar_width , 0])
{
cube([frame_bar_depth, frame_bar_width, shed_back_height]); //left

translate([240,0,0]) cube([frame_bar_depth, frame_bar_width, shed_back_height]);  // supp left
    
translate([500,0,0])
for(i=[0:3])
{
translate([frame_bar_depth+i*600,0,0]) cube([frame_bar_depth, frame_bar_width, shed_back_height-frame_bar_depth-325]); //bar
}

translate([shed_width-240,0,0]) cube([frame_bar_depth, frame_bar_width, shed_back_height]);  // supp right
    
translate([shed_width-frame_bar_depth,0,0]) cube([frame_bar_depth, frame_bar_width, shed_back_height]); //right
translate([frame_bar_depth,0,0]) cube([shed_width-(2*frame_bar_depth), frame_bar_width, frame_bar_depth]);//bottom
translate([frame_bar_depth+240,0,shed_back_height-325-frame_bar_depth]) cube([shed_width-(2*frame_bar_depth)-480, frame_bar_width, frame_bar_depth]);//middle
translate([frame_bar_depth-300,0,shed_back_height-frame_bar_depth]) cube([shed_width-(2*frame_bar_depth)+300, frame_bar_width, frame_bar_depth]);//top
}
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////





// left wall
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
color("red")
rotate([0,0,90]) translate([shutter_thickness+frame_bar_width, -frame_bar_width-shutter_thickness , 0])
{
cube([frame_bar_depth, frame_bar_width, shed_height]); //left

translate([360,0,0])
for(i=[0:4])
{

if(i==4)
{
translate([frame_bar_depth+i*600,0,0]) cube([frame_bar_depth, frame_bar_width, shed_back_height-frame_bar_depth]); //bar
}
else
{
translate([frame_bar_depth+i*600,0,0]) cube([frame_bar_depth, frame_bar_width, shed_left_height-frame_bar_depth]); //bar
}

}


translate([shed_depth-(2*frame_bar_width)-frame_bar_depth,0,0]) cube([frame_bar_depth, frame_bar_width, shed_back_height]); //right

translate([frame_bar_depth,0,0]) cube([shed_depth-(2*frame_bar_width)-(2*frame_bar_depth), frame_bar_width, frame_bar_depth]);//bottom
translate([frame_bar_depth,0,shed_left_height-frame_bar_depth]) cube([shed_depth-(2*frame_bar_width)-(2*frame_bar_depth), frame_bar_width, frame_bar_depth]);//top

//top angled
translate([frame_bar_depth,0,shed_height-frame_bar_depth])
rotate([0,-5,0])
cube([shed_depth-(2*frame_bar_width)-(2*frame_bar_depth)+10, frame_bar_width, frame_bar_depth]);
}
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// right
color("Blue")
rotate([0,0,90]) translate([frame_bar_width+shutter_thickness, -shed_width-shutter_thickness , 0])
{
cube([frame_bar_depth, frame_bar_width, shed_right_height]); //left

translate([360,0,0])
for(i=[0:4])
{
translate([frame_bar_depth+i*600,0,0]) cube([frame_bar_depth, frame_bar_width, shed_right_height-frame_bar_depth]); //bar
}

translate([shed_depth-(2*frame_bar_width)-frame_bar_depth,0,0]) cube([frame_bar_depth, frame_bar_width, shed_right_height]); //right

translate([frame_bar_depth,0,0]) cube([shed_depth-(2*frame_bar_width)-(2*frame_bar_depth), frame_bar_width, frame_bar_depth]);//bottom
translate([frame_bar_depth,0,shed_right_height-frame_bar_depth]) cube([shed_depth-(2*frame_bar_width)-(2*frame_bar_depth), frame_bar_width, frame_bar_depth]);//top

//top angled
translate([0,0,shed_height-frame_bar_depth])
rotate([0,-5,0])
cube([shed_depth-(2*frame_bar_width)-(2*frame_bar_depth)+120, frame_bar_width, frame_bar_depth]);

}

//roof
translate([-300+46,0,shed_height-40])
rotate([5,0,0])
{
for(i=[0:5])
{
if(i!=8)
{
translate([i*600,-500,0])cube([46,4500,200]);
}
else
{
translate([shed_width-46,-500,0])cube([46,4500,200]);
}

}
translate([0,-500,0])cube([shed_width+200+frame_bar_depth+46,46,200]);
translate([0,4000,0])cube([shed_width+200+frame_bar_depth+46,46,200]);

translate([shed_width+200+frame_bar_depth,-500,0])cube([46,4500,200]);
}



// winodws
translate([(shed_width/2)-(2475/2),0,2100+frame_bar_depth,]) cube([2475,100,325]); //back
translate([(shed_width/2)-(2475/2),shed_depth-100,shed_back_height-325])  cube([2475,100,325]); //front


window_recess = shutter_thickness+cladding_bar_thickness+cladding_thickness;
// Window Frame front
color("grey")
translate([(shed_width/2)-(2475/2),-window_recess,2100+frame_bar_depth]) cube([2525,window_recess+frame_bar_width,38]); //back




translate([0,1181+1181+frame_bar_width+2*frame_bar_depth,shed_height-526-frame_bar_depth])rotate([0,0,-90])
// Larger angled window

polyhedron( 
 [
  [ 0,  		0,  0 	],  	//0
  [ 1181,	0,  0 	],  	//1
  [ 1181,  	70,  0 	],  	//2
  [ 0,  		70,  0 	],  	//3

  [ 0,  		0,  735 ],  	//4
  [ 1181,  	0,  630 	],  	//5
  [ 1181,  	70,  630 	],  	//6
  [ 0,  		70,  735 ]	//7
] 

, 

[
  [0,1,2,3],  // bottom
  [4,5,1,0],  // front
  [7,6,5,4],  // top
  [5,6,2,1],  // right
  [6,7,3,2],  // back
  [7,4,0,3] 	// left
] 
);

translate([0,1181+frame_bar_width+frame_bar_depth,shed_height-526-frame_bar_depth])rotate([0,0,-90])
// smaller angled window

polyhedron( 
 [
  [ 0,  		0,  0 	],  	//0
  [ 1181,	0,  0 	],  	//1
  [ 1181,  	70,  0 	],  	//2
  [ 0,  		70,  0 	],  	//3

  [ 0,  		0,  626 ],  	//4
  [ 1181,  	0,  526 	],  	//5
  [ 1181,  	70,  526	],  	//6
  [ 0,  		70,  626 ]	//7
] 

, 

[
  [0,1,2,3],  // bottom
  [4,5,1,0],  // front
  [7,6,5,4],  // top
  [5,6,2,1],  // right
  [6,7,3,2],  // back
  [7,4,0,3] 	// left
] 
);

// Door

translate([240+frame_bar_depth+shutter_thickness,0,0]) cube([920,44,2100]);


