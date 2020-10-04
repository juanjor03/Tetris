int dimension;
int cLoop = 10;
int loop = 0, tiempo = 0;
int x = 0, y=0;
boolean pausa = false;
boolean matriz[][] = new boolean[10][21];

//Definimos el setup del juego

void setup(){
 size(300,600);
 background(255);
 setLine();
 loop();
 setMap();
}
void draw(){
  clear();
  background(255);
  setLine();
  fill(#F01D16);
  checkLine();
  pararBloque();
  drawMap();
  Sombra();
  rect(x*dimension,y,dimension,dimension);
  if(tiempo%cLoop==0&&tiempo!=0){loop++;}
  if(pausa == false){tiempo++;}
  else{pausatexto();}
  y=dimension*loop;
}

//Se usa la función pararBloque para que el bloque se inmovilice al llegar al limite 

void pararBloque(){
  int xPos = x;
  int yPos = y/dimension;
  if(limBlock(xPos,yPos)==yPos+1||yPos==19){
    matriz[xPos][yPos]=true;
    loop=0;
    x=5;
    if(cLoop>5){cLoop--;}
  }
}

//Sombra es la ayuuda a usuario para que pueda predecir donde cae el bloque

void Sombra(){
 int xPos=x;
 int yPos= y/dimension;
 yPos = limBlock(xPos,yPos)-1;
 fill(200);
 rect(xPos*dimension,yPos*dimension,dimension,dimension);
 fill(#F01D16);
}
int limBlock(int xP,int yP){
  int end=19;
  for(int i=0;i<20;i++){
    if(matriz[xP][i]==true){
     end=i;
     break;
    }
  }
  return end;
}
void pausatexto(){
  textSize(32);
  fill(0);
  text("Juego en Pausa", width/6-10,height/2);
}
void setLine(){
  dimension = width/10;
  for(int i=1;i<10;i++)
  line(dimension*i,0,dimension*i,height-dimension);
  for(int i=1;i<20;i++)
  line(0,dimension*i,width,dimension*i);
}
void checkLine(){
 for(int i=19;i>0;i--){
   boolean clear = true;
     for(int k=0;k<10;k++){
      if(matriz[k][i]==false){
        clear = false;
        break; 
      }
     }
    if(clear==true){
     clearLine(i); 
    }
 }
}
void clearLine(int line){
  for(int i=0;i<10;i++){
   matriz[i][line]=false; 
  }
  for(int i=0;i<10;i++){
   for(int k=line;k>0;k--){
    matriz[i][k] = matriz[i][k-1]; 
   }
  }
}
void setMap(){
   for(int i=0;i<10;i++){
  for(int k=0; k<20;k++){
   matriz[i][k]=false; 
  }
  matriz[i][20]=true;
 }
}
void drawMap(){
  for(int i=0;i<10;i++){
  for(int k=0; k<20;k++){
   if(matriz[i][k]==true){
    rect(i*dimension,k*dimension,dimension,dimension); 
   }
  }
 }
}
void keyReleased(){
   if(keyCode == LEFT){
    x--; 
   }else if(keyCode==RIGHT){
    x++; 
   }else if(keyCode=='P'||keyCode == 'p'){
    if(pausa==false){pausa=true;}else if(pausa==true){pausa=false;} 
   }
   if(x<0){x=0;}
   if(x>9){x=9;}
}
