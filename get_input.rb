

module GetInput
  def print_options(options)
    options.each.with_index do |option, index|
      print "#{index + 1}. #{option} "
    end
  end

  def get_with_options(prompt, options)
    input = ""
    until options.include?(input)
      puts prompt
      print_options(options)
      print "\n > "
      input = gets.chomp
    end

    input
  end

  def get_input(prompt)
    input = ""
    while input.empty?
      puts prompt
      print "> "
      input = gets.chomp
    end
    input
  end

  def get_input_pokemon_name(prompt)
    print "> "
    input = gets.chomp
    if input.empty?
      pokemon_player
      return
    end
  end
end
