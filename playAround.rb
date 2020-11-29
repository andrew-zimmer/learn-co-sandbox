require 'pry'
class TicTacToe
  @@board = Array.new(9,"")
  attr_reader :display_board, :greet?, :play_on, :player_square, :square
  attr_reader :count, :whos_turn?
  
  #private 
  
  def display_board 
    puts " #{@@board[0]} | #{@@board[1]} | #{@@board[2]} "
    puts "-----------"
    puts " #{@@board[0]} | #{@@board[1]} | #{@@board[2]} "
    puts "-----------"
    puts " #{@@board[0]} | #{@@board[1]} | #{@@board[2]} "
  end 
  
  #greeting and ask player to play 
  def greet?
    puts "Welcome to Tic Tac Toe! /n Want to play?:"
    play = gets.strip
    if play == "yes"
      true 
    elsif play == "no"
      false 
    else 
      self
    end 
  end 
  
  #player answer to playing game 
  def play_on
    if @greet?  
      @display_board
      puts "Pick a Square, 1-9:"
      square = gets.strip 
    end 
  end 
  
  #converts player number to interger for board 
  def player_square
    @@board[@play_on.to_i -1]
  end 
  
  #keeps count of the turns 
  def count
    @@board.collect {|x_or_o| x_or_o == "x" || x_or_o == "O"}.count
  end 
  
  #what is played on each turn, x or o 
  def whos_turn?
    if count.even? 
      "O"
    elsif count.odd?
      "X"
    end 
  end 
  
  #returns a boolean if index in board is taken
  def position_taken?
    !@player_square == nil
  end 
  
  #if user move input is valid 
  def valid_move?
    !@position_taken && @play_on.between?(1,9)
  end 
  
  
end 

display_board

