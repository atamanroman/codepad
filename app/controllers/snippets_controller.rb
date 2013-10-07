class SnippetsController < ApplicationController

  def index
    redirect_to action: :new
  end

  def new
    @snippet = Snippet.new
  end

  def create
    from_params
    @snippet.save
    redirect_to @snippet
  end

  def show
    from_params_id
  end

  def edit
    from_params_id
  end

  def update
    from_params_id
    @snippet.update(snippet_params)
    redirect_to @snippet
  end

  private
    def from_params
      @snippet = Snippet.new(snippet_params)
    end

    def from_params_id
      @snippet = Snippet.find(params[:id])
    end

    def snippet_params
      params.require(:snippet).permit(:author, :code)
    end


end
