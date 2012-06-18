class MeasuresController < ApplicationController
  def index
    @measures = @user.measures
  end

  def show
    @measure = Measure.find(params[:id])
    @value = Value.new(:at => Time.now.to_date)
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
      redirect_to measures_url
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
end
