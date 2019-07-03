
// Camera: 181,187,-293,0,0,0,1300

// linear_extrude(6, center = false, convexity = 10)
// difference(){
// square([400,400]);
	// translate([0,0,0]){
	   // import (file = "v:/3D Drucker/03_Prusa i3 Mk3/04_original_parts/2018-03-29/Original-Prusa-i3-MK3/Frame/MK3v8b.dxf", layer = "0");
	   // import (file = "v:/3D Drucker/03_Prusa i3 Mk3/04_original_parts/2018-03-29/Original-Prusa-i3-MK3/Frame/MK3v8b.dxf", layer = "M3");
	// }
	// translate([64,74,0])square([240,240]);
// }


import ("009_i3_MK3_Frame.stl");
translate([82.5,-5,2+205])import("011_MK3 Front Plate.stl");
translate([46,-5,-4-120])import("012_MK3 Rear Plate.stl");


module alu_frame_inner_cutout(outer_size=[0,0])
{
  inner_size=[260, 290];
  translate((outer_size-inner_size+[0,0])/2) alu_frame_square(inner_size);

  translate([outer_size[0]/2,50]) {
    for (i=[-1,1]) translate([i*85,0]) {
      hull() {
        translate([0,-30]) circle(d=10, center=true, $fn=20);
        square([10,10], center=true);
      }
      translate([0,-4]) rotate(a=45) square([30,30], center=true);
    }
    translate([0,-2]) square([170,30], center=true);
  }

  translate([outer_size[0]/2,40]) intersection() {
    translate([0,-16.5]) square([100,20], center=true);
    rotate(a=45) square([42,42], center=true);
  }
}

module alu_frame_stabalizer_mount_holes(size=[0,0])
{
  translate([(size[0]/2),0]) for (i=[0,1]) mirror([i,0]) translate([(size[0]/2)-44.6,0]) {
    for (i=[0,1]) translate([0,(size[1]/2)+(i*((size[1]/2)-30))]) {
      circle(d=3.6, center=true, $fn=20);
      for (i=[-1,1]) translate([0,i*16.15]) square([/*10.2,9.4*/0,0], center=true);
    }

    translate([0,25]) {
      translate([0,16.15]) square([/*10.2,9.4*/0,0], center=true);
      circle(d=3.6, center=true, $fn=20);
    }
  }
}


module alu_frame_mount_holes(size) {
    translate([50,6])circle(r=size, center=true, $fn=20);
    translate([140,6])circle(r=size, center=true, $fn=20);
    translate([230,6])circle(r=size, center=true, $fn=20);
    translate([320,6])circle(r=size, center=true, $fn=20);
    translate([4.9616,67.9915])circle(r=size, center=true, $fn=20);
    translate([47.9515,67.9653])circle(r=size, center=true, $fn=20);
    
    translate([3.74,100])circle(r=size, center=true, $fn=20);
    translate([52,100])circle(r=size, center=true, $fn=20);
    
    translate([4.9515,161.9653])circle(r=size, center=true, $fn=20);
    translate([47.9515,161.9653])circle(r=size, center=true, $fn=20);
    
    translate([52,174.93])circle(r=size, center=true, $fn=20);
    translate([3.74,181.28])circle(r=size, center=true, $fn=20);
    
    
    translate([4.9515,269.4653])circle(r=size, center=true, $fn=20);
    translate([47.9515,269.4653])circle(r=size, center=true, $fn=20);
    
    a= 80;
    translate([315+3+15,a])circle(r=size, center=true, $fn=20);
    translate([315+3+15,a+117])circle(r=size, center=true, $fn=20);
    // selbe wie von oben her: translate([315+3+15,370-173])circle(r=size, center=true, $fn=20);
    
}


module alu_frame_rod_mount_holes(size=[0,0])
{
  translate([(size[0]/2),(size[1]/2)+15]) for (i=[0,1]) mirror([0,i]) for (i=[0,1]) mirror([i,0]) translate([(size[0]/2)-20,-(size[1]/2)+5]) {
    for (i=[-1,1]) translate([i*10,20]) circle(d=4, center=true, $fn=20);
    circle(d=3.6, center=true, $fn=20);
    //hull() for (i=[-1,1]) translate([i*4,-10]) circle(d=8, center=true, $fn=20);
  }
}

module alu_frame_square(size=[0,0], p=7)
{
  h = sqrt(pow(p,2)+pow(p,2));
  difference() {
    square([size[0], size[1]]);
    for (i=[0,1]) for (j=[0,1]) translate([(i*2)*((size[0])/2), (j*2)*((size[1]-h)/2)+(j*h)-(h/2)]) rotate(a=45) square([p,p]);
  }
}

module alu_frame()
{
  size = [376.5, 370];
  difference() {
    alu_frame_square(size);
    alu_frame_inner_cutout(size);

    // Bottom cutout
    //translate([(size[0]-300)/2,-10+3]) alu_frame_square([300,10]);
      
      polygon(points=[
        [25,0],
        [25+6,6],
        [25+6+6,6],
        [25+6+6+6,2],
        [25+6+6+6+288,2],
      
      [25+6+6+6+288+6,6],
      [25+6+6+6+288+6+6,6],
      [25+6+6+6+288+6+6+6,0]
      
      
        ], paths = [[0,1,2,3,4,5,6,7]]);

    // Mount holes
    //alu_frame_stabalizer_mount_holes(size);
    alu_frame_rod_mount_holes(size);
    alu_frame_mount_holes(1.5);
  }
}

// linear_extrude(height=6)alu_frame(); 
