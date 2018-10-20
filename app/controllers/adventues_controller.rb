class AdventuesController < ApplicationController
  before_action :set_adventue, only: [:show, :edit, :update, :destroy]

  # GET /adventues
  # GET /adventues.json
  def index
    @adventues = Adventue.all
  end

  # GET /adventues/1
  # GET /adventues/1.json
  def show
  end

  # GET /adventues/new
  def new
    @adventue = Adventue.new
  end

  # GET /adventues/1/edit
  def edit
  end

  # POST /adventues
  # POST /adventues.json
  def create
    @adventue = Adventue.new(adventue_params)

    respond_to do |format|
      if @adventue.save
        format.html { redirect_to @adventue, notice: 'Adventue was successfully created.' }
        format.json { render :show, status: :created, location: @adventue }
      else
        format.html { render :new }
        format.json { render json: @adventue.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /adventues/1
  # PATCH/PUT /adventues/1.json
  def update
    respond_to do |format|
      if @adventue.update(adventue_params)
        format.html { redirect_to @adventue, notice: 'Adventue was successfully updated.' }
        format.json { render :show, status: :ok, location: @adventue }
      else
        format.html { render :edit }
        format.json { render json: @adventue.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /adventues/1
  # DELETE /adventues/1.json
  def destroy
    @adventue.destroy
    respond_to do |format|
      format.html { redirect_to adventues_url, notice: 'Adventue was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_adventue
      @adventue = Adventue.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def adventue_params
      params.require(:adventue).permit(:carla)
    end
end
