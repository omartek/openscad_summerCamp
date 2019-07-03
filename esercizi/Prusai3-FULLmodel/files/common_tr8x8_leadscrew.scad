use <threads.scad>

$fn=40;

height = 30 ;  // total height of the nut
threads = 2 ;  // 4 for Tr8x8, 2 for Tr8x4

module screw() {
  thrs = 2 ;
  translate([0,0,-height/2])
	metric_thread(diameter=8.2, thread_size=thrs, rectangle=2/thrs, pitch=2,
	n_starts=threads, length=height+4, internal=true) ;
}

module leadscrew(){
  h0= 3.8 ;
difference(){
  union(){
	cylinder(h0, d=22, center=false) ;
	translate([0,0,h0])cylinder(1.2, d=12, center=false) ;
	translate([0,0,-10])cylinder(10, d=10, center=false) ;
  }
  thread() ;
  bohrungen(5) ;
  }
}

module bohrungen(h0) {
  union() {
	r0=15.7 ;
	d0=3.2 ;
	for(i = [45:90:270+45]) {
	  rotate([0,0,i])translate([r0/2,0,0])cylinder(h0,d=d0, center=false) ;
	}
  }
}
module thread() {
  $fn=10 ;
  screw() ;
}


leadscrew();