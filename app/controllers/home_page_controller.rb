class HomePageController < ApplicationController
  def home
  end
  def details
  end
  def search_list
      @q = corporation.search(search[:q])
      @corporations = @q.result(distinct: true)
  end
  def comments
  end
  def nichan
  end
  def tools_list
  end
  def industry_analysis
  end
  def rank
  end 
  def column
  end
  def schedule
  end
end
