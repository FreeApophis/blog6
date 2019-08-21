class WeddingGroupsController < ApplicationController
  before_action :set_wedding_group, only: [:show, :edit, :update, :destroy]

  def index
    @wedding_groups = WeddingGroup.all
  end

  def show
  end

  def edit
  end

  def update
    respond_to do |format|
      if @wedding_group.update(wedding_group_params)
        format.html { redirect_to @wedding_group, notice: 'Wedding group was successfully updated.' }
        format.json { render :show, status: :ok, location: @wedding_group }
      else
        format.html { render :edit }
        format.json { render json: @wedding_group.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @wedding_group.destroy
    respond_to do |format|
      format.html { redirect_to wedding_groups_url, notice: 'Wedding group was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_wedding_group
      @wedding_group = WeddingGroup.find(params[:id])
    end

    def wedding_group_params
      params.require(:wedding_group).permit(:name, :password)
    end
end
