public class Board {
  private Snake snake;
  private PVector food;
  private int columns;
  private int rows;
  
  public Board(int columns, int rows){
    this.snake = new Snake(new PVector(columns/2,rows/2));
    this.food = new PVector(1,1);
  }
  
  public ArrayList<PVector> getOccupiedSqaures() {
    ArrayList<PVector> list = new ArrayList<PVector>();
    list.addAll(this.snake.getBody());
    return list;
  }
  
  public PVector generateRandomVector() {
    return new PVector(int(random(0,columns)),int(random(0,rows)));
  }
}
