class FeaturesController < ApplicationController
  def index
    @features = @user.features
  end
end
