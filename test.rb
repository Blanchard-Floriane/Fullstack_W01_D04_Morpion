require 'bundler'
Bundler.require




cells = {
  "a1" => "  ",
  "a2" => "  ",
  "a3" => "  ",
  "b1" => "  ",
  "b2" => "  ",
  "b3" => "  ",
  "c1" => "  ",
  "c2" => "  ",
  "c3" => "  "
}

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


while true
  # a_line_full = (cells["a1"] == "❌" && cells["a2"] == "❌" && cells["a3"] == "❌")
  # b_line_full = (cells["b1"] == "❌" && cells["b2"] == "❌" && cells["b3"] == "❌")
  # c_line_full = (cells["c1"] == "❌" && cells["c2"] == "❌" && cells["c3"] == "❌")
  # fst_line_full = (cells["a1"] == "❌" && cells["b1"] == "❌" && cells["c1"] == "❌")
  # scd_line_full = (cells["a2"] == "❌" && cells["b2"] == "❌" && cells["c2"] == "❌")
  # thrd_line_full = (cells["a3"] == "❌" && cells["b3"] == "❌" && cells["c3"] == "❌")
  # fst_cross_line = (cells["a1"] == "❌" && cells["b2"] == "❌" && cells["c3"] == "❌")
  # scd_cross_line = (cells["c1"] == "❌" && cells["b2"] == "❌" && cells["a3"] == "❌")

  # if a_line_full? || b_line_full? || c_line_full? || first_line_full? || scd_line_full? || thrd_line_full? || fst_cross_line? || scd_cross_line?
  #   puts "C'est gagné"
  #   break
  # else
  
  
  puts "
  Choisis une case :
  a1 / a2 / a3 / b1 / b2 / b3 / c1 / c2 / c3
  "
  print "> "
  user_answer = gets.chomp

  cells[user_answer] = "❌"

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
  
  sleep(2)
  
  system 'clear'
  
end

