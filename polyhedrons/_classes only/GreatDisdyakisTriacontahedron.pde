/*
GreatDisdyakisTriacontahedron class

david cool
http://davidcool.com
http://generactive.net
http://mystic.codes
*/

public class GreatDisdyakisTriacontahedron extends Polyhedron {
  
  // polyhedron
  final int FACES = 120;     // number of faces 
  final int VERTICES = 3;   // VERTICES per face
  final float C0 = 0.332412831988765413567097976006; //3 * (25 - 9 * sqrt(5)) / 44
  final float C1 = 0.512461179749810726768256301858; //3 * (3 * sqrt(5) - 5) / 10
  final float C2 = 0.537855260454430743495912910217; //3 * (4 * sqrt(5) - 5) / 22
  final float C3 = 0.829179606750063091077247899381; //3 * (5 - sqrt(5)) / 10
  final float C4 = 0.870268092443196157063010886223; //3 * (15 - sqrt(5)) / 44
  final float C5 = 1.07571052090886148699182582043;  //3 * (4 * sqrt(5) - 5) / 11
  final float C6 = 1.38196601125010515179541316563;  //(5 - sqrt(5)) / 2
  final float C7 = 2.23606797749978969640917366873;  //sqrt(5)
  final float C8 = 3.61803398874989484820458683437;  //(5 + sqrt(5)) / 2
  private PVector[] vert = new PVector[104]; // list of ve//rtices
  private int[][] faces =  new int[FACES][VERTICES];  // list of faces (joining vertices)
  
  private GreatDisdyakisTriacontahedron() {   
    // set vertices
    vert[  0] = new PVector( 0.0, -0.0, -C5 );
    vert[  1] = new PVector( 0.0, -0.0,  C5 );
    vert[  2] = new PVector( 0.0,  -C5, 0.0 );
    vert[  3] = new PVector( 0.0,   C5, 0.0 );
    vert[  4] = new PVector( -C5, -0.0, 0.0 );
    vert[  5] = new PVector(  C5, -0.0, 0.0 );
    vert[  6] = new PVector(  C8, -0.0,  C6 );
    vert[  7] = new PVector(  C8, -0.0, -C6 );
    vert[  8] = new PVector( -C8, -0.0,  C6 );
    vert[  9] = new PVector( -C8, -0.0, -C6 );
    vert[ 10] = new PVector( 0.0,   C6,  C8 );
    vert[ 11] = new PVector( 0.0,   C6, -C8 );
    vert[ 12] = new PVector( 0.0,  -C6,  C8 );
    vert[ 13] = new PVector( 0.0,  -C6, -C8 );
    vert[ 14] = new PVector(  C6,   C8, 0.0 );
    vert[ 15] = new PVector( -C6,   C8, 0.0 );
    vert[ 16] = new PVector(  C6,  -C8, 0.0 );
    vert[ 17] = new PVector( -C6,  -C8, 0.0 );
    vert[ 18] = new PVector( 0.0,   C3, -C1 );
    vert[ 19] = new PVector( 0.0,   C3,  C1 );
    vert[ 20] = new PVector( 0.0,  -C3, -C1 );
    vert[ 21] = new PVector( 0.0,  -C3,  C1 );
    vert[ 22] = new PVector(  C3,  -C1, 0.0 );
    vert[ 23] = new PVector( -C3,  -C1, 0.0 );
    vert[ 24] = new PVector(  C3,   C1, 0.0 );
    vert[ 25] = new PVector( -C3,   C1, 0.0 );
    vert[ 26] = new PVector( -C1, -0.0,  C3 );
    vert[ 27] = new PVector( -C1, -0.0, -C3 );
    vert[ 28] = new PVector(  C1, -0.0,  C3 );
    vert[ 29] = new PVector(  C1, -0.0, -C3 );
    vert[ 30] = new PVector( -C2,   C4,  C0 );
    vert[ 31] = new PVector( -C2,   C4, -C0 );
    vert[ 32] = new PVector(  C2,   C4,  C0 );
    vert[ 33] = new PVector(  C2,   C4, -C0 );
    vert[ 34] = new PVector( -C2,  -C4,  C0 );
    vert[ 35] = new PVector( -C2,  -C4, -C0 );
    vert[ 36] = new PVector(  C2,  -C4,  C0 );
    vert[ 37] = new PVector(  C2,  -C4, -C0 );
    vert[ 38] = new PVector(  C4,   C0, -C2 );
    vert[ 39] = new PVector(  C4,   C0,  C2 );
    vert[ 40] = new PVector( -C4,   C0, -C2 );
    vert[ 41] = new PVector( -C4,   C0,  C2 );
    vert[ 42] = new PVector(  C4,  -C0, -C2 );
    vert[ 43] = new PVector(  C4,  -C0,  C2 );
    vert[ 44] = new PVector( -C4,  -C0, -C2 );
    vert[ 45] = new PVector( -C4,  -C0,  C2 );
    vert[ 46] = new PVector(  C0,  -C2,  C4 );
    vert[ 47] = new PVector(  C0,  -C2, -C4 );
    vert[ 48] = new PVector( -C0,  -C2,  C4 );
    vert[ 49] = new PVector( -C0,  -C2, -C4 );
    vert[ 50] = new PVector(  C0,   C2,  C4 );
    vert[ 51] = new PVector(  C0,   C2, -C4 );
    vert[ 52] = new PVector( -C0,   C2,  C4 );
    vert[ 53] = new PVector( -C0,   C2, -C4 );
    vert[ 54] = new PVector( -C7,  -C7, -C7 );
    vert[ 55] = new PVector( -C7,  -C7,  C7 );
    vert[ 56] = new PVector(  C7,  -C7, -C7 );
    vert[ 57] = new PVector(  C7,  -C7,  C7 );
    vert[ 58] = new PVector( -C7,   C7, -C7 );
    vert[ 59] = new PVector( -C7,   C7,  C7 );
    vert[ 60] = new PVector(  C7,   C7, -C7 );
    vert[ 61] = new PVector(  C7,   C7,  C7 );
    // set faces
    faces[  0] = new int[] { 18,  0,  8 };
    faces[  1] = new int[] { 18,  8, 32 };
    faces[  2] = new int[] { 18, 32, 56 };
    faces[  3] = new int[] { 18, 56, 40 };
    faces[  4] = new int[] { 18, 40, 10 };
    faces[  5] = new int[] { 18, 10, 38 };
    faces[  6] = new int[] { 18, 38, 54 };
    faces[  7] = new int[] { 18, 54, 30 };
    faces[  8] = new int[] { 18, 30,  6 };
    faces[  9] = new int[] { 18,  6,  0 };
    faces[ 10] = new int[] { 19,  1,  7 };
    faces[ 11] = new int[] { 19,  7, 31 };
    faces[ 12] = new int[] { 19, 31, 55 };
    faces[ 13] = new int[] { 19, 55, 39 };
    faces[ 14] = new int[] { 19, 39, 11 };
    faces[ 15] = new int[] { 19, 11, 41 };
    faces[ 16] = new int[] { 19, 41, 57 };
    faces[ 17] = new int[] { 19, 57, 33 };
    faces[ 18] = new int[] { 19, 33,  9 };
    faces[ 19] = new int[] { 19,  9,  1 };
    faces[ 20] = new int[] { 20,  0,  6 };
    faces[ 21] = new int[] { 20,  6, 34 };
    faces[ 22] = new int[] { 20, 34, 58 };
    faces[ 23] = new int[] { 20, 58, 42 };
    faces[ 24] = new int[] { 20, 42, 12 };
    faces[ 25] = new int[] { 20, 12, 44 };
    faces[ 26] = new int[] { 20, 44, 60 };
    faces[ 27] = new int[] { 20, 60, 36 };
    faces[ 28] = new int[] { 20, 36,  8 };
    faces[ 29] = new int[] { 20,  8,  0 };
    faces[ 30] = new int[] { 21,  1,  9 };
    faces[ 31] = new int[] { 21,  9, 37 };
    faces[ 32] = new int[] { 21, 37, 61 };
    faces[ 33] = new int[] { 21, 61, 45 };
    faces[ 34] = new int[] { 21, 45, 13 };
    faces[ 35] = new int[] { 21, 13, 43 };
    faces[ 36] = new int[] { 21, 43, 59 };
    faces[ 37] = new int[] { 21, 59, 35 };
    faces[ 38] = new int[] { 21, 35,  7 };
    faces[ 39] = new int[] { 21,  7,  1 };
    faces[ 40] = new int[] { 22,  2, 11 };
    faces[ 41] = new int[] { 22, 11, 39 };
    faces[ 42] = new int[] { 22, 39, 55 };
    faces[ 43] = new int[] { 22, 55, 47 };
    faces[ 44] = new int[] { 22, 47, 14 };
    faces[ 45] = new int[] { 22, 14, 46 };
    faces[ 46] = new int[] { 22, 46, 54 };
    faces[ 47] = new int[] { 22, 54, 38 };
    faces[ 48] = new int[] { 22, 38, 10 };
    faces[ 49] = new int[] { 22, 10,  2 };
    faces[ 50] = new int[] { 23,  2, 10 };
    faces[ 51] = new int[] { 23, 10, 40 };
    faces[ 52] = new int[] { 23, 40, 56 };
    faces[ 53] = new int[] { 23, 56, 48 };
    faces[ 54] = new int[] { 23, 48, 15 };
    faces[ 55] = new int[] { 23, 15, 49 };
    faces[ 56] = new int[] { 23, 49, 57 };
    faces[ 57] = new int[] { 23, 57, 41 };
    faces[ 58] = new int[] { 23, 41, 11 };
    faces[ 59] = new int[] { 23, 11,  2 };
    faces[ 60] = new int[] { 24,  3, 12 };
    faces[ 61] = new int[] { 24, 12, 42 };
    faces[ 62] = new int[] { 24, 42, 58 };
    faces[ 63] = new int[] { 24, 58, 50 };
    faces[ 64] = new int[] { 24, 50, 16 };
    faces[ 65] = new int[] { 24, 16, 51 };
    faces[ 66] = new int[] { 24, 51, 59 };
    faces[ 67] = new int[] { 24, 59, 43 };
    faces[ 68] = new int[] { 24, 43, 13 };
    faces[ 69] = new int[] { 24, 13,  3 };
    faces[ 70] = new int[] { 25,  3, 13 };
    faces[ 71] = new int[] { 25, 13, 45 };
    faces[ 72] = new int[] { 25, 45, 61 };
    faces[ 73] = new int[] { 25, 61, 53 };
    faces[ 74] = new int[] { 25, 53, 17 };
    faces[ 75] = new int[] { 25, 17, 52 };
    faces[ 76] = new int[] { 25, 52, 60 };
    faces[ 77] = new int[] { 25, 60, 44 };
    faces[ 78] = new int[] { 25, 44, 12 };
    faces[ 79] = new int[] { 25, 12,  3 };
    faces[ 80] = new int[] { 26,  4, 16 };
    faces[ 81] = new int[] { 26, 16, 50 };
    faces[ 82] = new int[] { 26, 50, 58 };
    faces[ 83] = new int[] { 26, 58, 34 };
    faces[ 84] = new int[] { 26, 34,  6 };
    faces[ 85] = new int[] { 26,  6, 30 };
    faces[ 86] = new int[] { 26, 30, 54 };
    faces[ 87] = new int[] { 26, 54, 46 };
    faces[ 88] = new int[] { 26, 46, 14 };
    faces[ 89] = new int[] { 26, 14,  4 };
    faces[ 90] = new int[] { 27,  4, 14 };
    faces[ 91] = new int[] { 27, 14, 47 };
    faces[ 92] = new int[] { 27, 47, 55 };
    faces[ 93] = new int[] { 27, 55, 31 };
    faces[ 94] = new int[] { 27, 31,  7 };
    faces[ 95] = new int[] { 27,  7, 35 };
    faces[ 96] = new int[] { 27, 35, 59 };
    faces[ 97] = new int[] { 27, 59, 51 };
    faces[ 98] = new int[] { 27, 51, 16 };
    faces[ 99] = new int[] { 27, 16,  4 };
    faces[100] = new int[] { 28,  5, 15 };
    faces[101] = new int[] { 28, 15, 48 };
    faces[102] = new int[] { 28, 48, 56 };
    faces[103] = new int[] { 28, 56, 32 };
    faces[104] = new int[] { 28, 32,  8 };
    faces[105] = new int[] { 28,  8, 36 };
    faces[106] = new int[] { 28, 36, 60 };
    faces[107] = new int[] { 28, 60, 52 };
    faces[108] = new int[] { 28, 52, 17 };
    faces[109] = new int[] { 28, 17,  5 };
    faces[110] = new int[] { 29,  5, 17 };
    faces[111] = new int[] { 29, 17, 53 };
    faces[112] = new int[] { 29, 53, 61 };
    faces[113] = new int[] { 29, 61, 37 };
    faces[114] = new int[] { 29, 37,  9 };
    faces[115] = new int[] { 29,  9, 33 };
    faces[116] = new int[] { 29, 33, 57 };
    faces[117] = new int[] { 29, 57, 49 };
    faces[118] = new int[] { 29, 49, 15 };
    faces[119] = new int[] { 29, 15,  5 };
  } //end GreatDisdyakisTriacontahedron()

  public String name() {
    return "Great Disdyakis Triacontahedron";
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
   
} //end class GreatDisdyakisTriacontahedron
