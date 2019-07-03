$fn=12;

module roundedcube(x,y,rdim, z){
    //cube([x,y,z]);
    
    hull(){
        translate([rdim,rdim,0]) cylinder(r=rdim, h=z);
        translate([x-rdim,rdim,0]) cylinder(r=rdim, h=z);
        translate([rdim,y-rdim,0]) cylinder(r=rdim, h=z);
        translate([x-rdim,y-rdim,0]) cylinder(r=rdim, h=z);
    }
}


module bed_final_MK2(h){
	translate([-60,-105,0])
	linear_extrude(height=h)
	difference(){
	// base
		{
		polygon(points=[
			[50,105],
			[50,325],
			[280,325],
			[280,105]   
			], paths = [[0,1,2,3]]);
	}

	// outer bed screws
	translate([65,110])circle(r=1.5);
	translate([65,320])circle(r=1.5);
	translate([274,320])circle(r=1.5);
	translate([274,110])circle(r=1.5);

	// center bed screws
	translate([170,235])circle(r=1.5);
	translate([170,194])circle(r=1.5);

	// bearing lf
	translate([75,180])circle(r=1.5);
	translate([95,180])circle(r=1.5);

	// bearing lb
	translate([75,250])circle(r=1.5);
	translate([95,250])circle(r=1.5);

	// bearing r
	translate([245,215])circle(r=1.5);
	translate([265,215])circle(r=1.5);

	/*
	translate([80,196-31,0])cube([10,31,h]);

	translate([80,196-31+70,0])cube([10,31,h]);
	translate([80+170,196-31+35,0])cube([10,31,h]);
	*/

	translate([80,196-31,0])roundedcube(10,31,4,h);

	translate([80,196-31+70,0])roundedcube(10,31,4,h);
	translate([80+170,196-31+35,0])roundedcube(10,31,4,h);


	translate([0,0,-.5])
	// linear_extrude(height=h+1)
	{
	polygon(
		points = [
	[90,220],
	[110,240],
	[130,240],
	[150,220],
	[150,210],
	[130,190],
	[110,190],
	[90,210]
	], paths = [[0,1,2,3,4,5,6,7]]
	);

	polygon(
		points = [
	[220,240],
	[240,220],
	[240,210],
	[220,190],
	[210,190],
	[190,210],
	[190,220],
	[210,240]
	], paths = [[0,1,2,3,4,5,6,7]]
	);



	polygon(
		points = [
	[102,290],
	[238,290],
	[198,250],
	[142,250]
	], paths = [[0,1,2,3]]
	);

	polygon(
		points = [
	[102,140],
	[142,180],
	[198,180],
	[238,140]
	], paths = [[0,1,2,3]]
	);


	polygon(
		points = [
	[248,130],
	[273,105],
	[67,105],
	[92,130]
	], paths = [[0,1,2,3]]
	);

	polygon(
		points = [
	[92,300],
	[67,325],
	[273,325],
	[248,300]
	], paths = [[0,1,2,3]]
	);



	polygon(
		points = [
	[280,318],
	[240,278],
	[240,258],
	[270,228],
	[270,202],
	[240,172],
	[240,152],
	[280,112],
	[280,108],
	[277,105],
	[315,105],
	[315,325],
	[277,325],
	[280,322]
	]
	, paths = [[0,1,2,3,4,5,6,7,8,9,10,11,12,13]
	]
	);


	polygon(
		points = [
	[63,325],
	[60,322],
	[60,318],
	[80,298],
	[80,278],
	[70,268],
	[70,230],
	[80,220],
	[80,210],
	[70,200],
	[70,162],
	[80,152],
	[80,132],
	[60,112],
	[60,108],
	[63,105],
	[50,105],
	[50,325]
	], paths = [[0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17]]
	);
	};
	}
}

 bed_final(6); // MK52, MK3
 // %bed_final_MK2(6); // MK42, MK2

module bed_final(height) {

// MK52 / MK3
translate([-7.5,-1,0])linear_extrude(height, center = false, convexity = 10)
intersection(){
	translate([-64,-74,0])difference(){
	   import (file = "v:/3D Drucker/03_Prusa i3 Mk3/04_original_parts/2018-03-29/Original-Prusa-i3-MK3/Frame/MK3v8b.dxf", layer = "0");
	   import (file = "v:/3D Drucker/03_Prusa i3 Mk3/04_original_parts/2018-03-29/Original-Prusa-i3-MK3/Frame/MK3v8b.dxf", layer = "M3");
	}
	square([240,240]);
}

}