class SnippetsController < ApplicationController

  def index
    redirect_to action: :new
  end

  def new
    @snippet = Snippet.new
  end

  def create
    from_params
    if @snippet.save
      redirect_to @snippet
    else
      render :new
    end
  end

  def show
    from_params_id
  end

  private
    def from_params
      @snippet = Snippet.new(snippet_params)
    end

    def from_params_id
      @snippet = Snippet.find(params[:id])
    end

    def snippet_params
      params.require(:snippet).permit(:author, :code, :title)
    end


end
