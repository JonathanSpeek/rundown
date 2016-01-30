class RunsController < ApplicationController
  before_action :find_run, only: [:show, :edit, :update, :destroy]

  def index
    @runs = Run.all.order('created_at DESC')
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
    if @run.update(run_params)
      redirect_to @run
    else
      render 'edit'
    end
  end

  def destroy
    @run.destroy
    redirect_to root_path
  end

  private

  def run_params
    params.require(:run).permit(:date, :distance, :pace, :mood)
  end

  def find_run
    @run = Run.find(params[:id])
  end
end
