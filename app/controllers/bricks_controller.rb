class BricksController < ApplicationController

  def index
    @bricks = Brick.all

    dummy_bricks = [
        Brick.new(name: 'Pink', message: "I'm a pink brick, aren't I pretty?", colour: 'pink'),
        Brick.new(name: 'Orange', message: "I'm a orange brick, aren't I pretty?", colour: 'orange'),
        Brick.new(name: 'Red', message: "I'm a red brick, aren't I pretty?", colour: 'red'),
        Brick.new(name: 'Yellow', message: "I'm a yellow brick, all ready for a road", colour: 'yellow'),
        Brick.new(name: 'Green', message: "I'm a green brick, there are millions like me", colour: 'green'),
        Brick.new(name: 'Blue', message: "I'm a blue brick, aren't I pretty?", colour: 'blue')
      ]
   4.times { @bricks += dummy_bricks }
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
