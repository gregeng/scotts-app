class QueryController < ApplicationController

  def new
  end


  def results
    # raise
    @movie_results = FreebaseApi.common_movies(params[:actor_1],params[:actor_2])
    @tv_results = FreebaseApi.common_tv_shows(params[:actor_1],params[:actor_2])
  end

end
