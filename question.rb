require_relative 'io_handler'

class Question
  attr_reader :num1, :num2

  def initialize
    @num1 = rand(1..20)
    @num2 = rand(1..20)
  end

  def ask_question(player)
    IOHandler.print_message("#{player.name}, what is #{@num1} + #{@num2}?")
  end

  def correct_answer
    @num1 + @num2
  end
end