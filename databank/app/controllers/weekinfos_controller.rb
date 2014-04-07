class WeekinfosController < ApplicationController
  before_action :set_weekinfo, only: [:show, :edit, :update, :destroy]

  # GET /weekinfos
  # GET /weekinfos.json
  def index
    @weekinfos = Weekinfo.all
  end

  # GET /weekinfos/1
  # GET /weekinfos/1.json
  def show
  end

  # GET /weekinfos/new
  def new
    @weekinfo = Weekinfo.new
  end

  # GET /weekinfos/1/edit
  def edit
  end

  # POST /weekinfos
  # POST /weekinfos.json
  def create
    @weekinfo = Weekinfo.new(weekinfo_params)

    respond_to do |format|
      if @weekinfo.save
        format.html { redirect_to @weekinfo, notice: 'Weekinfo was successfully created.' }
        format.json { render action: 'show', status: :created, location: @weekinfo }
      else
        format.html { render action: 'new' }
        format.json { render json: @weekinfo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /weekinfos/1
  # PATCH/PUT /weekinfos/1.json
  def update
    respond_to do |format|
      if @weekinfo.update(weekinfo_params)
        format.html { redirect_to @weekinfo, notice: 'Weekinfo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @weekinfo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /weekinfos/1
  # DELETE /weekinfos/1.json
  def destroy
    @weekinfo.destroy
    respond_to do |format|
      format.html { redirect_to weekinfos_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_weekinfo
      @weekinfo = Weekinfo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def weekinfo_params
      params.require(:weekinfo).permit(:from_date)
    end
end
