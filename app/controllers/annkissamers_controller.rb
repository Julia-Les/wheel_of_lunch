class AnnkissamersController < ApplicationController
  before_action :set_annkissamer, only: [:show, :edit, :update, :destroy]

  # GET /annkissamers
  # GET /annkissamers.json
  def index
    @annkissamers = Annkissamer.all
  end

  # GET /annkissamers/1
  # GET /annkissamers/1.json
  def show
  end

  # GET /annkissamers/new
  def new
    @annkissamer = Annkissamer.new
  end

  # GET /annkissamers/1/edit
  def edit
  end

  # POST /annkissamers
  # POST /annkissamers.json
  def create
    @annkissamer = Annkissamer.new(annkissamer_params)

    respond_to do |format|
      if @annkissamer.save
        format.html { redirect_to @annkissamer, notice: 'Annkissamer was successfully created.' }
        format.json { render :show, status: :created, location: @annkissamer }
      else
        format.html { render :new }
        format.json { render json: @annkissamer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /annkissamers/1
  # PATCH/PUT /annkissamers/1.json
  def update
    respond_to do |format|
      if @annkissamer.update(annkissamer_params)
        format.html { redirect_to @annkissamer, notice: 'Annkissamer was successfully updated.' }
        format.json { render :show, status: :ok, location: @annkissamer }
      else
        format.html { render :edit }
        format.json { render json: @annkissamer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /annkissamers/1
  # DELETE /annkissamers/1.json
  def destroy
    @annkissamer.destroy
    respond_to do |format|
      format.html { redirect_to annkissamers_url, notice: 'Annkissamer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_annkissamer
      @annkissamer = Annkissamer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def annkissamer_params
      params.require(:annkissamer).permit(:first_name, :last_name, :email)
    end
end
