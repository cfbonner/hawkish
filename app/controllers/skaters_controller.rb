# frozen_string_literal: true

class SkatersController < ApplicationController
  def index
    @skaters = Skater.all
  end

  def new
    @skater = Skater.new
  end

  def create
    @skater = Skater.create(skater_params)
    if @skater.save
      redirect_to skater_path(@skater), success: 'Nice, skater'
    else
      render :new
      flash.now[:alert] = 'No good, skater.'
    end
  end

  def edit
    @skater = Skater.find(params[:id])
  end

  def update
    @skater = Skater.find(params[:id])
    @skater.update(skater_params)
    if @skater.save
      redirect_to skater_path(@skater), success: 'Nice, skater'
    else
      render :edit
      flash.now[:alert] = 'No good, skater.'
    end
  end

  def show
    @skater = Skater.find(params[:id])
  end

  private 

  def skater_params
    params.require(:skater).permit(:name, :status, moves: [])
  end
end
