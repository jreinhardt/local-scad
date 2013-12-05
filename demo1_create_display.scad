use <local.scad>

//create and show new coordinate systems
global = new_cs();
shifted = new_cs(origin=[10,2,4]);
rotated = new_cs(origin=[-10,0,0],axes=[[0,1,0],[-1,0,0],[0,0,1]]);
rotated2 = new_cs(origin=[0,-10,0],axes=[[1,1,1],[0,1,-1]]);
rotated3 = new_cs(origin=[0,-10,0],axes=[[1,1,1],[1,-1,0]]);


show_cs(global);
show_cs(shifted);
show_cs(rotated);
show_cs(rotated2);

