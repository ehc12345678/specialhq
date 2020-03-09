class Link < RuleResult
  attr_accessor :url
  attr_writer :text

  def initialize(url, text)
    @url = url
    @text = text
  end

  def text
    @text || @url
  end
end
