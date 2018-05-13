class LaunchministriesController < ApplicationController
  before_action :set_launchministry, only: [:show, :edit, :update, :destroy]

  # GET /launchministries
  # GET /launchministries.json
  def index
    @launchministries = Launchministry.all
  end

  # GET /launchministries/1
  # GET /launchministries/1.json
  def show
  end

  # GET /launchministries/new
  def new
    @launchministry = Launchministry.new
  end

  # GET /launchministries/1/edit
  def edit
  end

  # POST /launchministries
  # POST /launchministries.json
  def create
    @launchministry = Launchministry.new(launchministry_params)

    respond_to do |format|
      if @launchministry.save
        format.html { redirect_to thank_you_path, notice: 'Launchministry was successfully created.' }
        format.json { render :show, status: :created, location: @launchministry }
      else
        format.html { render :new }
        format.json { render json: @launchministry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /launchministries/1
  # PATCH/PUT /launchministries/1.json
  def update
    respond_to do |format|
      if @launchministry.update(launchministry_params)
        format.html { redirect_to @launchministry, notice: 'Launchministry was successfully updated.' }
        format.json { render :show, status: :ok, location: @launchministry }
      else
        format.html { render :edit }
        format.json { render json: @launchministry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /launchministries/1
  # DELETE /launchministries/1.json
  def destroy
    @launchministry.destroy
    respond_to do |format|
      format.html { redirect_to launchministries_url, notice: 'Launchministry was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def ministriespg
    @launchministries = Launchministry.all
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_launchministry
      @launchministry = Launchministry.friendly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def launchministry_params
      params.require(:launchministry).permit(:firstname, :lastname, :email, :mobile, :homenumber, :worknumber, :address, :city, :postcode, :mininstryidea, :mininstrydescription, :ministryneed, :ministrymission)
    end
end
