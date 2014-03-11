class DesignsController < ApplicationController
  def index
    @designs = Design.all
  end

  def create
    @design = Design.new
    respond_to do |format|
      if @design.save
        format.html { redirect_to @design, notice: 'Design was successfully created.' }
        format.json { render action: 'show', status: :created, location: @design }
      else
        format.html { render action: 'new' }
        format.json { render json: @design.errors, status: :unprocessable_entity }
      end
    end
  end

  def new
    @design = Design.new
  end

  def show
  end

  def destroy
    @design.destroy
    respond_to do |format|
      format.html { redirect_to design_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_design
      @design = Design.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def design_params
      params.require(:design).permit(:design_role, :design_type, :desigh_subtype, :connection_type)
    end
end