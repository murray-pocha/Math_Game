require_relative 'player'
require_relative 'question'
require_relative 'io_handler'

class Game
  def initialize
    @player1 = Player.new('Player 1')
    @player2 = Player.new('Player 2')
    @current_player = @player1
  end

  def switch_turns
    @current_player = (@current_player == @player1) ? @player2 : @player1
  end

  def play_turn
    question = Question.new
    IOHandler.print_message("#{question.ask_question(@current_player)}")
    
    player_answer = IOHandler.get_input.to_i

    if player_answer == question.correct_answer
      IOHandler.print_message("✅ Correct!")
    else
      IOHandler.print_message("❌ Wrong! #{@current_player.name} loses a life.")
      @current_player.lose_life
    end

    switch_turns
  end

  def game_over?
    !@player1.is_alive? || !@player2.is_alive?
  end

  def declare_winner
    if @player1.is_alive?
      winner = @player1
    elsif @player2.is_alive?
      winner = @player2
    else
      IOHandler.print_message("It's a draw! Both players lost.")
      return
    end

    IOHandler.print_message("#{winner.name} wins with #{winner.lives} lives left!")
  end

  def start
    IOHandler.print_message("Welcome to the Math Game!")
    until game_over?
      play_turn
    end
    declare_winner
  end
end