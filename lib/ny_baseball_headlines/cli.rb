class NyBaseballHeadlines::CLI

  def call
    greeting
    menu
    goodbye
  end

  def greeting
    puts ""
    puts "Welcome to NY Baseball Headlines"
    puts "***************************"
    puts ""
  end

  def menu
    puts "Enter 1 for the latest Mets news"
    puts "Enter 2 for the latest Yankees news"
    puts "Enter menu for options"

    input = nil
    while input != "exit"
    input = gets.strip.downcase

      if input.to_i == 1
        puts ""
        puts "NY Post"
        puts "Mets Headlines"
        puts "--------------"
        mets_news
        puts""
        puts "Enter menu or exit"
        puts""

      elsif input.to_i == 2
        puts ""
        puts "NY Post"
        puts "Yankees Headlines" 
        puts "-----------------"
        yankees_news
        puts""
        puts "Enter menu or exit"
        puts""

        elsif input == "menu"
          menu
        else
        puts "That is not a valid option. Please try again. Enter menu for more options."
      end
    end
  end

  def mets_news
    mets = NyBaseballHeadlines::News.mets_post
    mets.headlines.each.with_index(1) do |m_headline, i|
    puts "#{i}) #{m_headline}"
    end
  end 

  def yankees_news
    yanks = NyBaseballHeadlines::News.yanks_post
    yanks.headlines.each.each.with_index(1) do |y_headline, i|
      puts "#{i}) #{y_headline}" 
    end
  end

  def goodbye
    puts "Goodbye! Have a great day!"                                                          
  end

end