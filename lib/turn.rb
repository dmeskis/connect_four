class Turn

  def initialize
    @valid_user_inputs = ['A','B','C','D','E','F','G']
  end

  def input_valid?(input)
    @valid_user_inputs.include?(input)
  end

  def get_user_input
    print "> "
    input = gets.chomp
    if input_valid?(input)
      input
    else
      puts "Please enter a valid letter"
      get_user_input
    end
  end

  def user_input_to_index(input)
    @valid_user_inputs.find_index(input)
  end

  def generate_computer_move
    rand(0..6)
  end


end
