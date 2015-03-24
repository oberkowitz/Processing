public class Snake {
  private ArrayList<PVector> body;
  
  public Snake(PVector initial) {
    this.body = new ArrayList<PVector>();
    this.body.add(initial);
  }
  
  public boolean isPointInSnake(PVector point) {
    return this.body.contains(point);
  }
  
  public boolean move(PVector point) {
    if (isPointInSnake(point)){
      return false;
    }
    this.body.remove(this.body.size()-1);
    this.body.add(0,point);
    return true;
  }
  
  public void eat(PVector point) {
    this.body.add(0,point);
  }
  
  public ArrayList<PVector> getBody(){
    return this.body;
  }
    
  
}
