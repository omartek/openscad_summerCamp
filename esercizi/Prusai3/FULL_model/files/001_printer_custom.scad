use <common_schrauben.scad>

// libraries
use <common_tr8x8_leadscrew.scad>
use <common_LM8UU.scad>
use <common_nema_17.scad>
use <common_e3d_v6_all_metall_hotend.scad>


use <002_heated_bed_mk52.scad>
use <003_prusa_bed.scad>
// use <004_PSU-cover-NODRILL.scad>
use <005_extruder-body.scad> // body & idler
use <extruder-cover.scad>
use <extruder-idler-plug.scad>
use <z-axis-bottom.scad>
use <z-axis-top.scad>
use <x-end-idler.scad>
use <x-end-motor.scad>
use <y-belt-idler.scad>
use <Einsy-base.scad>
use <Einsy-doors.scad>
use <x-carriage.scad>
use <x-carriage-back.scad>
use <extruder-idler.scad>
use <Einsy-hinges.scad>

mmucount = 0; // number of different materials and stepper motors


// deckenkamera(); // Kamera und Lack Tisch	
	
module deckenkamera() {
	
	// IKEA Lack, Füße vereinfacht nur verlängert
	translate([0,0,430+25])%cube([550,550,50], center=true);
	translate([-500/2,500/2,430/2])%cube([50,50,430], center=true);
	translate([500/2,-500/2,430/2])%cube([50,50,430], center=true);
	translate([500/2,500/2,430/2])%cube([50,50,430], center=true);
	translate([-500/2,-500/2,430/2])%cube([50,50,430], center=true);
	
	
	module camsocket(){
		m0=22;
			color("green")translate([42,4,-7.5])union(){
			difference()
			{
				union(){
					translate([22,m0/2,4])cube([44,6.5,14], center=true);
					translate([0,m0/2,0])rotate([0,90,0])cylinder(44,r=4.5);
				}
				translate([11,m0/2,2])rotate([0,90,0])cylinder(22,r=5);
				translate([11,m0/2,-1])rotate([0,90,0])cylinder(22,r=4.7);
			}
		}
	}
	
	
	translate([550/2 - 70,550/2 - 70,430-53])
	// Neigung
	rotate([65,0,-60])
	// zentrieren
	{
		translate([65,-15,0]){
			rotate([0,180,0])camsocket();
			// Kamera C920
			translate([4.5,14-9,0])rotate([0,180,0])%c920(0);
		}
		color("red")translate([1,5,-5.5])cube([44,20,5], center=true);
		translate([0,18,-1.2])rotate([90-65,0,0])translate([1,14.4,-2.4])cube([44,40,5], center=true);
		translate([0,18,-1.2])rotate([90-65+90,0,0])translate([1,12.6,-35]) {
			difference(){
				cube([44,35,5], center=true);
				translate([0,4,0])cylinder(8,r=1.8, center=true, $fn=30);
			}
		}
		
	}
}


module cameraMount(){
	r0= 17 ;
	
	// Ausrichtung ist von Motorwelle aus betrachtet, frontal vom Motor weg und nach unten
	translate([0,-8.9,-10.6]){
		difference(){
				cube([16.8, 21+8.9 , 31.8+1.8]);
				rotate([0,90,0])translate([-10,8.5,10])rotate([0,0,30])
				minkowski()	{
						cylinder(20,r=r0-4.5,$fn=6,center=true);
						cylinder(2, r=4, $fn=30);
				}
				translate([0,15.5+8.9,15.7+10.6])rotate([0,90,0]){
					// Bohrung für Schraube, Montage an Motor
					cylinder(60,r=1.8, $fn=40, center=true);
					translate([0,0,13])cylinder(60,r=3.2, $fn=40, center=false);
				}
		}
		h0=37;
		h1=10;
		m0=22;
		translate([0,7.9,33.6])cube([16.8,22,h0]);
		translate([0,7.9,33.6 + h0]){
			difference(){				
				cube([16.8 + 75 ,m0,h1]);
				translate([30,-1,-1])cube([16.8 + 75 -29 ,m0+2,h1-5]);
				translate([16.8 + 65,15,-5]){
				// Verbindungsstellen
					cylinder(30, r=2.1,$fn=30);
				}
				
			}
			camsocket(m0, h1, -12);
			//translate([0,0,0])%c920shadow();
			translate([0,0,0])%c920(-12);
		}
	}
}

module camsocket(m0, h1, alpha){
	
	h1=13.5;
	m0=22;
	
	color("red")translate([30,0,0])  
	difference()
	{
		cube([16.8 + 75 -30 ,m0,h1-9.5]);
		translate([16.8 + 25 + 10 , 15 ,-5]) {
			// Verbindungsstellen
			cylinder(30, r=2.1,$fn=30);
		}
		 //translate([0,-8,-3])rotate([-30,0,0])translate([0,0,-1.3])cube([16.8 + 75 -20 ,10,10]); // vorn anschrägen
		 
	}
	
	translate([16.8 + 25 + 10 + 30 , 15 ,-0.5]) {
			DIN912(4, 14, false);
	}

	color("blue")translate([42,4,-7.5])rotate([0,0,alpha])union(){
		difference()
		{
			union(){
				translate([22,m0/2,4])cube([44,6.5,14], center=true);
				translate([0,m0/2,0])rotate([0,90,0])cylinder(44,r=4.5);
			}
			translate([11,m0/2,2])rotate([0,90,0])cylinder(22,r=5);
			translate([11,m0/2,-1])rotate([0,90,0])cylinder(22,r=4.7);
		}
	}
}

module c920shadow(){
	rotate([180,0,90]) {
		translate([-4.6,20.6,1.5])cube([28+4.6,93,29]);
	}
}

module c920(alpha){
	rotate([180,0,90]) {
		translate([22,68,16])rotate([0,0,-alpha])translate([-9,0,0]) union() {
			translate([-2,0,0])cube([20,62.4,29], center=true);
			// %cube([24,94,29], center=true);
			translate([1.3,0,-29/2])resize(newsize=[20,94,29]) cylinder(29,r=10);
			translate([-12+5,0,-2.5])rotate([0,0,180]){
				rotate_extrude(angle=-35)square([350,5]);
				rotate_extrude(angle=35)square([350,5]);
			}
		}
	}
}



module extruder_full() {
    translate([0,0,0])rotate([-90,0,0]){
        union(){
			if (mmucount == 0 ){
				// ggf 3mm versetzt
				/* default extruder */
				// ****************
				translate([17,6.5,-2])
				rotate([0,0,180])
				// color("red")
				{
					c_extruder_body();
					rotate([0,180,0])extruder_cover();
					translate([0.5,0,-1])rotate([0,180,0])plug();
					rotate([-90,180,0])filament();
				}
				translate([17,6.5,-3])rotate([180,-90,0])c_extruder_idler();
				translate([21, -21.5,28.5])rotate([0,180,0])nema_17();
				/* Hotend */
				translate([17,-1.9,15])rotate([-90,0,0])print_part();
			} else {	
            
				// MMU V2 reserved 
				// ******
				
            }
            
            translate([17,6.5,2.5])rotate([90,0,0])fan_n();
            translate([34,31,0])rotate([180,0,0])x_carriage();
            translate([17,6,0])rotate([180,0,0])x_carriage_back();
            
            translate([29.5,31,-12])rotate([180,90,0])LM8UU();
            translate([29.5-12.5,-14,-12])rotate([180,90,0])LM8UU();
            translate([29.5+12.5,-14,-12])rotate([180,90,0])LM8UU();
        }
    }
	
	module filament(){
		include <filament-sensor-cover.scad>;
	}
	
	module fan_n(){
		include <nozzle-fan.scad>
	}
}

module bed(){
	%translate([25,158,5.5])rotate([0,0,180])bed_final(6); 
	// translate([25,158,5.5])rotate([0,0,180])import("008_mk42_bed.stl");
	// translate([25,158,5.5])rotate([0,0,180])import("010_Mk52Headbed_Assembly.stl");
	translate([25+17,158-4.5,19.5])rotate([0,0,180])mk52();

	translate([0,0,0])rotate([0,90,90])LM8UU();
	translate([0,70,0])rotate([0,90,90])LM8UU();
	translate([-170,35,0])rotate([0,90,90])LM8UU();
}

%translate([+370/2+6.5,-6,0])rotate([90,0,180])
//linear_extrude(height=6)
frame();
module frame(){
	include <006_frame.scad>;
}

module prusa_mk2_printer(FrameX, FrameY, FrameZ){
	// world reference offset + position
	z_axis = 122.2 /*bed frame abs. height */ + 9.4 /* heated bed height */ + FrameZ;
	y_axis = -108-5.5 + FrameY;
	x_axis = -116.5 + FrameX;

	translate([-x_axis,28, z_axis ])extruder_full();
	translate([-28.5-153.5 , 2.8+28 , 20.2+ z_axis ])rotate([0,180,-90])x_end_idler();
	translate([28.5+160.5 , 2.8+28 , 20.2+ z_axis ])rotate([0,180,-90]){
		x_end_motor();
		// translate([-23.4,32,30])cameraMount();
	}
	translate([221 , 7.4, -10+z_axis])rotate([0,90,90])nema_17();
	
	translate([172,30,50])cover();
	module cover() {
		include <z-screw-cover.scad>
	}
	translate([-20-171.5+6.5,1,55])rotate([0,180,-90])z_bottom_right();
	translate([-171.5+6.5,30.5,50])nema_17();
	translate([-171.5+6.5,30.5,20+z_axis])rotate([0,0,0])leadscrew();

	translate([-165,30,50])rotate([0,0,0])cover();
	translate([33+171.5,1,55])rotate([0,180,-90])z_bottom_left();
	translate([171.5,30.5,50])nema_17();
	// translate([171.5,30.5,20+z_axis])rotate([0,0,0])leadscrew(); Andere Maße
	// threaded rods
	z_screw(FrameZ);


	translate([33+171.5,1,370])rotate([0,180,-90])z_top_left();
	translate([-20-171.5+6.5,1,370])rotate([0,180,-90])z_top_right();

	y_offset = -14; // move back same to adjust distances
	translate([6, -110.5 + y_offset ,-2])rotate([0,-90,0])y_motor();
	
	module y_motor(){
		include <y-motor-holder.scad>
	}
	translate([19, -91+y_offset ,24])rotate([0,-90,0])nema_17();

	// Y belt holder
	translate([-2, 48+y_axis ,34])rotate([0,-90,180])holders();
	module holders(){
		include <y-belt-holder.scad>
	}
	translate([6,201,5])rotate([0,0,0])Y_belt_idler();

	// Y rod holder 
	
	translate([-79,-140-y_offset,30])rotate([-90,0,0])rodHolder();
	translate([90,-140-y_offset,30])rotate([-90,0,0])rodHolder();
	translate([-79,201,30])rotate([-90,0,180])rodHolder();
	translate([90,201,30])rotate([-90,0,180])rodHolder();
	
	module rodHolder (){
		include <y-rod-holder.scad>;
	}
	
	// PSU
	translate([-125, -8 ,20])rotate([90,0,-90])PSUCASE();
	module PSUCASE(){
		include <004_PSU-cover-NODRILL.scad>;
	}

	// bed carriage
	translate([88+2,y_axis,41])bed();

	// RAMbo 
	%translate([43+93.4+5,-98.3,178.5])rotate([0,90,0]) einsydoors();
	%translate([43+148.7,-6,178.3])rotate([0,90,180])einsybase();
	
	
	module einsybase() {
		include <Einsy-base.scad>;
	}

	module einsydoors() {
		include <Einsy-doors.scad>;
	}

	
	translate([146.1,-11,178.8])rotate([0,180,90])upper_hinge();
	translate([140.1,-11,63.8])rotate([0,0,-90])lower_hinge();
	
	
	// mmu upgrades
	// ============
	// MMU V1 stepper motors
	
	if(mmucount ==2){
		translate([0,-41.2,358.7])rotate([0,0,-90])main();
	} else if (mmucount == 4) {
		translate([-70,-41.2,358.7])rotate([0,0,-90])main();
		translate([70,-41.2,358.7])rotate([0,0,-90])main();    
	} else {
		
	}

if (mmucount>0) {
		// superswitch MMU V1
		// translate([165.5,-6,281.5]){
			// rotate([0,-90,90])import("//nas0385f2/home/3D Drucker/01_Prusa i3Mk2/04_Original_Parts/mm_parts/superswitch-case.stl");
			// rotate([0,-90,90])translate([0,0,0.05])import("//nas0385f2/home/3D Drucker/01_Prusa i3Mk2/04_Original_Parts/mm_parts/superswitch-cover.stl");
		// }
	}
}


module z_screw(FrameZ) {
	// Z-Spindeln
	for(i = [0:8:284+30]){
		// r
		translate([ 171.5 , 30.5, 50])translate([0,0, i ])rotate([0,0,145-FrameZ*(360/4)])translate([141.34,-42.019,-102])import("007_z_thread.stl");
		// l
		translate([ -171.5+6.5 , 30.5 , 50 ])translate([0,0, i ])rotate([0,0,145-FrameZ*(360/4)])translate([141.34,-42.019,-102])import("007_z_thread.stl");
	}
}

// final model with variable extruder and bed position
prusa_mk2_printer(200,105,200);

// what is the max height?
//translate([0,0,400])cube([200,200,2], true);

use <100_LED_halter.scad>
// translate([0,5,324])rotate([90,0,-90])LED_halter();