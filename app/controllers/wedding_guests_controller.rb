class WeddingGuestsController < ApplicationController
  before_action :set_wedding_guest, only: [:show, :edit, :update, :destroy]

  # GET /wedding_guests
  # GET /wedding_guests.json
  def index
    @wedding_guests = WeddingGuest.all
  end

  # GET /wedding_guests/1
  # GET /wedding_guests/1.json
  def show
  end

  # GET /wedding_guests/new
  def new
    @wedding_guest = WeddingGuest.new
  end

  # GET /wedding_guests/1/edit
  def edit
  end

  # POST /wedding_guests
  # POST /wedding_guests.json
  def create
    @wedding_guest = WeddingGuest.new(wedding_guest_params)

    respond_to do |format|
      if @wedding_guest.save
        format.html { redirect_to @wedding_guest, notice: 'Wedding guest was successfully created.' }
        format.json { render :show, status: :created, location: @wedding_guest }
      else
        format.html { render :new }
        format.json { render json: @wedding_guest.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /wedding_guests/1
  # PATCH/PUT /wedding_guests/1.json
  def update
    respond_to do |format|
      if @wedding_guest.update(wedding_guest_params)
        format.html { redirect_to @wedding_guest, notice: 'Wedding guest was successfully updated.' }
        format.json { render :show, status: :ok, location: @wedding_guest }
      else
        format.html { render :edit }
        format.json { render json: @wedding_guest.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wedding_guests/1
  # DELETE /wedding_guests/1.json
  def destroy
    @wedding_guest.destroy
    respond_to do |format|
      format.html { redirect_to wedding_guests_url, notice: 'Wedding guest was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wedding_guest
      @wedding_guest = WeddingGuest.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def wedding_guest_params
      params.require(:wedding_guest).permit(:user_id, :name)
    end
end
