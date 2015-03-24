public class Game{
  public int size;
  private Board board;
  
  // this is pretty bare bones. It should just basically be a middleman to the board for now? idk
  
  public Game(int columns, int rows) {
    this.board = new Board(columns,rows);
  }
  
  public ArrayList<PVector> getSquares() {
    return this.board.getOccupiedSquares();
  }
  
  public void move(char move) {
    this.board.move(move);
  }
}
