class ShikigamisController < ApplicationController
  before_action :set_shikigami, only: [:show, :edit, :update, :destroy]

  # GET /shikigamis
  # GET /shikigamis.json
  def index
    @shikigamis = Shikigami.all
  end

  # GET /shikigamis/1
  # GET /shikigamis/1.json
  def show
  end

  # GET /shikigamis/new
  def new
    @shikigami = Shikigami.new
  end

  # GET /shikigamis/1/edit
  def edit
  end

  # POST /shikigamis
  # POST /shikigamis.json
  def create
    @shikigami = Shikigami.new(shikigami_params)

    respond_to do |format|
      if @shikigami.save
        format.html { redirect_to shikigamis_url, notice: 'Shikigami was successfully created.' }
        format.json { render :show, status: :created, location: @shikigami }
      else
        format.html { render :new }
        format.json { render json: @shikigami.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shikigamis/1
  # PATCH/PUT /shikigamis/1.json
  def update
    respond_to do |format|
      if @shikigami.update(shikigami_params)
        format.html { redirect_to shikigamis_url, notice: 'Shikigami was successfully updated.' }
        format.json { render :show, status: :ok, location: @shikigami }
      else
        format.html { render :edit }
        format.json { render json: @shikigami.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shikigamis/1
  # DELETE /shikigamis/1.json
  def destroy
    @shikigami.destroy
    respond_to do |format|
      format.html { redirect_to shikigamis_url, notice: 'Shikigami was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shikigami
      @shikigami = Shikigami.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def shikigami_params
      params.require(:shikigami).permit(:name, :level, :limited, :show)
    end
end
