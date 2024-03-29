class BidangsController < ApplicationController
  before_action :set_bidang, only: [:show, :edit, :update, :destroy]

  # GET /bidangs
  # GET /bidangs.json
  def index
    @bidangs = Bidang.all
  end

  # GET /bidangs/1
  # GET /bidangs/1.json
  def show
  end

  # GET /bidangs/new
  def new
    @bidang = Bidang.new
  end

  # GET /bidangs/1/edit
  def edit
  end

  # POST /bidangs
  # POST /bidangs.json
  def create
    @bidang = Bidang.new(bidang_params)

    respond_to do |format|
      if @bidang.save
        format.html { redirect_to @bidang, notice: 'Bidang was successfully created.' }
        format.json { render :show, status: :created, location: @bidang }
      else
        format.html { render :new }
        format.json { render json: @bidang.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bidangs/1
  # PATCH/PUT /bidangs/1.json
  def update
    respond_to do |format|
      if @bidang.update(bidang_params)
        format.html { redirect_to @bidang, notice: 'Bidang was successfully updated.' }
        format.json { render :show, status: :ok, location: @bidang }
      else
        format.html { render :edit }
        format.json { render json: @bidang.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bidangs/1
  # DELETE /bidangs/1.json
  def destroy
    @bidang.destroy
    respond_to do |format|
      format.html { redirect_to bidangs_url, notice: 'Bidang was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bidang
      @bidang = Bidang.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bidang_params
      params.require(:bidang).permit(:bidang_id, :bidang_name, :bidang_desc, :result_bidang, :fac_id)
    end
end
