class GamesController < ApplicationController
  before_filter :authenticate, :except => [:info]
  def index
    @games = Game.order("score DESC")
  end

  def new
    @game = Game.new
  end

  def create
    @game = current_user.games.create(params[:game])

    respond_to do |format|
      if @game.save
        format.html { redirect_to games_path, notice: 'Score successfully saved.' }
      else
        format.html { render action: "index" }
      end
    end
  end

  def slimeball
    @game = Game.new
    @games = Game.order("score DESC").find_all_by_level("Slimeballs")
  end

  def invasion
    @game = Game.new
    @games = Game.order("score DESC").find_all_by_level("Invasion")
  end

  def greenbug
    @game = Game.new
    @games = Game.order("score DESC").find_all_by_level("Greenbugs at Croker")
  end

  def farmpanic
    @game = Game.new
    @games = Game.order("score DESC").find_all_by_level("Farm Panic")
  end

  def finale
    @game = Game.new
    @games = Game.order("score DESC").find_all_by_level("Final Battle")
  end

  def info
  end
end
