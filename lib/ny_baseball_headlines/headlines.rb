class NyBaseballHeadlines::Headlines
  attr_accessor :headline, :url, :article

  @@all = []

  def initialize(headline, url, article)
    @headline = headline
    @url = url
    @article = article
    @@all << self
  end

  def self.headlines_with_index
    @@all.each.with_index(1) do |news, i|
    puts "#{i}) #{news.headline}"
    end
  end

  def self.article_text(input)
    puts ""
    puts "#{@@all[input.to_i-1].headline}"
    puts "----------------------------------------------------------------------"
    puts "#{@@all[input.to_i-1].article}"
  end

  def self.clear
    @@all.clear
  end

end

