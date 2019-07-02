//!OpenSCAD

rotate([0, 0, 180]){
  // Trakks
  union(){
    mirror([1,0,0]){
      translate([15, -5, 0]){
        color([0.4,0.4,0.4]) {
          rotate([0, 90, 0]){
            cylinder(r1=5, r2=5, h=5, center=true);
          }
          translate([0, 10, 3]){
            rotate([0, 90, 0]){
              cylinder(r1=2, r2=2, h=5, center=true);
            }
          }
          translate([0, 12, -2]){
            rotate([0, 90, 0]){
              cylinder(r1=3, r2=3, h=5, center=true);
            }
          }
          translate([0, 2, 8]){
            rotate([0, 90, 0]){
              cylinder(r1=2, r2=2, h=5, center=true);
            }
          }
          translate([0, 6.5, 5]){
            rotate([0, 0, 0]){
              rotate([55, 0, 0]){
                cylinder(r1=1, r2=1, h=10, center=true);
              }
            }
          }
          translate([0, 5, 4]){
            rotate([0, 0, 0]){
              rotate([310, 0, 0]){
                cube([3, 1, 6], center=true);
              }
            }
          }
          hull(){
            translate([0, 4, -1.5]){
              cube([3, 13, 3], center=true);
            }
            translate([0, 4, 0]){
              cube([3, 8, 3], center=true);
            }
          }
        }
        color([0.2,0.2,0.2]) {
          translate([0, 0, -6]){
            cube([10, 4, 2], center=true);
            cube([4, 6, 1], center=true);
          }
          translate([0, 6, -6]){
            cube([10, 4, 2], center=true);
            cube([4, 6, 1], center=true);
          }
          translate([0, 12, -6]){
            cube([10, 4, 2], center=true);
            cube([4, 6, 1], center=true);
          }
          translate([0, 17, -4]){
            rotate([45, 0, 0]){
              cube([10, 4, 2], center=true);
              cube([4, 6, 1], center=true);
            }
          }
          translate([0, 17.5, 0.5]){
            rotate([310, 0, 0]){
              cube([10, 4, 2], center=true);
              cube([4, 6, 1], center=true);
            }
          }
          translate([0, 14, 4]){
            rotate([315, 0, 0]){
              cube([10, 4, 2], center=true);
              cube([4, 6, 1], center=true);
            }
          }
          translate([0, 10, 7]){
            rotate([320, 0, 0]){
              cube([10, 4, 2], center=true);
              cube([4, 6, 1], center=true);
            }
          }
          translate([0, 6, 10]){
            rotate([330, 0, 0]){
              cube([10, 4, 2], center=true);
              cube([4, 6, 1], center=true);
            }
          }
          translate([0, 1, 11]){
            cube([10, 4, 2], center=true);
            cube([4, 6, 1], center=true);
          }
          translate([0, -3.5, 9]){
            rotate([50, 0, 0]){
              cube([10, 4, 2], center=true);
              cube([4, 6, 1], center=true);
            }
          }
          translate([0, -6, 4]){
            rotate([80, 0, 0]){
              cube([10, 4, 2], center=true);
              cube([4, 6, 1], center=true);
            }
          }
          translate([0, -6, -1]){
            rotate([95, 0, 0]){
              cube([10, 4, 2], center=true);
              cube([4, 6, 1], center=true);
            }
          }
          translate([0, -4, -5]){
            rotate([320, 0, 0]){
              cube([10, 4, 2], center=true);
              cube([2, 6, 1], center=true);
            }
          }
        }
      }
    }
    translate([15, -5, 0]){
      color([0.4,0.4,0.4]) {
        rotate([0, 90, 0]){
          cylinder(r1=5, r2=5, h=5, center=true);
        }
        translate([0, 10, 3]){
          rotate([0, 90, 0]){
            cylinder(r1=2, r2=2, h=5, center=true);
          }
        }
        translate([0, 12, -2]){
          rotate([0, 90, 0]){
            cylinder(r1=3, r2=3, h=5, center=true);
          }
        }
        translate([0, 2, 8]){
          rotate([0, 90, 0]){
            cylinder(r1=2, r2=2, h=5, center=true);
          }
        }
        translate([0, 6.5, 5]){
          rotate([0, 0, 0]){
            rotate([55, 0, 0]){
              cylinder(r1=1, r2=1, h=10, center=true);
            }
          }
        }
        translate([0, 5, 4]){
          rotate([0, 0, 0]){
            rotate([310, 0, 0]){
              cube([3, 1, 6], center=true);
            }
          }
        }
        hull(){
          translate([0, 4, -1.5]){
            cube([3, 13, 3], center=true);
          }
          translate([0, 4, 0]){
            cube([3, 8, 3], center=true);
          }
        }
      }
      color([0.2,0.2,0.2]) {
        translate([0, 0, -6]){
          cube([10, 4, 2], center=true);
          cube([4, 6, 1], center=true);
        }
        translate([0, 6, -6]){
          cube([10, 4, 2], center=true);
          cube([4, 6, 1], center=true);
        }
        translate([0, 12, -6]){
          cube([10, 4, 2], center=true);
          cube([4, 6, 1], center=true);
        }
        translate([0, 17, -4]){
          rotate([45, 0, 0]){
            cube([10, 4, 2], center=true);
            cube([4, 6, 1], center=true);
          }
        }
        translate([0, 17.5, 0.5]){
          rotate([310, 0, 0]){
            cube([10, 4, 2], center=true);
            cube([4, 6, 1], center=true);
          }
        }
        translate([0, 14, 4]){
          rotate([315, 0, 0]){
            cube([10, 4, 2], center=true);
            cube([4, 6, 1], center=true);
          }
        }
        translate([0, 10, 7]){
          rotate([320, 0, 0]){
            cube([10, 4, 2], center=true);
            cube([4, 6, 1], center=true);
          }
        }
        translate([0, 6, 10]){
          rotate([330, 0, 0]){
            cube([10, 4, 2], center=true);
            cube([4, 6, 1], center=true);
          }
        }
        translate([0, 1, 11]){
          cube([10, 4, 2], center=true);
          cube([4, 6, 1], center=true);
        }
        translate([0, -3.5, 9]){
          rotate([50, 0, 0]){
            cube([10, 4, 2], center=true);
            cube([4, 6, 1], center=true);
          }
        }
        translate([0, -6, 4]){
          rotate([80, 0, 0]){
            cube([10, 4, 2], center=true);
            cube([4, 6, 1], center=true);
          }
        }
        translate([0, -6, -1]){
          rotate([95, 0, 0]){
            cube([10, 4, 2], center=true);
            cube([4, 6, 1], center=true);
          }
        }
        translate([0, -4, -5]){
          rotate([320, 0, 0]){
            cube([10, 4, 2], center=true);
            cube([2, 6, 1], center=true);
          }
        }
      }
    }
    color([0.4,0.4,0.4]) {
      translate([-7, -5, 0]){
        translate([-5, 0, 0]){
          rotate([0, 90, 0]){
            cylinder(r1=4, r2=4, h=5, center=true);
          }
        }
        rotate([0, 90, 0]){
          cylinder(r1=4, r2=2.5, h=5, center=true);
        }
        translate([5, 0, 0]){
          rotate([0, 90, 0]){
            cylinder(r1=2.5, r2=2.5, h=5, center=true);
          }
        }
      }
      mirror([1,0,0]){
        translate([-7, -5, 0]){
          translate([-5, 0, 0]){
            rotate([0, 90, 0]){
              cylinder(r1=4, r2=4, h=5, center=true);
            }
          }
          rotate([0, 90, 0]){
            cylinder(r1=4, r2=2.5, h=5, center=true);
          }
          translate([5, 0, 0]){
            rotate([0, 90, 0]){
              cylinder(r1=2.5, r2=2.5, h=5, center=true);
            }
          }
        }
      }
    }
  }
  // Control panel
  translate([0, 10, 15.5]){
    union(){
      difference() {
        color([0.4,0.4,0.4]) {
          cube([12, 3, 6], center=true);
        }

        translate([3, 1, 0.5]){
          color([0.2,0.2,0.2]) {
            cube([6, 1, 0.5], center=true);
          }
        }
        translate([3, 1, 1.5]){
          color([0.2,0.2,0.2]) {
            cube([6, 1, 0.5], center=true);
          }
        }
        translate([3, 1, 2.5]){
          color([0.2,0.2,0.2]) {
            cube([6, 1, 0.5], center=true);
          }
        }
        translate([4.5, 1.5, -1.5]){
          color([0.2,0.2,0.2]) {
            cube([2, 1, 2], center=true);
          }
        }
      }
      color([0.4,0.4,0.4]) {
        difference() {
          translate([-3, 2, 0]){
            cube([6, 1, 6], center=true);
          }

          translate([-3, 2, 0]){
            cube([5, 1, 5], center=true);
          }
        }
      }
      translate([-1.5, 1.5, 1.5]){
        color([0.2,1,0.2]) {
          cube([3, 1, 0.5], center=true);
        }
      }
      translate([4.5, 1.5, -1.5]){
        color([0.75,0.75,0.75]) {
          rotate([90, 0, 0]){
            cylinder(r1=1, r2=1, h=0.5, center=true);
          }
        }
      }
      translate([-1.5, 1.5, 2.25]){
        color([0.2,1,0.2]) {
          cube([3, 1, 0.5], center=true);
        }
      }
      translate([-1.5, 1.5, -1.5]){
        color([0.2,1,0.2]) {
          cube([3, 1, 0.5], center=true);
        }
      }
      translate([-1.5, 1.5, 0]){
        color([0.2,1,0.2]) {
          cube([3, 1, 0.5], center=true);
        }
      }
      translate([-1.5, 1.5, 0.75]){
        color([0.2,1,0.2]) {
          cube([3, 1, 0.5], center=true);
        }
      }
      translate([-1.5, 1.5, -2.25]){
        color([0.2,1,0.2]) {
          cube([3, 1, 0.5], center=true);
        }
      }
      translate([-4.5, 1.5, 1.5]){
        color([0.2,1,0.2]) {
          rotate([90, 0, 0]){
            cylinder(r1=1, r2=1, h=0.5, center=true);
          }
        }
      }
      translate([-1.5, 1.5, -0.75]){
        color([0.2,1,0.2]) {
          cube([3, 1, 0.5], center=true);
        }
      }
    }
  }
  // Rear Hatch
  translate([0, -3, 0]){
    difference() {
      color([1,0.8,0]) {
        translate([0, -7, 10]){
          scale([1, 0.6, 1]){
            rotate([0, 90, 0]){
              cylinder(r1=10, r2=10, h=17, center=true);
            }
          }
        }
      }

      color([1,0.8,0]) {
        translate([0, -2, 10]){
          cube([20, 10, 20], center=true);
        }
        translate([0, -13, 8]){
          cube([14, 6, 15], center=true);
        }
      }
      color([0.8,0.6,0.2]) {
        translate([5.5, 0, 1.5]){
          translate([0, -10, 8]){
            cube([3, 4, 12], center=true);
          }
        }
        translate([-5.5, 0, 1.5]){
          translate([0, -10, 8]){
            cube([3, 4, 12], center=true);
          }
        }
      }
      color([0.8,0.6,0.2]) {
        translate([0, -7, 10]){
          difference() {
            scale([1, 0.6, 1]){
              rotate([0, 90, 0]){
                cylinder(r1=10, r2=10, h=15, center=true);
              }
            }

            rotate([0, 90, 0]){
              scale([0.9, 0.9, 1]){
                scale([1, 0.6, 1]){
                  cylinder(r1=10, r2=10, h=15, center=true);
                }
              }
            }
          }
        }
      }
    }
    color([0.8,0.6,0.2]) {
      translate([4, 0, 1.5]){
        translate([0, -11, 8]){
          cube([1, 1, 12], center=true);
        }
      }
      translate([1.5, 0, 1.5]){
        translate([0, -11, 8]){
          cube([1, 1, 12], center=true);
        }
      }
      translate([-1.5, 0, 1.5]){
        translate([0, -11, 8]){
          cube([1, 1, 12], center=true);
        }
      }
      translate([-4, 0, 1.5]){
        translate([0, -11, 8]){
          cube([1, 1, 12], center=true);
        }
      }
    }
    union(){
      translate([0, -7, 20]){
        color([1,0.8,0]) {
          rotate([0, 90, 0]){
            cylinder(r1=1, r2=1, h=16, center=true);
          }
        }
      }
      translate([0, -7, 20]){
        color([1,0.8,0]) {
          rotate([0, 90, 0]){
            cylinder(r1=1.5, r2=1.5, h=6, center=true);
          }
        }
      }
      translate([7, -7, 20]){
        color([1,0.8,0]) {
          rotate([0, 90, 0]){
            cylinder(r1=1.5, r2=1.5, h=3, center=true);
          }
        }
      }
      translate([-7, -7, 20]){
        color([1,0.8,0]) {
          rotate([0, 90, 0]){
            cylinder(r1=1.5, r2=1.5, h=3, center=true);
          }
        }
      }
      translate([5.75, -9, 9.25]){
        color([1,0.8,0]) {
          cylinder(r1=0.5, r2=0.5, h=10, center=true);
        }
      }
      translate([5.75, -9, 8]){
        color([1,0.8,0]) {
          cylinder(r1=1, r2=1, h=6, center=true);
        }
      }
      translate([5.75, -9, 12]){
        color([1,0.8,0]) {
          cylinder(r1=1.5, r2=1.5, h=3, center=true);
        }
      }
      translate([5.75, -9, 15]){
        color([1,0.8,0]) {
          cube([1.5, 1, 1.5], center=true);
        }
      }
      translate([5.75, -9, 4]){
        color([1,0.8,0]) {
          cube([1.5, 1, 1.5], center=true);
        }
      }
    }
    mirror([1,0,0]){
      union(){
        translate([0, -7, 20]){
          color([1,0.8,0]) {
            rotate([0, 90, 0]){
              cylinder(r1=1, r2=1, h=16, center=true);
            }
          }
        }
        translate([0, -7, 20]){
          color([1,0.8,0]) {
            rotate([0, 90, 0]){
              cylinder(r1=1.5, r2=1.5, h=6, center=true);
            }
          }
        }
        translate([7, -7, 20]){
          color([1,0.8,0]) {
            rotate([0, 90, 0]){
              cylinder(r1=1.5, r2=1.5, h=3, center=true);
            }
          }
        }
        translate([-7, -7, 20]){
          color([1,0.8,0]) {
            rotate([0, 90, 0]){
              cylinder(r1=1.5, r2=1.5, h=3, center=true);
            }
          }
        }
        translate([5.75, -9, 9.25]){
          color([1,0.8,0]) {
            cylinder(r1=0.5, r2=0.5, h=10, center=true);
          }
        }
        translate([5.75, -9, 8]){
          color([1,0.8,0]) {
            cylinder(r1=1, r2=1, h=6, center=true);
          }
        }
        translate([5.75, -9, 12]){
          color([1,0.8,0]) {
            cylinder(r1=1.5, r2=1.5, h=3, center=true);
          }
        }
        translate([5.75, -9, 15]){
          color([1,0.8,0]) {
            cube([1.5, 1, 1.5], center=true);
          }
        }
        translate([5.75, -9, 4]){
          color([1,0.8,0]) {
            cube([1.5, 1, 1.5], center=true);
          }
        }
      }
    }
  }
  // Central Body
  union(){
    difference() {
      // Central Body
      translate([0, 0, 10]){
        difference() {
          color([1,0.8,0]) {
            cube([20, 20, 20], center=true);
            translate([0, 0, -3]){
              hull(){
                translate([0, 11, 0]){
                  cube([20, 2, 10], center=true);
                }
                translate([0, 9, -5]){
                  rotate([0, 90, 0]){
                    cylinder(r1=3, r2=3, h=20, center=true);
                  }
                }
              }
            }
            translate([0, 0, 10]){
              cube([20, 20, 2], center=true);
            }
          }

          color([0.6,0.6,0.6]) {
            translate([0, 10, 5.5]){
              cube([20, 1, 7], center=true);
            }
          }
          color([0.6,0.6,0.6]) {
            translate([10, 2, 7]){
              cube([1, 20, 5], center=true);
            }
          }
          color([0.6,0.6,0.6]) {
            translate([-10, 2, 7]){
              cube([1, 20, 5], center=true);
            }
          }
          color([0,0,0]) {
            hull(){
              translate([10, -5, 6.75]){
                sphere(r=2);
              }
              translate([10, 6, 6.75]){
                sphere(r=2);
              }
            }
            hull(){
              translate([10, 6, 6.75]){
                sphere(r=2);
              }
              translate([10, 6, -6.75]){
                sphere(r=2);
              }
            }
          }
          mirror([1,0,0]){
            color([0,0,0]) {
              hull(){
                translate([10, -5, 6.75]){
                  sphere(r=2);
                }
                translate([10, 6, 6.75]){
                  sphere(r=2);
                }
              }
              hull(){
                translate([10, 6, 6.75]){
                  sphere(r=2);
                }
                translate([10, 6, -6.75]){
                  sphere(r=2);
                }
              }
            }
          }
          color([0.4,0.4,0.4]) {
            translate([0, 9.5, 8]){
              cube([20, 1, 2], center=true);
            }
            translate([0, 9.5, 3]){
              cube([20, 1, 2], center=true);
            }
          }
          color([0.6,0.4,0.2]) {
            translate([0, 12, -2]){
              cube([1, 1, 8], center=true);
            }
            translate([5, 12, -2]){
              cube([1, 1, 8], center=true);
            }
            translate([-5, 12, -2]){
              cube([1, 1, 8], center=true);
            }
          }
        }
        color([0.6,0.6,0.6]) {
          translate([0, 0, 10]){
            difference() {
              cube([24, 24, 2], center=true);

              cube([20, 20, 2], center=true);
              translate([0, 10, 0]){
                cube([10, 6, 2], center=true);
              }
              translate([0, -10, 0]){
                cube([12, 6, 2], center=true);
              }
            }
          }
        }
        color([0.6,0.6,0.6]) {
          translate([-10, 12, -8]){
            cube([2, 2, 5], center=true);
          }
          translate([-10, 10.5, -10]){
            cube([2, 5, 2], center=true);
          }
          translate([-8.5, 12, -10]){
            cube([5, 2, 2], center=true);
          }
        }
        mirror([1,0,0]){
          color([0.6,0.6,0.6]) {
            translate([-10, 12, -8]){
              cube([2, 2, 5], center=true);
            }
            translate([-10, 10.5, -10]){
              cube([2, 5, 2], center=true);
            }
            translate([-8.5, 12, -10]){
              cube([5, 2, 2], center=true);
            }
          }
        }
        color([0.6,0.6,0.6]) {
          translate([-10, -12, -10]){
            rotate([350, 0, 0]){
              cube([1, 2, 10], center=false);
            }
          }
          translate([-10, -12, -10]){
            cube([5, 2, 1], center=false);
          }
        }
        mirror([1,0,0]){
          color([0.6,0.6,0.6]) {
            translate([-10, -12, -10]){
              rotate([350, 0, 0]){
                cube([1, 2, 10], center=false);
              }
            }
            translate([-10, -12, -10]){
              cube([5, 2, 1], center=false);
            }
          }
        }
      }

      color([0.6,0.6,0.6]) {
        translate([3, -4, 21]){
          cube([14, 9, 2], center=true);
        }
      }
      color([0.4,0.4,0.4]) {
        translate([0, -4, 21]){
          cube([6, 9, 6], center=true);
        }
      }
    }
    color([0.6,0.6,0.6]) {
      translate([7, -4, 21]){
        cube([4, 6, 1], center=true);
      }
    }
  }
  // arms
  union(){
    union(){
      color([1,0.8,0]) {
        translate([12, 12, 16]){
          rotate([90, 0, 0]){
            cylinder(r1=2.5, r2=2.5, h=15, center=false);
          }
        }
        translate([12, -3, 16]){
          cylinder(r1=2.5, r2=2.5, h=5, center=true);
        }
        translate([14, 4, 16]){
          cube([2, 16, 4], center=true);
        }
      }
      color([0.4,0.4,0.4]) {
        translate([12, 14, 16]){
          rotate([90, 0, 0]){
            cylinder(r1=1.5, r2=1.5, h=15, center=false);
          }
        }
        translate([12, 16, 16]){
          rotate([90, 0, 0]){
            cylinder(r1=1, r2=1, h=15, center=false);
          }
        }
      }
      translate([12, 20, 16]){
        color([0.4,0.4,0.4]) {
          translate([-1, -5, 0]){
            cylinder(r1=2, r2=2, h=9, center=true);
          }
          hull(){
            translate([0, -2, 2.5]){
              hull(){
                cube([1, 4, 4], center=true);
                translate([-1, 0, 0]){
                  cube([1, 4, 3], center=true);
                }
              }
            }
            translate([0, 2, 2.5]){
              hull(){
                cube([1, 4, 3], center=true);
                translate([-1, 0, 0]){
                  cube([1, 4, 2], center=true);
                }
              }
            }
          }
          hull(){
            translate([0, -2, -2.5]){
              hull(){
                cube([1, 4, 4], center=true);
                translate([-1, 0, 0]){
                  cube([1, 4, 3], center=true);
                }
              }
            }
            translate([0, 2, -2.5]){
              hull(){
                cube([1, 4, 3], center=true);
                translate([-1, 0, 0]){
                  cube([1, 4, 2], center=true);
                }
              }
            }
          }
          translate([-0.5, 4, 2.5]){
            cylinder(r1=1, r2=1, h=4, center=true);
          }
          translate([-0.5, 4, -2.5]){
            cylinder(r1=1, r2=1, h=4, center=true);
          }
          translate([-2, 7, 0.5]){
            rotate([0, 0, 40]){
              scale([1, 0.8, 0.8]){
                hull(){
                  translate([0, -2, 2.5]){
                    hull(){
                      cube([1, 4, 4], center=true);
                      translate([-1, 0, 0]){
                        cube([1, 4, 3], center=true);
                      }
                    }
                  }
                  translate([0, 2, 2.5]){
                    hull(){
                      cube([1, 4, 3], center=true);
                      translate([-1, 0, 0]){
                        cube([1, 4, 2], center=true);
                      }
                    }
                  }
                }
              }
            }
          }
          translate([-2, 7, -0.5]){
            rotate([0, 0, 40]){
              scale([1, 0.8, 0.8]){
                hull(){
                  translate([0, -2, -2.5]){
                    hull(){
                      cube([1, 4, 4], center=true);
                      translate([-1, 0, 0]){
                        cube([1, 4, 3], center=true);
                      }
                    }
                  }
                  translate([0, 2, -2.5]){
                    hull(){
                      cube([1, 4, 3], center=true);
                      translate([-1, 0, 0]){
                        cube([1, 4, 2], center=true);
                      }
                    }
                  }
                }
              }
            }
          }
          translate([-4, -2, 0]){
            rotate([0, 0, 30]){
              scale([0.7, 0.7, 0.7]){
                mirror([1,0,0]){
                  translate([-2, 7, 2]){
                    rotate([0, 0, 40]){
                      scale([1, 0.8, 0.8]){
                        hull(){
                          translate([0, -2, -2.5]){
                            hull(){
                              cube([1, 4, 4], center=true);
                              translate([-1, 0, 0]){
                                cube([1, 4, 3], center=true);
                              }
                            }
                          }
                          translate([0, 2, -2.5]){
                            hull(){
                              cube([1, 4, 3], center=true);
                              translate([-1, 0, 0]){
                                cube([1, 4, 2], center=true);
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                  translate([-0.5, 4, 0]){
                    cylinder(r1=1, r2=1, h=4, center=true);
                  }
                  translate([0, 0, -2.5]){
                    hull(){
                      translate([0, -2, 2.5]){
                        hull(){
                          cube([1, 4, 4], center=true);
                          translate([-1, 0, 0]){
                            cube([1, 4, 3], center=true);
                          }
                        }
                      }
                      translate([0, 2, 2.5]){
                        hull(){
                          cube([1, 4, 3], center=true);
                          translate([-1, 0, 0]){
                            cube([1, 4, 2], center=true);
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
      translate([15, 4, 16]){
        color([0.2,0.2,0.2]) {
          intersection() {
            cube([2, 16, 4], center=true);

            rotate([45, 0, 0]){
              cube([2, 16, 2], center=true);
            }

          }
          intersection() {
            cube([2, 16, 4], center=true);

            translate([0, 4, 0]){
              rotate([45, 0, 0]){
                cube([2, 16, 2], center=true);
              }
            }

          }
          intersection() {
            cube([2, 16, 4], center=true);

            translate([0, -4, 0]){
              rotate([45, 0, 0]){
                cube([2, 16, 2], center=true);
              }
            }

          }
        }
      }
    }
    mirror([1,0,0]){
      union(){
        color([1,0.8,0]) {
          translate([12, 12, 16]){
            rotate([90, 0, 0]){
              cylinder(r1=2.5, r2=2.5, h=15, center=false);
            }
          }
          translate([12, -3, 16]){
            cylinder(r1=2.5, r2=2.5, h=5, center=true);
          }
          translate([14, 4, 16]){
            cube([2, 16, 4], center=true);
          }
        }
        color([0.4,0.4,0.4]) {
          translate([12, 14, 16]){
            rotate([90, 0, 0]){
              cylinder(r1=1.5, r2=1.5, h=15, center=false);
            }
          }
          translate([12, 16, 16]){
            rotate([90, 0, 0]){
              cylinder(r1=1, r2=1, h=15, center=false);
            }
          }
        }
        translate([12, 20, 16]){
          color([0.4,0.4,0.4]) {
            translate([-1, -5, 0]){
              cylinder(r1=2, r2=2, h=9, center=true);
            }
            hull(){
              translate([0, -2, 2.5]){
                hull(){
                  cube([1, 4, 4], center=true);
                  translate([-1, 0, 0]){
                    cube([1, 4, 3], center=true);
                  }
                }
              }
              translate([0, 2, 2.5]){
                hull(){
                  cube([1, 4, 3], center=true);
                  translate([-1, 0, 0]){
                    cube([1, 4, 2], center=true);
                  }
                }
              }
            }
            hull(){
              translate([0, -2, -2.5]){
                hull(){
                  cube([1, 4, 4], center=true);
                  translate([-1, 0, 0]){
                    cube([1, 4, 3], center=true);
                  }
                }
              }
              translate([0, 2, -2.5]){
                hull(){
                  cube([1, 4, 3], center=true);
                  translate([-1, 0, 0]){
                    cube([1, 4, 2], center=true);
                  }
                }
              }
            }
            translate([-0.5, 4, 2.5]){
              cylinder(r1=1, r2=1, h=4, center=true);
            }
            translate([-0.5, 4, -2.5]){
              cylinder(r1=1, r2=1, h=4, center=true);
            }
            translate([-2, 7, 0.5]){
              rotate([0, 0, 40]){
                scale([1, 0.8, 0.8]){
                  hull(){
                    translate([0, -2, 2.5]){
                      hull(){
                        cube([1, 4, 4], center=true);
                        translate([-1, 0, 0]){
                          cube([1, 4, 3], center=true);
                        }
                      }
                    }
                    translate([0, 2, 2.5]){
                      hull(){
                        cube([1, 4, 3], center=true);
                        translate([-1, 0, 0]){
                          cube([1, 4, 2], center=true);
                        }
                      }
                    }
                  }
                }
              }
            }
            translate([-2, 7, -0.5]){
              rotate([0, 0, 40]){
                scale([1, 0.8, 0.8]){
                  hull(){
                    translate([0, -2, -2.5]){
                      hull(){
                        cube([1, 4, 4], center=true);
                        translate([-1, 0, 0]){
                          cube([1, 4, 3], center=true);
                        }
                      }
                    }
                    translate([0, 2, -2.5]){
                      hull(){
                        cube([1, 4, 3], center=true);
                        translate([-1, 0, 0]){
                          cube([1, 4, 2], center=true);
                        }
                      }
                    }
                  }
                }
              }
            }
            translate([-4, -2, 0]){
              rotate([0, 0, 30]){
                scale([0.7, 0.7, 0.7]){
                  mirror([1,0,0]){
                    translate([-2, 7, 2]){
                      rotate([0, 0, 40]){
                        scale([1, 0.8, 0.8]){
                          hull(){
                            translate([0, -2, -2.5]){
                              hull(){
                                cube([1, 4, 4], center=true);
                                translate([-1, 0, 0]){
                                  cube([1, 4, 3], center=true);
                                }
                              }
                            }
                            translate([0, 2, -2.5]){
                              hull(){
                                cube([1, 4, 3], center=true);
                                translate([-1, 0, 0]){
                                  cube([1, 4, 2], center=true);
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                    translate([-0.5, 4, 0]){
                      cylinder(r1=1, r2=1, h=4, center=true);
                    }
                    translate([0, 0, -2.5]){
                      hull(){
                        translate([0, -2, 2.5]){
                          hull(){
                            cube([1, 4, 4], center=true);
                            translate([-1, 0, 0]){
                              cube([1, 4, 3], center=true);
                            }
                          }
                        }
                        translate([0, 2, 2.5]){
                          hull(){
                            cube([1, 4, 3], center=true);
                            translate([-1, 0, 0]){
                              cube([1, 4, 2], center=true);
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
        translate([15, 4, 16]){
          color([0.2,0.2,0.2]) {
            intersection() {
              cube([2, 16, 4], center=true);

              rotate([45, 0, 0]){
                cube([2, 16, 2], center=true);
              }

            }
            intersection() {
              cube([2, 16, 4], center=true);

              translate([0, 4, 0]){
                rotate([45, 0, 0]){
                  cube([2, 16, 2], center=true);
                }
              }

            }
            intersection() {
              cube([2, 16, 4], center=true);

              translate([0, -4, 0]){
                rotate([45, 0, 0]){
                  cube([2, 16, 2], center=true);
                }
              }

            }
          }
        }
      }
    }
  }
  // Neck
  union(){
    color([0.4,0.4,0.4]) {
      translate([0, 0, 36]){
        cube([2, 10, 3], center=true);
      }
    }
    color([0.4,0.4,0.4]) {
      translate([0, -4, 19]){
        difference() {
          union(){
            hull(){
              cube([6, 4, 4], center=true);
              translate([0, 0, 2]){
                rotate([0, 90, 0]){
                  cylinder(r1=2, r2=2, h=6, center=true);
                }
              }
            }
            translate([0, 0, 2]){
              rotate([0, 90, 0]){
                cylinder(r1=1, r2=1, h=7, center=true);
              }
            }
          }

          translate([0, 0, 2]){
            cube([4, 4, 4], center=true);
          }
        }
      }
      translate([0, -5, 19]){
        rotate([340, 0, 0]){
          cylinder(r1=2, r2=2, h=8, center=false);
          translate([0, 0, 0.5]){
            cylinder(r1=1.5, r2=1.5, h=8, center=false);
          }
        }
      }
      translate([0, 0, 30]){
        rotate([315, 0, 0]){
          cube([4, 3, 4], center=true);
        }
      }
      translate([0, -2, 28]){
        rotate([0, 90, 0]){
          cylinder(r1=2, r2=2, h=5, center=true);
        }
      }
      translate([0, -2, 32]){
        rotate([315, 0, 0]){
          cube([4, 4, 4], center=true);
        }
      }
      translate([0, -3, 34]){
        rotate([315, 0, 0]){
          rotate([0, 90, 0]){
            cylinder(r1=2, r2=2, h=3, center=true);
          }
        }
      }
    }
  }
  // Head
  union(){
    union(){
      difference() {
        color([0.4,0.4,0.4]) {
          translate([8, 8, 33]){
            rotate([90, 0, 0]){
              hull(){
                translate([-6, 4, 0]){
                  cylinder(r1=2, r2=2, h=10, center=true);
                }
                cylinder(r1=5, r2=5, h=10, center=true);
              }
            }
          }
          translate([7, 2, 33]){
            rotate([90, 0, 0]){
              difference() {
                scale([0.8, 0.8, 1]){
                  hull(){
                    translate([-6, 4, 0]){
                      cylinder(r1=2, r2=2, h=10, center=true);
                    }
                    cylinder(r1=5, r2=5, h=10, center=true);
                  }
                }

                translate([2, 2, -1]){
                  rotate([0, 90, 0]){
                    cube([4, 6, 10], center=true);
                  }
                }
                translate([3, 3, 0]){
                  rotate([0, 90, 315]){
                    cube([10, 2, 10], center=true);
                  }
                }
              }
            }
          }
          translate([7, 2, 33]){
            rotate([90, 0, 0]){
              translate([2, 2, 0]){
                rotate([0, 90, 315]){
                  cube([10, 4, 4], center=true);
                }
              }
            }
          }
          translate([7, 2, 33]){
            rotate([90, 0, 0]){
              translate([1, 1, 2]){
                rotate([0, 90, 315]){
                  cube([11, 2, 4], center=true);
                }
                translate([-1, -1, 3]){
                  rotate([0, 90, 315]){
                    difference() {
                      cylinder(r1=2, r2=2, h=4, center=true);

                      cylinder(r1=1, r2=1, h=4, center=true);
                      cube([4, 4, 2], center=true);
                    }
                  }
                }
              }
            }
          }
        }

        color([0.75,0.75,0.75]) {
          translate([8, 13, 33]){
            rotate([90, 0, 0]){
              scale([0.8, 0.8, 1]){
                hull(){
                  translate([-6, 4, 0]){
                    cylinder(r1=2, r2=2, h=1, center=true);
                  }
                  cylinder(r1=5, r2=5, h=1, center=true);
                }
              }
            }
          }
        }
      }
      translate([6, 13, 34.5]){
        difference() {
          color([0.2,0.2,0.2]) {
            rotate([90, 0, 0]){
              cylinder(r1=3, r2=3, h=2, center=true);
            }
          }

          color([0,0,0.4]) {
            translate([0, 3, 0]){
              sphere(r=3);
            }
          }
        }
      }
    }
    mirror([1,0,0]){
      union(){
        difference() {
          color([0.4,0.4,0.4]) {
            translate([8, 8, 33]){
              rotate([90, 0, 0]){
                hull(){
                  translate([-6, 4, 0]){
                    cylinder(r1=2, r2=2, h=10, center=true);
                  }
                  cylinder(r1=5, r2=5, h=10, center=true);
                }
              }
            }
            translate([7, 2, 33]){
              rotate([90, 0, 0]){
                difference() {
                  scale([0.8, 0.8, 1]){
                    hull(){
                      translate([-6, 4, 0]){
                        cylinder(r1=2, r2=2, h=10, center=true);
                      }
                      cylinder(r1=5, r2=5, h=10, center=true);
                    }
                  }

                  translate([2, 2, -1]){
                    rotate([0, 90, 0]){
                      cube([4, 6, 10], center=true);
                    }
                  }
                  translate([3, 3, 0]){
                    rotate([0, 90, 315]){
                      cube([10, 2, 10], center=true);
                    }
                  }
                }
              }
            }
            translate([7, 2, 33]){
              rotate([90, 0, 0]){
                translate([2, 2, 0]){
                  rotate([0, 90, 315]){
                    cube([10, 4, 4], center=true);
                  }
                }
              }
            }
            translate([7, 2, 33]){
              rotate([90, 0, 0]){
                translate([1, 1, 2]){
                  rotate([0, 90, 315]){
                    cube([11, 2, 4], center=true);
                  }
                  translate([-1, -1, 3]){
                    rotate([0, 90, 315]){
                      difference() {
                        cylinder(r1=2, r2=2, h=4, center=true);

                        cylinder(r1=1, r2=1, h=4, center=true);
                        cube([4, 4, 2], center=true);
                      }
                    }
                  }
                }
              }
            }
          }

          color([0.75,0.75,0.75]) {
            translate([8, 13, 33]){
              rotate([90, 0, 0]){
                scale([0.8, 0.8, 1]){
                  hull(){
                    translate([-6, 4, 0]){
                      cylinder(r1=2, r2=2, h=1, center=true);
                    }
                    cylinder(r1=5, r2=5, h=1, center=true);
                  }
                }
              }
            }
          }
        }
        translate([6, 13, 34.5]){
          difference() {
            color([0.2,0.2,0.2]) {
              rotate([90, 0, 0]){
                cylinder(r1=3, r2=3, h=2, center=true);
              }
            }

            color([0,0,0.4]) {
              translate([0, 3, 0]){
                sphere(r=3);
              }
            }
          }
        }
      }
    }
  }
}
// Name
translate([-3, -13, 2]){
  scale([0.25, 1, 0.25]){
    // W
    color([0.2,0.2,0.2]) {
      cube([1, 1, 6], center=false);
      cube([6, 1, 1], center=false);
      translate([3, 0, 0]){
        cube([1, 1, 6], center=false);
      }
      translate([6, 0, 0]){
        cube([1, 1, 6], center=false);
      }
    }
    // A
    color([0.2,0.2,0.2]) {
      translate([8, 0, 0]){
        cube([1, 1, 6], center=false);
      }
      translate([14, 0, 0]){
        cube([1, 1, 6], center=false);
      }
      translate([8, 0, 5]){
        cube([6, 1, 1], center=false);
      }
      translate([8, 0, 2]){
        cube([6, 1, 1], center=false);
      }
    }
    // L1
    color([0.2,0.2,0.2]) {
      translate([16, 0, 0]){
        cube([1, 1, 6], center=false);
      }
      translate([16, 0, 0]){
        cube([6, 1, 1], center=false);
      }
    }
    // L2
    color([0.2,0.2,0.2]) {
      translate([23, 0, 0]){
        cube([1, 1, 6], center=false);
      }
      translate([23, 0, 0]){
        cube([6, 1, 1], center=false);
      }
    }
    // -
    color([0.2,0.2,0.2]) {
      translate([30, 0, 3]){
        cube([6, 1, 1], center=false);
      }
    }
    // E
    union(){
      translate([39, 0, 7]){
        rotate([0, 90, 0]){
          // W
          color([1,1,1]) {
            cube([1, 1, 6], center=false);
            cube([6, 1, 1], center=false);
            translate([3, 0, 0]){
              cube([1, 1, 6], center=false);
            }
            translate([6, 0, 0]){
              cube([1, 1, 6], center=false);
            }
          }
        }
      }
      color([0.93,0,0]) {
        translate([42, 0, 3.5]){
          rotate([90, 0, 0]){
            translate([0, 0, -1]){
              cylinder(r1=5, r2=5, h=0.5, center=false);
            }
          }
        }
      }
    }
  }
}