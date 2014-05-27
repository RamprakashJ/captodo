class CaptodosController < ApplicationController
  before_action :set_captodo, only: [:show, :edit, :update, :destroy]

  # GET /captodos
  # GET /captodos.json
  def index
    @captodos = Captodo.all
  end

  # GET /captodos/1
  # GET /captodos/1.json
  def show
  end

  # GET /captodos/new
  def new
    @captodo = Captodo.new
  end

  # GET /captodos/1/edit
  def edit
  end

  # POST /captodos
  # POST /captodos.json
  def create
    @captodo = Captodo.new(captodo_params)

    respond_to do |format|
      if @captodo.save
        format.html { redirect_to @captodo, notice: 'Captodo was successfully created.' }
        format.json { render :show, status: :created, location: @captodo }
      else
        format.html { render :new }
        format.json { render json: @captodo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /captodos/1
  # PATCH/PUT /captodos/1.json
  def update
    respond_to do |format|
      if @captodo.update(captodo_params)
        format.html { redirect_to @captodo, notice: 'Captodo was successfully updated.' }
        format.json { render :show, status: :ok, location: @captodo }
      else
        format.html { render :edit }
        format.json { render json: @captodo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /captodos/1
  # DELETE /captodos/1.json
  def destroy
    @captodo.destroy
    respond_to do |format|
      format.html { redirect_to captodos_url, notice: 'Captodo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_captodo
      @captodo = Captodo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def captodo_params
      params.require(:captodo).permit(:name, :finished)
    end
end
