class RulesController < ApplicationController
  def short_list
    self.short_list
  end

  def self.short_list
    list = Array.new
    list << Link.new("http://fcsn.org", "Federation for Children with Special Needs")
    list << Todo.new("Get a doctor", "One of the first things you will need to do is find the right doctor")
    Provider.all.each { |provider|
      list << Provider_Ref.new(provider.id)
    }
    list
  end

  def detailed_list
  end

end
