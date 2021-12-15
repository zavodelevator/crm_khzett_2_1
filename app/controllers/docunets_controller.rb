class DocunetsController < ApplicationController
  before_action :set_docunet, only: %i[ show edit update destroy ]

  # GET /docunets or /docunets.json
  def index
    @docunets = Docunet.all
  end

  # GET /docunets/1 or /docunets/1.json
  def show
  end

  # GET /docunets/new
  def new
    @docunet = Docunet.new
  end

  # GET /docunets/1/edit
  def edit
  end

  # POST /docunets or /docunets.json
  def create
    @docunet = Docunet.new(docunet_params)

    respond_to do |format|
      if @docunet.save
        format.html { redirect_to @docunet, notice: "Docunet was successfully created." }
        format.json { render :show, status: :created, location: @docunet }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @docunet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /docunets/1 or /docunets/1.json
  def update
    respond_to do |format|
      if @docunet.update(docunet_params)
        format.html { redirect_to @docunet, notice: "Docunet was successfully updated." }
        format.json { render :show, status: :ok, location: @docunet }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @docunet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /docunets/1 or /docunets/1.json
  def destroy
    @docunet.destroy
    respond_to do |format|
      format.html { redirect_to docunets_url, notice: "Docunet was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_docunet
      @docunet = Docunet.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def docunet_params
      params.require(:docunet).permit(:name_document, :second_column, :note)
    end
end
