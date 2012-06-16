class FeaturesController < ApplicationController
  def index
    @features = @user.features
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
end
