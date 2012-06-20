class MeasuresController < ApplicationController
  def index
    redirect_to measure_url( @user.measures.first)
  end

  def show
    @measure = Measure.find(params[:id])
    @value = Value.new
  end

  def new
    @measure = Measure.new
  end

  def new
    @measure = Measure.new
  end

  def create
    @measure = @user.measures.build(params[:measure])
    if @measure.save
      redirect_to measure_url(@measure)
    else
      render :new
    end
  end

  def add_value_to
    @measure = Measure.find(params[:id])
    @value = Value.new(params[:value])
    if @measure.values << @value
      redirect_to measure_url(@measure)
    else
      render :show
    end    
  end

  def values_of
    @measure = Measure.find(params[:id])
    render :json => @measure.values
  end
end
