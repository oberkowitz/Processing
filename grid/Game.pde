public class Game{
  public int size;
  private Board board;
  
  public Game(int columns, int rows) {
    this.board = new Board(columns,rows);
  }
}
