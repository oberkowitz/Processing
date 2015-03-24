public class Board {
  private Snake snake;
  private PVector food;
  private int columns;
  private int rows;
  
  // Start the food at 1,1 and put the snake in the middle somewhere
  public Board(int columns, int rows){
    this.snake = new Snake(new PVector(columns/2,rows/2));
    this.food = new PVector(1,1);
  }
  // return a list of PVectors for the snake and food. Used for drawing
  public ArrayList<PVector> getOccupiedSquares() {
    ArrayList<PVector> list = new ArrayList<PVector>();
    list.addAll(this.snake.getBody());
    list.add(food);
    return list;
  }
  
  // This can be used to generate new food every turn. Will need to be checked against the position of the snake
  public PVector generateRandomVector() {
    return new PVector(int(random(0,columns)),int(random(0,rows)));
  }
  
  public boolean move(char move) {
    // get the snakes last direction, calculate the PVector using the head and the direction,
    // then  tell the snake to add that. 
    // The snake should return true if that move keeps it alive, false if not.
    return false;
  }
}
