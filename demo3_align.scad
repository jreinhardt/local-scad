use <local.scad>

//make modularity simple
//coordinate systems are pretty close to the connectors from attach.scad:
//https://github.com/Obijuan/obiscad
//http://www.thingiverse.com/thing:30136
//so we can use them as such

//define bodies with corresponding coordinate systems to define attachment
//points
module cube1(){
	cube([10,10,10]);
}
cube1_1 = new_cs(origin=[5,5,10],axes=[[0,0,1],[1,0,0]]);

module arm(){
	cube([40,5,0.4]);
}

arm_1 = new_cs([5,2.5,0],axes=[[0,0,1],[1,1,0]]);

//cube1();
//show_cs(cube1_1);

//arm();
//show_cs(arm_1);

//align moves the child in such a way that the first coordinate system
//coincides with the second, and thereby attaches the arm to the cube
cube1();
align(arm_1,cube1_1) arm();


//one can also displace the arm by a certain vector in the connector coordinate
//system
align(arm_1,cube1_1,[10,0,0]) arm();

