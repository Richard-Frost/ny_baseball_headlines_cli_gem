class NyBaseballHeadlines::CLI 

  def call
    greeting
    menu
    goodbye
  end

  def greeting
    puts ""
    puts "Welcome to NY Baseball Headlines"
    puts "********************************"
    puts ""
  end

  def title(team)
    puts ""
    puts "NY Post"
    puts "#{team} Headlines"
    puts "--------------"
  end


  def menu
    puts "Enter 1 for the latest Mets news"
    puts "Enter 2 for the latest Yankees news"
    puts ""

    NyBaseballHeadlines::Headlines.clear
    
    input = nil
    while input != "exit"
    input = gets.strip

      if input.to_i == 1
        title("Mets")
        headline_menu("new-york-mets") 
      elsif input.to_i == 2
        title("Yankees")
        headline_menu("new-york-yankees")
        elsif input.downcase == "menu"
          menu
        elsif input.downcase == "exit"
          goodbye
        else
        puts "That is not a valid option. Please try again. Enter menu for more options."
        end
      end
    end

  def headline_menu(team)
    NyBaseballHeadlines::Headlines.clear
    NyBaseballHeadlines::Scraper.team_headline(team)
    NyBaseballHeadlines::Headlines.headlines_with_index

    puts ""
    puts "What would you like to do?"
    puts "Enter an article number to read, menu for more options or exit"
    puts ""
    
    input = nil
    input = gets.strip
    if input.downcase == "menu"
      menu
    elsif input.downcase == "exit"
      goodbye
    else
    NyBaseballHeadlines::Headlines.article_text(input)
    
    puts""
    puts "Enter 1 to return to #{team} News, menu for more options or exit"
    puts ""
    input = gets.strip
      if input.to_i == 1
        headline_menu(team)
      elsif input.downcase == "menu"
        menu
      elsif input.downcase == "exit"
        goodbye
      end
    end
  end

  def goodbye
    puts ""
    puts "Goodbye! Have a great day!" 
    exit                                                         
  end

end