int squareWidth = 20;
int squareHeight = 20;
int lastRow = -1;
int lastColumn =-1;
int squareX=-1;
int squareY=-1;
int columns = 0;
int rows =  0;
boolean[][] arr;
ArrayList<PVector> list;

// THIS IS TOTALLY FUCKED RIGHT NOW. Basically it draws squares and clears them when you click. 

//busy waiting will not work for snake, keep track of starting time instead
// Every loop will check that enough time has passed so that input will not be missed 
// during busy waiting.

void setup() {
  size(640, 360); // size of the screen
  background(0); // black background
  stroke(0); // the thin line around the squares is black
  
  columns = width/squareWidth; // column is the x-value
  rows = height/squareHeight;  // row is the y-value
  arr = new boolean[rows][columns];
  for (int i = 0;i < rows;i++){
    for (int j=0;j<columns;j++){
      arr[i][j]=false;
    }
  }
  Game game = new Game(columns, rows);

  list = new ArrayList<PVector>();
}


void draw() {
  
  // THIS IS TOTALLY FUCKED RIGHT NOW. Basically it draws squares and clears them when you click. 

  int column = mouseX / squareWidth;
  int row = mouseY / squareHeight;
  
  // game.advance() returns a list of points that should be white
  if (mousePressed) {
    list = new ArrayList<PVector>();
  }
  if (row !=lastRow || column != lastColumn){

    squareY = row * squareHeight;
    squareX = column * squareWidth;
    if (!mousePressed) {
      list.add(new PVector(column,row)); 
    }    
    lastRow = row;
    lastColumn=column;    
  }
  drawSquares(list);
}

void drawSquares(ArrayList<PVector> list) {
  // Clear everything and then draw the squares again. Otherwise it will just never erase them
  background(0);
    fill(255);
    for (PVector point : list) {
       squareY = int(point.y) * squareHeight;
       squareX = int(point.x) * squareWidth;
       rect(squareX,squareY,squareWidth,squareHeight);
    } 
}

//    if (arr[row][column]){
//      arr[row][column] = false;
//      fill(0);
//    } else {
//      arr[row][column] = true;
//      fill(255);
//    }
//    rect(squareX,squareY,squareWidth,squareHeight);

