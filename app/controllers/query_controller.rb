class QueryController < ApplicationController

  def new
  end


  def results
    @results = FreebaseApi.common_movies(params[:actor_1],params[:actor_2])
  end

end