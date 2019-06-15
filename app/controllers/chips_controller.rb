class ChipsController < ApplicationController
  before_action :authenticate_user!

  # GET /chips
  # GET /chips.json
  def index
    @chips = current_user.chips
  end

  # GET /chips/edit
  def edit
    shikigami_ids = Shikigami.showed.pluck(:id)
    @chips = []
    shikigami_ids.each do |shikigami_id|
      @chips << current_user.chips.find_or_create_by(shikigami_id: shikigami_id)
    end
  end

  # POST /chips
  # POST /chips.json
  def create    
    params.require(:chip).each do |obj|
      chip = Chip.find_or_initialize_by(user_id: current_user.id, shikigami_id: obj[:shikigami_id])
      chip.update(chip_params(obj))
    end
    redirect_to chips_url, notice: 'Chip was successfully created.'
  end

  # DELETE /chips/1
  # DELETE /chips/1.json
  def destroy
    @chip = Chip.find(params[:id])
    @chip.destroy
    respond_to do |format|
      format.html { redirect_to chips_url, notice: 'Chip was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    # Never trust parameters from the scary internet, only allow the white list through.
    def chip_params(chip)
      chip.permit(:user_id, :shikigami_id, :amount, :status)
    end
end
