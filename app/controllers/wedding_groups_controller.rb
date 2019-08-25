class WeddingGroupsController < ApplicationController
   before_action :set_wedding_group, only: [:edit, :update]

  def login
    if params[:wedding_group] && params[:wedding_group][:id]
      @wedding_group = WeddingGroup.find(params[:wedding_group][:id])
      if (params[:password] == @wedding_group.password)
        session[:wgid] = @wedding_group.id
        redirect_to rsvp_update_url, success: 'Du hast dich erfolgreich angemeldet.'
      else
        redirect_to rsvp_login_url, alert: 'Das Passwort scheint falsch, schau in deiner Einladung nach.'
      end
    else
      @wedding_groups = WeddingGroup.all.order(:name)
    end
  end

  def edit
  end

  def update
    respond_to do |format|
      if @wedding_group.update(wedding_group_params)
        format.html { redirect_to '/rsvp/update', success: 'Eure Angaben wurden erfolgreich gespeichert, und ihr könnt sie jederzeit ändern.' }
      else
        format.html { render :edit }
      end
    end
  end

  def logout
    session[:wgid] = nil
    redirect_to :root, success: 'Du hast dich erfolgreich abgemeldet.'
  end

  private
    def set_wedding_group
      if session[:wgid]
        @wedding_group = WeddingGroup.find session[:wgid]
      else
        raise ActionController::RoutingError.new('Not Found')
      end
    end

    def wedding_group_params
      params.require(:wedding_group).permit(:comment, wedding_guests_attributes: [:id, :name, :accepted])
    end
end
