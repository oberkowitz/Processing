public class Snake {
  private ArrayList<PVector> body;
  private char lastDirection = UP;
  
  public Snake(PVector initial) {
    this.body = new ArrayList<PVector>();
    this.body.add(initial);
  }
  
  public boolean isPointInSnake(PVector point) {
    return this.body.contains(point);
  }
  
  
  // Move the snake. Return false if death occurs. INCOMPLETE
  public boolean move(char move) {
    if (isPointInSnake(point)){
      return false;
    }
    this.body.remove(this.body.size()-1);
    this.body.add(0,point);
    return true;
  }
  
  // Add the point to the snake. The Board will decide to call this
  public void eat(PVector point) {
    this.body.add(0,point);
  }
  
  public ArrayList<PVector> getBody(){
    return this.body;
  }
    
  
}
