class Board
  attr_accessor :cells
  
  def initialize
    cell = BoardCase.new
    empty_cell = cell.empty
    @cells = {
      "a1" => empty_cell,
      "a2" => empty_cell,
      "a3" => empty_cell,
      "b1" => empty_cell,
      "b2" => empty_cell,
      "b3" => empty_cell,
      "c1" => empty_cell,
      "c2" => empty_cell,
      "c3" => empty_cell
    }
  end

end

  