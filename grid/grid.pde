int squareWidth = 20;
int squareHeight = 20;
int lastRow = -1;
int lastColumn =-1;
int squareX=-1;
int squareY=-1;
int columns = 0;
int rows =  0;
boolean[][] arr;

//busy waiting will not work for snake, keep track of starting time instead
// Every loop will check that enough time has passed so that input will not be missed 
// during busy waiting.

void setup() {
  size(640, 360);
  background(0);
  stroke(0);
  
  columns = width/squareWidth;
  rows = height/squareHeight;
  arr = new boolean[rows][columns];
  for (int i = 0;i < rows;i++){
    for (int j=0;j<columns;j++){
      arr[i][j]=false;
    }
  }
  Game game = new Game(columns, rows);
  println(game.size);
}


void draw() {
  // background(0); 
  int column = mouseX / squareWidth;
  int row = mouseY / squareHeight;
  
  // game.advance() returns a list of points that should be white
  
  if (row !=lastRow || column != lastColumn){

    squareY = row * squareHeight;
    squareX = column * squareWidth;
    if (arr[row][column]){
      arr[row][column] = false;
      fill(0);
    } else {
      arr[row][column] = true;
      fill(255);
      
    }
    rect(squareX,squareY,squareWidth,squareHeight);
    lastRow = row;
    lastColumn=column;    
  }
}
