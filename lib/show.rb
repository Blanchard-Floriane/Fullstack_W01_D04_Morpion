class Show
  #Show : cette classe sera une sorte de view. Elle affichera l'état du plateau de jeu à un instant T.
  #attributs ?

  def initialize(cells)
    puts "
    ┌────────────────────┐
    │ ┌────┐┌────┐┌────┐ │
    │ │ #{cells["a1"]} ││ #{cells["a2"]} ││ #{cells["a3"]} │ │  
    │ └────┘└────┘└────┘ │
    │ ┌────┐┌────┐┌────┐ │
    │ │ #{cells["b1"]} ││ #{cells["b2"]} ││ #{cells["b3"]} │ │ 
    │ └────┘└────┘└────┘ │
    │ ┌────┐┌────┐┌────┐ │
    │ │ #{cells["c1"]} ││ #{cells["c2"]} ││ #{cells["c3"]} │ │   
    │ └────┘└────┘└────┘ │
    └────────────────────┘"
  end
end
