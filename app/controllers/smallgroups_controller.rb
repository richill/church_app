class SmallgroupsController < ApplicationController
  before_action :set_smallgroup, only: [:show, :edit, :update, :destroy]

  # GET /smallgroups
  # GET /smallgroups.json
  def index
    @smallgroups = Smallgroup.all
  end

  # GET /smallgroups/1
  # GET /smallgroups/1.json
  def show
  end

  # GET /smallgroups/new
  def new
    @smallgroup = Smallgroup.new
  end

  # GET /smallgroups/1/edit
  def edit
  end

  # POST /smallgroups
  # POST /smallgroups.json
  def create
    @smallgroup = Smallgroup.new(smallgroup_params)

    respond_to do |format|
      if @smallgroup.save
        format.html { redirect_to @smallgroup, notice: 'Smallgroup was successfully created.' }
        format.json { render :show, status: :created, location: @smallgroup }
      else
        format.html { render :new }
        format.json { render json: @smallgroup.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /smallgroups/1
  # PATCH/PUT /smallgroups/1.json
  def update
    respond_to do |format|
      if @smallgroup.update(smallgroup_params)
        format.html { redirect_to @smallgroup, notice: 'Smallgroup was successfully updated.' }
        format.json { render :show, status: :ok, location: @smallgroup }
      else
        format.html { render :edit }
        format.json { render json: @smallgroup.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /smallgroups/1
  # DELETE /smallgroups/1.json
  def destroy
    @smallgroup.destroy
    respond_to do |format|
      format.html { redirect_to smallgroups_url, notice: 'Smallgroup was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_smallgroup
      @smallgroup = Smallgroup.friendly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def smallgroup_params
      params.require(:smallgroup).permit(:name, :descriptin, :image, :address, :postcode)
    end
end
