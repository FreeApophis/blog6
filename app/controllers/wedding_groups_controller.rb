class WeddingGroupsController < ApplicationController
   before_action :set_wedding_group, only: [:edit, :update]

  def login
    @wedding_groups = WeddingGroup.all
  end

  def edit
  end

  def update
    respond_to do |format|
      if @wedding_group.update(wedding_group_params)
        format.html { redirect_to '/rsvp/update', notice: 'Eure angaben wurden erfolgreich gespeichert, und ihr könnt sie jederzeit ändern.' }
      else
        format.html { render :edit }
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
      @wedding_group = WeddingGroup.first
    end

    def wedding_group_params
      params.require(:wedding_group).permit(:comment, wedding_guests_attributes: [:id, :name, :accepted])
    end
end
