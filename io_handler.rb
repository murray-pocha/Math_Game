class IOHandler
  def self.print_message(message)
    puts message
  end

  def self.get_input
    print "> "
    gets.chomp
  end
end