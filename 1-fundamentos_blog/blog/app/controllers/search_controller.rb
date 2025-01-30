class SearchController < ApplicationController
  def index
    Rails.logger.debug "Parâmetros recebidos: #{params[:q].inspect}"
    @query = Post.ransack(params[:q] || {})
    @posts = @query.result(distinct: true)
  end
end
