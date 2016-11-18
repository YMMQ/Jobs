class TDegreesController < ApplicationController
  before_action :set_t_degree, only: [:show, :edit, :update, :destroy]

  # GET /t_degrees
  # GET /t_degrees.json
  def index
    @t_degrees = TDegree.all
  end

  # GET /t_degrees/1
  # GET /t_degrees/1.json
  def show
  end

  # GET /t_degrees/new
  def new
    @t_degree = TDegree.new
  end

  # GET /t_degrees/1/edit
  def edit
  end

  # POST /t_degrees
  # POST /t_degrees.json
  def create
    @t_degree = TDegree.new(t_degree_params)

    respond_to do |format|
      if @t_degree.save
        format.html { redirect_to @t_degree, notice: 'T degree was successfully created.' }
        format.json { render :show, status: :created, location: @t_degree }
      else
        format.html { render :new }
        format.json { render json: @t_degree.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /t_degrees/1
  # PATCH/PUT /t_degrees/1.json
  def update
    respond_to do |format|
      if @t_degree.update(t_degree_params)
        format.html { redirect_to @t_degree, notice: 'T degree was successfully updated.' }
        format.json { render :show, status: :ok, location: @t_degree }
      else
        format.html { render :edit }
        format.json { render json: @t_degree.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /t_degrees/1
  # DELETE /t_degrees/1.json
  def destroy
    @t_degree.destroy
    respond_to do |format|
      format.html { redirect_to t_degrees_url, notice: 'T degree was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_t_degree
      @t_degree = TDegree.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def t_degree_params
      params.require(:t_degree).permit(:name)
    end
end
