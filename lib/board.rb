class Board
  attr_accessor :cells
  
  def initialize
    cell = BoardCase.new # initialise une cellule
    empty_cell = cell.empty #pour gagner du temps sur le pr-remplissage de la grille de dpart
    @cells = {
      "A1" => empty_cell,
      "A2" => empty_cell,
      "A3" => empty_cell,
      "B1" => empty_cell,
      "B2" => empty_cell,
      "B3" => empty_cell,
      "C1" => empty_cell,
      "C2" => empty_cell,
      "C3" => empty_cell
    }
  end

  def hash_acces(key) #car bloque le cas contraire la lecture
    @cells[key]
  end

end

  