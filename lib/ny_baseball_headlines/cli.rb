class NyBaseballHeadlines::CLI

  def call
    greeting
    menu
  end

  def greeting
    puts ""
    puts "Welcome to NY Baseball News"
    puts "***************************"
    puts ""
  end

  def menu
    puts "Press 1 for the latest Mets news"
    puts "Press 2 for the latest Yankees news"
    puts "Enter menu for options"

    input = nil
    while input != "exit"
    input = gets.strip.downcase

      if input.to_i == 1
        puts ""
        puts "NY Post"
        puts "Mets Headlines"
        puts "--------------"

      elsif input.to_i == 2
        puts ""
        puts "NY Post"
        puts "Yankees Headlines" 
        puts "--------------"
        elsif input == "menu"
        menu
      end
    end
  end 

end