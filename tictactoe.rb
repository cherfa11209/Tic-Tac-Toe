class Board

  attr_accessor :cell
  def initialize(cell)
    @cell = cell
  end

  def display
      puts " "
      puts "#{@cell[0]} | #{@cell[1]} | #{@cell[2]}"
      puts "----------"
      puts "#{@cell[3]} | #{@cell[4]} | #{@cell[5]}"
      puts "----------"
      puts "#{@cell[6]} | #{@cell[7]} | #{@cell[8]}"
      puts " "
  end

  def check_for_winner
    if @cell[0] == @cell[1] && @cell[1] == @cell[2]
     puts @cell[1] + " wins"
      exit
    elsif  @cell[3] == @cell[4] && @cell[4] == @cell[5]
      puts @cell[4] + " wins"
      exit
    elsif @cell[6] == @cell[7] && @cell[7] == @cell[8]
      puts @cell[7] + " wins"
      exit
    elsif  @cell[0] == @cell[3] && @cell[3] == @cell[6]
      puts @cell[6] + " wins"
      exit
    elsif @cell[1] == @cell[3] && @cell[7] == @cell[3]
      puts @cell[7] + " wins"
      exit
    elsif  @cell[2] == @cell[5] && @cell[5] == @cell[8]
      puts @cell[5] + " wins"
      exit
    elsif @cell[0] == @cell[4] && @cell[4] == @cell[8]
      puts @cell[4] + " wins"
      exit
    elsif @cell[2] == @cell[4] && @cell[4] == @cell[6]
      puts @cell[4] + " wins"
      exit
    else
      puts "next turn!"
      puts "----------------------------"
    end
  end 
end




class Game 
  attr_accessor :turns
  def initialize(turns)
    @turns = turns
  end

  def play 
      array = [1,2,3,4,5,6,7,8,9]
      @board = Board.new(array)
      @board.display
    while turns > 0 
      puts "X make a move: "
      answer = gets.chomp.to_i
      array[answer - 1] = "X"
      @board.display()
      @board.check_for_winner()
      
      puts "O make a move: "
      answer2 = gets.chomp.to_i
      array[answer2 - 1] = "O"
      @board.display()
      @board.check_for_winner()
      @turns -=1
      end
  end  


end



game = Game.new(9)
game.play


