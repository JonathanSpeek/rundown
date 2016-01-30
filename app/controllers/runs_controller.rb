class RunsController < ApplicationController
  before_action :find_run, only: [:show, :edit, :update, :destroy]
  def index

  end

  def show
  end

  def new
    @run = Run.new
  end

  def create
    @run = Run.new(run_params)
    if @run.save
      redirect_to @run
    else
      render 'new'
    end
  end

  def edit

  end

  def update

  end

  def destroy

  end

  private

  def run_params
    params.require(:run).permit(:date, :distance, :pace, :mood)
  end

  def find_run
    @run = Run.find(params[:id])
  end
end
