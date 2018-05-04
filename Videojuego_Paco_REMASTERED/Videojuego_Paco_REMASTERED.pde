/********* VARIABLES GLOBALES *********/
int gameScreen;
int turn;
int hp1, hp2;

PImage Pantalla1;
PImage Pantalla2;
PImage Pantalla3;
PImage Pantalla4;
PImage Pantalla5;
PImage Pantalla6;


personaje Batman1;
personaje Spiderman1;
personaje KickAss1;
personaje Saitama1;
personaje Supervaca1;
personaje NewGuy1;

personaje Batman2;
personaje Spiderman2;
personaje KickAss2;
personaje Saitama2;
personaje Supervaca2;
personaje NewGuy2;
  
// Player 1, 2.

personaje player1;
personaje player2;

//Turno para seleccionar.
int ts = 0;

boolean player1Selection = false;
boolean player2Selection = false;



/********* SETUP BLOCK *********/

void setup() {
  size(800, 600);
  background(255);
  
  // Personajes jugador 1.
  Batman1 = new personaje("Batman", 60, 20, 10);
  Spiderman1 = new personaje("Spiderman", 50, 15, 15); 
  KickAss1 = new personaje("Kick-Ass", 80, 10, 10);
  Saitama1 = new personaje("Saitama", 50, 10000, 20);
  Supervaca1 = new personaje("Supervaca", 60, 25, 10);
  NewGuy1 = new personaje("New Guy", 45, 25, 20);
  
  // Personajes jugador 2.
  Batman2 = new personaje("Batman", 60, 20, 10);
  Spiderman2 = new personaje("Spiderman", 50, 15, 15); 
  KickAss2 = new personaje("Kick-Ass", 80, 10, 10);
  Saitama2 = new personaje("Saitama", 50, 10000, 20);
  Supervaca2 = new personaje("Supervaca", 60, 25, 10);
  NewGuy2 = new personaje("New Guy", 45, 25, 20);
}

/********* DRAW BLOCK *********/

void draw() {
  // Display the contents of the current screen.
  switch (gameScreen) {
    case 0:
      iniScreen();
    break;
    case 1:
      stScreen();
    break;
    case 2:
      charScreen();
    break;
    case 3:
      figScreen();
    break;
    case 4:
      vicScreen();
    break;
  }
}

/********* PANTALLAS *********/

// 0: Initial Screen                  (iniScreen)
// 1: Story Screen                    (stScreen)
// 2: Character Selection Screen      (charScreen)                     
// 3: Fighting Screen                 (FigScreen)
// 4: Victory Screen                  (VicScreen) 

void iniScreen() {
  // Código de pantalla de inicio.
  background(0);
  textAlign(CENTER, CENTER);
  text("SAVE THE EARTH 1,2,3,4,5,6...",400,200);
  text("Haz click para iniciar", 400, 300);
  
  Pantalla1 = loadImage("Pantalla1.jpg");
  image(Pantalla1,0,0);
  if (mousePressed) {
    gameScreen = 1;
  }

}
void stScreen() {
  // Código de pantalla de historia.
  background(255);
  fill(0);
  textAlign(CENTER, CENTER);
  text("6 universos distintos colapsan uno sobre el otro y depende de cada héroe salvar el suyo\n ¿A quién ayudarás?",400,200);
  text("Presiona una tecla para continuar", 400, 300);
  
  if (keyPressed) {
    gameScreen = 2;
  }

}
void charScreen() {
  // Código de pantalla de selección de personajes.
  background(255);
  noStroke();
    
   if ((mouseX> 0) && (mouseX< 267) && (mouseY> 0) && (mouseY< 300)){
        fill(245);
        rectMode(CORNER);
        rect(0, 0, 267, 300);      
   }
   if( (mouseX> 267) && (mouseX< 533) && (mouseY> 0) && (mouseY< 300)){
        fill(245);
        rectMode(CORNER);
        rect(267, 0, 267, 300);
   }
   if( (mouseX> 533) && (mouseX< 800) && (mouseY> 0) && (mouseY< 300)){
        fill(245);
        rectMode(CORNER);
        rect(533, 0, 267, 300);
    }
   if( (mouseX> 0) && (mouseX< 267) && (mouseY> 300) && (mouseY< 600)){
        fill(245);
        rectMode(CORNER);
        rect(0, 300, 267, 300);
    }
    if( (mouseX> 267) && (mouseX< 533) && (mouseY> 300) && (mouseY< 600)){
        fill(245);
        rectMode(CORNER);
        rect(267, 300, 267, 300);
    }
    if( (mouseX> 533) && (mouseX< 800) && (mouseY> 300) && (mouseY< 600)){
        fill(245);
        rectMode(CORNER);
        rect(533, 300, 267, 300);
    }
     
     
//ATRIBUTOS
   fill(0);
   
   //BATMAN
   
  textAlign(LEFT);
  text("HP:  60",220,100);
  text("ATA:  20",220,120);
  text("DEF:  10",220,140);

   
   //SPIDERMAN
   
  textAlign(LEFT);
  text("HP:  50",480,100);
  text("ATA:  15",480,120);
  text("DEF:  15",480,140);
  
   //KICK-ASS
   
  textAlign(LEFT);
  text("HP:  80",730,100);
  text("ATA:  10",730,120);
  text("DEF:  10",730,140);
  
  //SAITAMA
   
  textAlign(LEFT);
  text("HP:  50",220,400);
  text("ATA:  ?",220,420);
  text("DEF:  20",220,440);
  
  //SUPERVACA
   
  textAlign(LEFT);
  text("HP:  60",480,400);
  text("ATA:  25",480,420);
  text("DEF:  10",480,440);
  
  //NEW GUY
   
  textAlign(LEFT);
  text("HP:  45",740,400);
  text("ATA:  25",740,420);
  text("DEF:  20",740,440);
  
  
//INSTRUCCIONES
  pushMatrix();
  text("Selecciona a tú HÉROE haciendo click",300,570);
  popMatrix();
  
  
  Pantalla3 = loadImage("BATMANfigscreen.png");
  image(Pantalla3,0,0);
  
  Pantalla3 = loadImage("SPIDERMANfigscreen.png");
  image(Pantalla3,267,0);
  
  Pantalla3 = loadImage("KICKASSfigscreen.png");
  image(Pantalla3,532,0);  
  
  
  Pantalla3 = loadImage("SAITAMAfigscreen.png");
  image(Pantalla3,0,285);
  
  Pantalla3 = loadImage("SUPERVACAfigscreen.png");
  image(Pantalla3,267,290);
  
  Pantalla3 = loadImage("SUPERVACAfigscreen.png");
  image(Pantalla3,267,290);
  
  Pantalla3 = loadImage("NEWGUYfigscreen.png");
  image(Pantalla3,532,290);
  
  if (player1Selection && player2Selection){
      
    gameScreen = 3;
    turn =+1;
  }
          
}

void figScreen() {
  // Código de pantalla de lucha. 
  background (255);
  println(player1.name, hp1);
  println(player2.name, hp2);
  
  pushMatrix();
  text("TURNO:"+turn,90,80);
  popMatrix();
    
  //Barra de vida Player1.
    pushMatrix();
    noStroke();
    fill(350,0,0);
    rectMode(CORNER);
    rect(135,100,hp1,30);
    noFill();
    popMatrix();
    
    //Barra de vida Player2.
    pushMatrix();
    fill(255,0,0);
    rect(500,100,hp2,30);
    noFill();
    popMatrix();
    
    //Instrucciones
    
    fill(0);
    text("Jugador 1 presiona 'Q' para atacar",135,470);
    text("Jugador 2 presiona 'P' para atacar",500,470);
    
    
  
  //Visualización de personaje.
  
  //Jugador1
  
   pushMatrix();
    translate(0, 0);
    if (player1 == Batman1){
      
      BATMAN();
    }
    else if (player1 == Spiderman1){
      
      SPIDERMAN();
    } 
    else if (player1 == KickAss1){
      
      KICKASS();
    } 
    else if (player1 == Saitama1){
      translate(25, 150);
      
      SAITAMA();
    } 
    else if (player1 == Supervaca1){
      translate(25, 150);
      
      SUPERVACA();
    } 
    else if (player1 == NewGuy1){
      translate(25, 150);
      NEWGUY();
    }
    popMatrix();
        
    //Jugador2
    
    pushMatrix();
    translate(400, 0);
    if (player2 == Batman2){
      
      BATMAN2();
    }
    else if (player2 == Spiderman2){
      
      SPIDERMAN2();
    } 
    else if (player2 == KickAss2){
      
      KICKASS2();
    } 
    else if (player2 == Saitama2){
      translate(0, 150);
           
      SAITAMA();
    } 
    else if (player2 == Supervaca2){
      translate(0, 150);
      
      SUPERVACA();
    } 
    else if (player2 == NewGuy2){
      translate(0, 150);
      NEWGUY();
    }
    popMatrix();
    
  //BATALLA
  
  switch (turn){
    case 1:
  keyPressed();
      if ((key == 'Q') || (key == 'q')){
        hp2 = hp2 - (player1.attack - (player2.defense/2));
        println(player1.name, hp1);
        turn = 2;
      }
      break;
      
      case 2:
  keyPressed();
      if ((key == 'P') || (key == 'p')){
        hp1 = hp1 - (player2.attack - (player1.defense/2));
        println(player1.name, hp1);
        turn = 1;
      }
      break;
          
  }
  if(hp1 <= 0 || hp2 <=0){
    gameScreen = 4;
  }

   
}
void vicScreen() {
  // Código de pantalla de victoria.
  background(0);
  
  textAlign(CENTER, CENTER);
  fill(255);
  
  if (hp1 > 0){
    text("Victoria Jugador 1 " + player1.name, 400, 200);
  }
  else if(hp2 > 0){
    text("Victoria Jugador 2 " + player2.name, 400, 200);
  }
  
  text("Haz click para seleccionar personaje", 400, 300);
  if (mousePressed){
    gameScreen = 2;
    player1Selection = false;
    player2Selection = false;
    ts = 0;
    turn = 0;
   
  }
   
}

/********* INPUTS *********/
void mousePressed (){
  
  if (gameScreen == 2) {
      
     if ((mouseX> 0) && (mouseX< 267) && (mouseY> 0) && (mouseY< 300)){
        //println("mouse sobre Batman");
        if (ts == 0){
          player1 = Batman1;
          hp1 = player1.hp;
          player1Selection = true;
          ts = 1;
          println("Player 1 elige a Batman");           
        }
        else if (ts == 1){
          player2 = Batman2;
          hp2 = player2.hp;
          player2Selection = true;
          println("Player 2 elige a Batman");
           
         }
        
     }
                       
     if( (mouseX> 267) && (mouseX< 533) && (mouseY> 0) && (mouseY< 300)){
        //println("mouse sobre Spiderman");
        if (ts == 0){
          player1 = Spiderman1;
          hp1 = player1.hp;
          player1Selection = true;
          ts = 1;
          println("Player 1 elige a Spiderman");
        }
        else if (ts == 1){
          player2 = Spiderman2;
          hp2 = player2.hp;
          player2Selection = true;
          println("Player 2 elige a Spiderman");
    
        }
        
     }
           
     if( (mouseX> 533) && (mouseX< 800) && (mouseY> 0) && (mouseY< 300)){
        //println("mouse sobre Kick-Ass");
        if (ts == 0){
          player1 = KickAss1;
          hp1 = player1.hp;
          player1Selection = true;
          ts = 1;
          println("Player 1 elige a Kick-Ass");
        }
        else if (ts == 1){
          player2 = KickAss2;
          hp2 = player2.hp;
          player2Selection = true;
          println("Player 2 elige a Kick-Ass");
          
        }
       
     }
                         
     if( (mouseX> 0) && (mouseX< 267) && (mouseY> 300) && (mouseY< 600)){
        //println("mouse sobre Saitama");
        if (ts == 0){
          player1 = Saitama1;
          hp1 = player1.hp;
          player1Selection = true;
          ts = 1;
          println("Player 1 elige a Saitama");
        }
        else if (ts == 1){
          player2 = Saitama2;
          hp2 = player2.hp;
          player2Selection = true;
          println("Player 2 elige a Saitama");
          
        }
        
      }
        
     if( (mouseX> 267) && (mouseX< 533) && (mouseY> 300) && (mouseY< 600)){
        //println("mouse sobre Supervaca");
        if (ts == 0){
          player1 = Supervaca1;
          hp1 = player1.hp;
          player1Selection = true;
          ts = 1;
          println("Player 1 elige a Supervaca");
        }
        else if (ts == 1){
          player2 = Supervaca2;
          hp2 = player2.hp;
          player2Selection = true;
          println("Player 2 elige a Supervaca");
          
        }
        
      }
             
     if( (mouseX> 533) && (mouseX< 800) && (mouseY> 300) && (mouseY< 600)){
        //println("mouse sobre New Guy");
        if (ts == 0){
          player1 = NewGuy1;
          hp1 = player1.hp;
          player1Selection = true;
          ts = 1;
          println("Player 1 elige a New Guy");
        }
        else if (ts == 1){
          player2 = NewGuy2;
          hp2 = player2.hp;
          player2Selection = true;
          println("Player 2 elige a New Guy");
        }
        
      } 
  }
}

/********* OTHER FUNCTIONS *********/

void BATMAN(){

  pushMatrix();
  translate(0,0);

  //BATMAN
  Pantalla3 = loadImage("BATMANlucha.png");
  image(Pantalla3,0,0);
  
  popMatrix();
}

void BATMAN2(){

  pushMatrix();
  translate(0,0);

  //BATMAN
  Pantalla3 = loadImage("BATMANlucha2.png");
  image(Pantalla3,0,0);
  
  popMatrix();
}

void SPIDERMAN(){
  
  pushMatrix();
  translate(0,0);

  //SPIDERMAN
  
  Pantalla3 = loadImage("SPIDERMANlucha.png");
  image(Pantalla3,0,0);
   
   popMatrix();
}

void SPIDERMAN2(){
  
  pushMatrix();
  translate(0,0);

  //SPIDERMAN
  
  Pantalla3 = loadImage("SPIDERMANlucha2.png");
  image(Pantalla3,0,0);
   
   popMatrix();
}

void KICKASS(){
  
  pushMatrix();
  translate(0,0);
  
  //KICK-ASS
  
  Pantalla3 = loadImage("KICKASSlucha.png");
  image(Pantalla3,0,0);
        
  popMatrix();
}

void KICKASS2(){
  
  pushMatrix();
  translate(0,0);
  
  //KICK-ASS
  
  Pantalla3 = loadImage("KICKASSlucha2.png");
  image(Pantalla3,0,0);
        
  popMatrix();
}

void SAITAMA(){
  
  pushMatrix();
  translate(0,0);
  noStroke();
  
  //SAITAMA
  
  //Busto
  fill(#F2B518);
  ellipseMode(RADIUS);
  arc(200, 190, 80, 70, radians(30), radians(150));
  fill(#EADFCE);
  arc(200, 190, 80, 70, radians(30), radians(50));
  arc(200, 190, 80, 70, radians(130), radians(150));
  
  //Cara
  fill(#FFD89D);
  strokeWeight(1);
  triangle(140,150,160,91,160,200);
  triangle(260,150,240,93,240,200);
  ellipseMode(RADIUS);
  ellipse(200,150,55,85);
  
  //Ojos
  fill(255);
  ellipseMode(RADIUS);
  arc(180,142,10,10,radians(10),radians(170));
  arc(220,142,10,10,radians(10),radians(170));
  fill(0);
  ellipse(180,146,2,2);
  ellipse(220,146,2,2);
  stroke(0);
  strokeWeight(2);
  line(170,137,187,137);
  line(213,137,230,137);
  
  //Boca
  stroke(0);
  strokeWeight(2);
  line(194,200,206,200);
  
  //Nariz
  strokeWeight(1);
  line(200,150,198,180);
    
  popMatrix();
}

void SUPERVACA(){
  
  pushMatrix();
  translate(0,0);
  noStroke();
   
  //SUPERVACA
  
  //Busto
  fill(#CB0ACB);
  ellipseMode(RADIUS);
  arc(200,190,80,70,radians(10),radians(170));
  fill(#45BF25);
  arc(200,190,80,70,radians(10),radians(30));
  arc(200,190,80,70,radians(150),radians(170));
  
  
  //Cara
  fill(#936115);
  rectMode(CENTER);
  rect(180,80,30,30,10);
  rect(220,80,30,30,10);
  fill(#FAE09F);
  ellipseMode(RADIUS);
  triangle(180,80,120,100,180,100);
  triangle(220,80,220,100,280,100);
  
  ellipse(200,150,55,85);
  fill(#FAE09F);
  ellipse(200,170,70,65);
  fill(#FF9DFE);
  ellipse(230,170,30,40);
  ellipse(160,160,23,20);
  
  //Ojos
  fill(255);
  ellipseMode(RADIUS);
  arc(190,100,10,15,radians(0),radians(180));
  arc(210,100,10,15,radians(0),radians(180));
  fill(0);
  ellipse(193,106,3,4);
  ellipse(207,106,3,4);
  stroke(0);
  strokeWeight(2);
  line(178,98,200,100);
  line(200,100,222,98);
    
  popMatrix();
}

void NEWGUY(){
  
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
  