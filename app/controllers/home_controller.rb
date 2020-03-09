class HomeController < ApplicationController
  def index
  end

  def home
    @short_list = RulesController.short_list
    @main_article = get_main_article
  end

  # TODO
  def get_main_article
    Post.find(:last)
  end
end
