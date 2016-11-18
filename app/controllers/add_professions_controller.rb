class AddProfessionsController < ApplicationController
  before_action :set_add_profession, only: [:show, :edit, :update, :destroy]

  # GET /add_professions
  # GET /add_professions.json
  def index
    @add_professions = AddProfession.all
  end

  # GET /add_professions/1
  # GET /add_professions/1.json
  def show
  end

  # GET /add_professions/new
  def new
    @add_profession = AddProfession.new
  end

  # GET /add_professions/1/edit
  def edit
  end

  # POST /add_professions
  # POST /add_professions.json
  def create
    @add_profession = AddProfession.new(add_profession_params)

    respond_to do |format|
      if @add_profession.save
        format.html { redirect_to @add_profession, notice: 'Add profession was successfully created.' }
        format.json { render :show, status: :created, location: @add_profession }
      else
        format.html { render :new }
        format.json { render json: @add_profession.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /add_professions/1
  # PATCH/PUT /add_professions/1.json
  def update
    respond_to do |format|
      if @add_profession.update(add_profession_params)
        format.html { redirect_to @add_profession, notice: 'Add profession was successfully updated.' }
        format.json { render :show, status: :ok, location: @add_profession }
      else
        format.html { render :edit }
        format.json { render json: @add_profession.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /add_professions/1
  # DELETE /add_professions/1.json
  def destroy
    @add_profession.destroy
    respond_to do |format|
      format.html { redirect_to add_professions_url, notice: 'Add profession was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_add_profession
      @add_profession = AddProfession.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def add_profession_params
      params.require(:add_profession).permit(:add_id, :profession_id, :qty)
    end
end
