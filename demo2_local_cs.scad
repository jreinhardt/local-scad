//coordinate systems make code nice and clean
//coordinate systems can be put on surfaces to make positioning of things easy
//this helps to avoid difficult expressions like translate([magic_number + 10 - h + l,k - 3*b,50])
//even more helpful if faces are not parallel to coordinate axes

use <local.scad>

c1 = new_cs(origin=[0,0,10]);
c2 = new_cs(axes=[[1,0,0],[0,0,1]]);

difference(){
	cube(10,10,10);
	translate_local(c1,[5,5,-2]) cylinder(r=1,h=3);
	in_cs(c2) union(){
		translate([3,3,-2]) cylinder(r=1,h=3);
		translate([7,7,-2]) cylinder(r=1,h=3);
	}
}
