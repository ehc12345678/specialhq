class Todo < RuleResult
  attr_accessor :short_description
  attr_accessor :long_description

  def initialize(short_desc, long_desc)
    @short_description = short_desc
    @long_description = long_desc
  end
end