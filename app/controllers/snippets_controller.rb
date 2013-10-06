class SnippetsController < ApplicationController

  def index
    redirect_to action: :new
  end

  def new
  end

  def create
    @snippet = Snippet.new(snippet_params)

    redirect_to @snippet if @snippet.save
  end

  def show
    @snippet = Snippet.find(params[:id])
  end

  private
    def snippet_params
      params.require(:snippet).permit(:author, :code)
    end

end
