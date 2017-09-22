class IterationsController < ApplicationController
  before_action :set_iteration, only: [:show, :edit, :update, :destroy]

  # GET /iterations
  # GET /iterations.json
  def index
    @iterations = Iteration.all
  end

  # GET /iterations/1
  # GET /iterations/1.json
  def show
  end

  # GET /iterations/new
  def new
    @iteration = Iteration.new
  end

  # GET /iterations/1/edit
  def edit
  end

  # POST /iterations
  # POST /iterations.json
  def create
    @iteration = Iteration.new(iteration_params)

    respond_to do |format|
      if @iteration.save
        format.html { redirect_to @iteration, notice: 'Iteration was successfully created.' }
        format.json { render :show, status: :created, location: @iteration }
      else
        format.html { render :new }
        format.json { render json: @iteration.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /iterations/1
  # PATCH/PUT /iterations/1.json
  def update
    respond_to do |format|
      if @iteration.update(iteration_params)
        format.html { redirect_to @iteration, notice: 'Iteration was successfully updated.' }
        format.json { render :show, status: :ok, location: @iteration }
      else
        format.html { render :edit }
        format.json { render json: @iteration.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /iterations/1
  # DELETE /iterations/1.json
  def destroy
    @iteration.destroy
    respond_to do |format|
      format.html { redirect_to iterations_url, notice: 'Iteration was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_iteration
      @iteration = Iteration.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def iteration_params
      params.require(:iteration).permit(:start_date, :end_date)
    end

    def generate_match
      sql = "id NOT IN (
               select id from annkissamers 
               inner join matches
                 on annkissamers.id = matches.ak_1_id 
                 OR on annkissamers.id = matches.ak_2_id)
                   and match.iteration_id = '#{@iteration.id}' 
              )"

      unmatched = ::Annkissamer.where(sql)
      matched = [unmatched.delete_at(rand(array.length)), unmatched.delete_at(rand(array.length))]

      match.create(iteration_id: @iteration.id, ak_1_id: matched[0].id, ak_2_id: matched[1].id)
    end
end
