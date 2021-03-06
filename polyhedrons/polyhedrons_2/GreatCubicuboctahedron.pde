/*
GreatCubicuboctahedron class

david cool
http://davidcool.com
http://generactive.net
http://mystic.codes
*/

public class GreatCubicuboctahedron extends Polyhedron {
  
  // polyhedron
  final int FACES = 20;     // number of faces 
  final int VERTICES = 8;   // VERTICES per face
  final float C0 = 0.2071067811865475244008443621048; //(sqrt(2) - 1) / 2
  private PVector[] vert = new PVector[24]; // list of ve//rtices
  private int[][] faces =  new int[FACES][VERTICES];  // list of faces (joining vertices)
  
  private GreatCubicuboctahedron() {   
    // set vertices
    vert[  0] = new PVector( -0.5, -0.5,   C0 );
    vert[  1] = new PVector( -0.5, -0.5,  -C0 );
    vert[  2] = new PVector( -0.5,  0.5,   C0 );
    vert[  3] = new PVector( -0.5,  0.5,  -C0 );
    vert[  4] = new PVector(  0.5, -0.5,   C0 );
    vert[  5] = new PVector(  0.5, -0.5,  -C0 );
    vert[  6] = new PVector(  0.5,  0.5,   C0 );
    vert[  7] = new PVector(  0.5,  0.5,  -C0 );
    vert[  8] = new PVector(   C0, -0.5, -0.5 );
    vert[  9] = new PVector(   C0, -0.5,  0.5 );
    vert[ 10] = new PVector(   C0,  0.5, -0.5 );
    vert[ 11] = new PVector(   C0,  0.5,  0.5 );
    vert[ 12] = new PVector(  -C0, -0.5, -0.5 );
    vert[ 13] = new PVector(  -C0, -0.5,  0.5 );
    vert[ 14] = new PVector(  -C0,  0.5, -0.5 );
    vert[ 15] = new PVector(  -C0,  0.5,  0.5 );
    vert[ 16] = new PVector( -0.5,   C0, -0.5 );
    vert[ 17] = new PVector( -0.5,   C0,  0.5 );
    vert[ 18] = new PVector( -0.5,  -C0, -0.5 );
    vert[ 19] = new PVector( -0.5,  -C0,  0.5 );
    vert[ 20] = new PVector(  0.5,   C0, -0.5 );
    vert[ 21] = new PVector(  0.5,   C0,  0.5 );
    vert[ 22] = new PVector(  0.5,  -C0, -0.5 );
    vert[ 23] = new PVector(  0.5,  -C0,  0.5 );
    // set faces
    faces[ 0] = new int[] {  0,  2, 18, 19,  3,  1, 17, 16 };
    faces[ 1] = new int[] {  0,  8,  9,  1,  5, 13, 12,  4 };
    faces[ 2] = new int[] { 11, 10,  2,  6, 14, 15,  7,  3 };
    faces[ 3] = new int[] { 11, 19, 23, 15, 13, 21, 17,  9 };
    faces[ 4] = new int[] { 20, 12, 14, 22, 18, 10,  8, 16 };
    faces[ 5] = new int[] { 20, 21,  5,  7, 23, 22,  6,  4 };
    faces[ 6] = new int[] {  0,  4,  6,  2,  2,  2,  2,  2 };  //repeated 4x 4th number to fill gap
    faces[ 7] = new int[] {  1,  3,  7,  5,  5,  5,  5,  5 };  //repeated 4x 4th number to fill gap
    faces[ 8] = new int[] {  8, 10, 11,  9,  9,  9,  9,  9 };  //repeated 4x 4th number to fill gap
    faces[ 9] = new int[] { 12, 13, 15, 14, 14, 14, 14, 14 };  //repeated 4x 4th number to fill gap
    faces[10] = new int[] { 16, 17, 21, 20, 20, 20, 20, 20 };  //repeated 4x 4th number to fill gap
    faces[11] = new int[] { 18, 22, 23, 19, 19, 19, 19, 19 };  //repeated 4x 4th number to fill gap
    faces[12] = new int[] {  0, 16,  8,  8,  8,  8,  8,  8 };  //repeated 5x 3rd number to fill gap
    faces[13] = new int[] {  1,  9, 17, 17, 17, 17, 17, 17 };  //repeated 5x 3rd number to fill gap
    faces[14] = new int[] {  2, 10, 18, 18, 18, 18, 18, 18 };  //repeated 5x 3rd number to fill gap
    faces[15] = new int[] {  3, 19, 11, 11, 11, 11, 11, 11 };  //repeated 5x 3rd number to fill gap
    faces[16] = new int[] {  4, 12, 20, 20, 20, 20, 20, 20 };  //repeated 5x 3rd number to fill gap
    faces[17] = new int[] {  5, 21, 13, 13, 13, 13, 13, 13 };  //repeated 5x 3rd number to fill gap
    faces[18] = new int[] {  6, 22, 14, 14, 14, 14, 14, 14 };  //repeated 5x 3rd number to fill gap
    faces[19] = new int[] {  7, 15, 23, 23, 23, 23, 23, 23 };  //repeated 5x 3rd number to fill gap
  } //end GreatCubicuboctahedron()

  public String name() {
    return "Great Cubicuboctahedron";
  }

  public void render() {  
    if (nofill) {
      noFill();
    } else {
      fill(fc0, fc1, fc2, fc3);
    }
        
    if (nostroke) {
      noStroke();
    } else {
      stroke(sc0, sc1, sc2, sc3);
    }
    
    if (parentSphere) {
      //Get parent sphere radius
      r = radius + stray;
      //Convert spherical coordinates into Cartesian coordinates
      x = cos(theta) * sin(phi) * r;
      y = sin(theta) * sin(phi) * r;
      z = cos(phi) * r;
    }
    
    pushMatrix();
    translate(x, y, z);
    scale(scaleSize * zoom); 
    strokeWeight(sw);
    rotateX(rx);
    rotateY(ry);
    rotateZ(rz);
    for (int i = 0; i < FACES; i = i+1) {
      beginShape();
      for (int i2 = 0; i2 < VERTICES; i2 = i2+1) {
        vertex(vert[faces[i][i2]].x,vert[faces[i][i2]].y,vert[faces[i][i2]].z);
      } // end for
      endShape(CLOSE);
    } // end for 
    popMatrix();
  } //end render()
   
} //end class GreatCubicuboctahedron
