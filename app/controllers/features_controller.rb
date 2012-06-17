class FeaturesController < ApplicationController
  def index
    @features = @user.features
  end

  def show
    @feature = Feature.find(params[:id])
    @value = Value.new(:at => Time.now.to_date)
  end

  def new
    @feature = Feature.new
  end

  def new
    @feature = Feature.new
  end

  def create
    @feature = @user.features.build(params[:feature])
    if @feature.save
      redirect_to features_url
    else
      render :new
    end
  end

  def add_value_to
    @feature = Feature.find(params[:id])
    @value = Value.new(params[:value])
    if @feature.values << @value
      redirect_to feature_url(@feature)
    else
      render :show
    end
    
  end
end
