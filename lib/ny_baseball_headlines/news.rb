
class NyBaseballHeadlines::News

  attr_accessor :headlines

  
  def initialize
    @headlines = []
  end
  
  def self.mets_post 

    mets = self.new
    mets_doc = Nokogiri::HTML(open("http://nypost.com/tag/new-york-mets/"))
    mets_doc.search("article header h3 a[href]").each_with_object({}) do |m|
    mets.headlines << m.text
    end
    mets
  end

  def self.yanks_post 
    yanks = self.new
    yanks_doc = Nokogiri::HTML(open("http://nypost.com/tag/new-york-yankees/"))
    yanks_doc.search("article header h3 a[href]").each_with_object({}) do |y|
      yanks.headlines << y.text
    end
    yanks
  end

end