class SnippetsController < ApplicationController

  def new
  end

  def create
    render text: params[:snippet].inspect
  end

end
