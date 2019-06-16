class DocumentationsController < ApplicationController
  before_action :set_documentation, only: [:show, :edit, :update, :destroy]

  def index
    @documentations = Documentation.all
  end

  def show
  end

  def new
    @documentation = Documentation.new
  end

  def edit
  end

  def create
    @documentation = Documentation.new(documentation_params)

    respond_to do |format|
      if @documentation.save
        format.html { redirect_to @documentation, notice: 'Documentation was successfully created.' }
        format.json { render :show, status: :created, location: @documentation }
      else
        format.html { render :new }
        format.json { render json: @documentation.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @documentation.update(documentation_params)
        format.html { redirect_to @documentation, notice: 'Documentation was successfully updated.' }
        format.json { render :show, status: :ok, location: @documentation }
      else
        format.html { render :edit }
        format.json { render json: @documentation.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @documentation.destroy
    respond_to do |format|
      format.html { redirect_to documentations_url, notice: 'Documentation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_documentation
      @documentation = Documentation.find(params[:id])
    end

    def documentation_params
      params.require(:documentation).permit(:title, :content, :user_id)
    end
end
