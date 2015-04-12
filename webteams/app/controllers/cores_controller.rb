class CoresController < ApplicationController
  before_action :set_cor, only: [:show, :edit, :update, :destroy]

  # GET /cores
  # GET /cores.json
  def index
    @cores = Cor.all
  end

  # GET /cores/1
  # GET /cores/1.json
  def show
  end

  # GET /cores/new
  def new
    @cor = Cor.new
  end

  # GET /cores/1/edit
  def edit
  end

  # POST /cores
  # POST /cores.json
  def create
    @cor = Cor.new(cor_params)

    respond_to do |format|
      if @cor.save
        format.html { redirect_to @cor, notice: 'Cor was successfully created.' }
        format.json { render :show, status: :created, location: @cor }
      else
        format.html { render :new }
        format.json { render json: @cor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cores/1
  # PATCH/PUT /cores/1.json
  def update
    respond_to do |format|
      if @cor.update(cor_params)
        format.html { redirect_to @cor, notice: 'Cor was successfully updated.' }
        format.json { render :show, status: :ok, location: @cor }
      else
        format.html { render :edit }
        format.json { render json: @cor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cores/1
  # DELETE /cores/1.json
  def destroy
    @cor.destroy
    respond_to do |format|
      format.html { redirect_to cores_url, notice: 'Cor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cor
      @cor = Cor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cor_params
      params.require(:cor).permit(:nome, :hexadecimal)
    end
end
