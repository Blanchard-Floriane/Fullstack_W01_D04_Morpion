class Show
  #Show : cette classe sera une sorte de view. Elle affichera l'état du plateau de jeu à un instant T.

  def initialize(cells) 
    puts "
          1     2      3
      ┌────────────────────┐
      │ ┌────┐┌────┐┌────┐ │
    A │ │ #{cells["A1"]} ││ #{cells["A2"]} ││ #{cells["A3"]} │ │  
      │ └────┘└────┘└────┘ │
      │ ┌────┐┌────┐┌────┐ │
    B │ │ #{cells["B1"]} ││ #{cells["B2"]} ││ #{cells["B3"]} │ │ 
      │ └────┘└────┘└────┘ │
      │ ┌────┐┌────┐┌────┐ │
    C │ │ #{cells["C1"]} ││ #{cells["C2"]} ││ #{cells["C3"]} │ │   
      │ └────┘└────┘└────┘ │
      └────────────────────┘
    "
  end
end
