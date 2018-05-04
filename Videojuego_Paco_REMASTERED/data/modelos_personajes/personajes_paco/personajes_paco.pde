void setup(){
  size (400, 300);
  
}

void draw(){
  
  background(255);
  pushMatrix();
  translate(0,0);
  noStroke();
  
  //NEW GUY
  
  //Busto
  fill(#F2B518);
  ellipseMode(RADIUS);
  arc(200, 190, 80, 70, radians(30), radians(150));
  fill(#EADFCE);
  arc(200, 190, 80, 70, radians(30), radians(50));
  arc(200, 190, 80, 70, radians(130), radians(150));
  
  //Cara
  fill(#936115);
  rectMode(CENTER);
  rect(136,95,30,30,10);
  rect(264,95,30,30,10);
  fill(#FFD89D);
  ellipseMode(RADIUS);
  ellipse(200,150,85,85);
  fill(#FAF8F5);
  ellipse(200,150,85,65);
  fill(#ACDFFA);
  ellipse(200,150,50,50);
  fill(0);
  ellipse(200,150,30,30);
  fill(255);
  ellipse(220,135,12,12);
  
  popMatrix();
      
}