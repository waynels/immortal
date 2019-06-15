class HutsController < ApplicationController
  before_action :set_hut, only: [:show, :edit, :update, :destroy]

  # GET /huts
  # GET /huts.json
  def index
    @huts = Hut.all
  end

  # GET /huts/1
  # GET /huts/1.json
  def show
  end

  # GET /huts/new
  def new
    @hut = Hut.new
  end

  # GET /huts/1/edit
  def edit
  end

  # POST /huts
  # POST /huts.json
  def create
    @hut = Hut.new(hut_params)

    respond_to do |format|
      if @hut.save
        format.html { redirect_to huts_url, notice: 'Hut was successfully created.' }
        format.json { render :show, status: :created, location: @hut }
      else
        format.html { render :new }
        format.json { render json: @hut.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /huts/1
  # PATCH/PUT /huts/1.json
  def update
    respond_to do |format|
      if @hut.update(hut_params)
        format.html { redirect_to huts_url, notice: 'Hut was successfully updated.' }
        format.json { render :show, status: :ok, location: @hut }
      else
        format.html { render :edit }
        format.json { render json: @hut.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /huts/1
  # DELETE /huts/1.json
  def destroy
    @hut.destroy
    respond_to do |format|
      format.html { redirect_to huts_url, notice: 'Hut was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hut
      @hut = Hut.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hut_params
      params.require(:hut).permit(:name, :level)
    end
end
