class BricksController < ApplicationController
  def index
    @bricks = Brick.all
  end

  def new
    @brick = Brick.new
  end

  def create
    @brick = Brick.create params[:brick]

  end

  def show
    @brick = Brick.find params[:id]
  end
end
