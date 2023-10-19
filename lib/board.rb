class Board
  attr_accessor :cells
  
  def initialize
    cell = BoardCase.new # initialise une cellule
    empty_cell = cell.empty #pour gagner du temps sur le pr-remplissage de la grille de dpart
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

  def hash_acces(key) #car bloque le cas contraire la lecture
    @cells[key]
  end

end

  