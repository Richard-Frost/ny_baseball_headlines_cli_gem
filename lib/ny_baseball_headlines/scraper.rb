class NyBaseballHeadlines::Scraper

  attr_accessor :headlines, :urls, :team_name
  
  def self.team_headline(team_name)
    @team_name = team_name
    ny_team = self.new 
    team_doc = Nokogiri::HTML(open("http://nypost.com/tag/#{@team_name}/")) 
    team_doc.search("article header h3 a[href]").collect do |t| 
    headline = t.text
    url = t.first.last
    article = article_scraper(url)
    NyBaseballHeadlines::Headlines.new(headline, url, article)
    end
  end

  def self.article_scraper(url)
    article_doc = Nokogiri::HTML(open("#{url}"))
    text = article_doc.search("div .entry-content p")
    text.text
  end

end