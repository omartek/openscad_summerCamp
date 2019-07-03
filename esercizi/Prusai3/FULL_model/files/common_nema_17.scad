$fn=25;

module nema_17(motor_height = 40, shaft_diameter = 5.2, shaft_flat = 0.2)
{
    rotate(a=90, v=[-1,0,0])
    nema(motor_size = 42, motor_height = 40, shaft_diameter = 5.2, shaft_flat = 0.2);
}

nema_17();

module nema(motor_size=42, motor_height = 38, shaft_diameter = 5.2, shaft_flat = 0.2) {

realDelta = 6;

	difference() {

    union()
    {
        color("silver")
        // Motor base
		translate([0,motor_height/2,0]) rotate([90,0,0]) hull() {
			translate([-(motor_size/2-5),(motor_size/2-5),0]) cylinder(r=5,h=motor_height, center = true);
			translate([(motor_size/2-5),(motor_size/2-5),0]) cylinder(r=5,h=motor_height, center = true);
			translate([-(motor_size/2-5),-(motor_size/2-5),0]) cylinder(r=5,h=motor_height, center = true);
			translate([(motor_size/2-5),-(motor_size/2-5),0]) cylinder(r=5,h=motor_height, center = true);
		}
        color("black")
        translate([0,motor_height/2,0]) rotate([90,0,0]) hull() {
            translate([-(motor_size/2-5),(motor_size/2-5),0]) cylinder(r=5.1,h=motor_height/2, center = true);
            translate([(motor_size/2-5),(motor_size/2-5),0]) cylinder(r=5.1,h=motor_height/2, center = true);
            translate([-(motor_size/2-5),-(motor_size/2-5),0]) cylinder(r=5.1,h=motor_height/2, center = true);
            translate([(motor_size/2-5),-(motor_size/2-5),0]) cylinder(r=5.1,h=motor_height/2, center = true);
        }
    }


        // Mount holes
        union() {
		translate([15.5,0.1,15.5]) rotate([90,0,0]) cylinder(r=1.5,h=10, center = true);
		translate([-15.5,0.1,15.5]) rotate([90,0,0]) cylinder(r=1.5,h=10, center = true);
		translate([15.5,0.1,-15.5]) rotate([90,0,0]) cylinder(r=1.5,h=10, center = true);
		translate([-15.5,0.1,-15.5]) rotate([90,0,0]) cylinder(r=1.5,h=10, center = true);
        }
	}
    color("silver")
    // Motor shaft
	translate([0,-10,0]) rotate([90,0,0])
    difference() {    
        cylinder(r=shaft_diameter/2,h=20+realDelta, center = true); 
        translate([-shaft_diameter/2,(shaft_diameter/2)-shaft_flat*2,1])
        cube([shaft_diameter,shaft_diameter/2,10+realDelta]);
    }
    color("gray")
    // The ring around the motor shaft
	difference() {
		translate([0,-1,0]) rotate([90,0,0]) cylinder(r=11,h=2, center = true);
		translate([0,-1.1,0]) rotate([90,0,0]) cylinder(r=9.05,h=2, center = true);
	}
}

module nema_holes(places=[1,1,1,1], size=15.5, h=10, holes=false, shadow=false, $fn=8){
    for (i=[0:3]) {
        if (places[i] == 1) {
            rotate([0, 0, 90*i]) translate([size, size, 0]) {
                if (holes) {
                    rotate([0, 0, -90*i]) translate([0,0,0]) rotate([0,0,90]) cylinder_poly(h = h+0.1, r = M3/2);
					rotate([0, 0, -90*i]) translate([0,0,h]) rotate([0,0,22.5]) cylinder(h = h, r = M3*2.2/2, $fn = $fn);
                } else {
                    rotate([0, 0, -90*i]) cylinder(h=h, r=4, $fn=$fn);
                }
            }
        }
    }
    if (shadow != false) {
        %translate ([0, 0, -19]) cube([42,42,38], center = true);
    //flange
        translate ([0, 0, 0]) cylinder(r=22.6/2,h=h*2, center = false, $fn=20);
    //shaft
        %translate ([0, 0, 0]) cylinder(r=2.5,h=14, center = false);
    }
}

