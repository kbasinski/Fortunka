class ShoutsController < ApplicationController
  def create
    @fortune = Fortune.find(params[:fortune_id])
    @shout = @fortune.shouts.create(params[:shout])
    redirect_to fortune_path(@fortune)
  end

  def destroy
    @fortune = Fortune.find(params[:fotune_id])
    @shout = @fortune.shouts.find(params[:id])
    @shout.destroy
    redirect_to fortune_path(@fortune)
  end
end
