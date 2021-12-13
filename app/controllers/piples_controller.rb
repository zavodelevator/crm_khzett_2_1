class PiplesController < ApplicationController
  before_action :set_piple, only: %i[ show edit update destroy ]

  # GET /piples or /piples.json
  def index
    @piples = Piple.all
  end

  # GET /piples/1 or /piples/1.json
  def show
  end

  # GET /piples/new
  def new
    @piple = Piple.new
  end

  # GET /piples/1/edit
  def edit
  end

  # POST /piples or /piples.json
  def create
    @piple = Piple.new(piple_params)

    respond_to do |format|
      if @piple.save
        format.html { redirect_to @piple, notice: "Piple was successfully created." }
        format.json { render :show, status: :created, location: @piple }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @piple.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /piples/1 or /piples/1.json
  def update
    respond_to do |format|
      if @piple.update(piple_params)
        format.html { redirect_to @piple, notice: "Piple was successfully updated." }
        format.json { render :show, status: :ok, location: @piple }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @piple.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /piples/1 or /piples/1.json
  def destroy
    @piple.destroy
    respond_to do |format|
      format.html { redirect_to piples_url, notice: "Piple was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_piple
      @piple = Piple.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def piple_params
      params.require(:piple).permit(:first_name, :last_name, :parens_name, :email, :phone, :sex, :beardth_date, :other_date, :customer_id)
    end
end
