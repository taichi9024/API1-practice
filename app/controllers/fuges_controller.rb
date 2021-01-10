class FugesController < ApplicationController
  before_action :set_fuge, only: [:show, :edit, :update, :destroy]

  # GET /fuges
  # GET /fuges.json
  def index
    @fuges = Fuge.all
  end

  # GET /fuges/1
  # GET /fuges/1.json
  def show
  end

  # GET /fuges/new
  def new
    @fuge = Fuge.new
  end

  # GET /fuges/1/edit
  def edit
  end

  # POST /fuges
  # POST /fuges.json
  def create
    @fuge = Fuge.new(fuge_params)

    respond_to do |format|
      if @fuge.save
        format.html { redirect_to @fuge, notice: 'Fuge was successfully created.' }
        format.json { render :show, status: :created, location: @fuge }
      else
        format.html { render :new }
        format.json { render json: @fuge.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fuges/1
  # PATCH/PUT /fuges/1.json
  def update
    respond_to do |format|
      if @fuge.update(fuge_params)
        format.html { redirect_to @fuge, notice: 'Fuge was successfully updated.' }
        format.json { render :show, status: :ok, location: @fuge }
      else
        format.html { render :edit }
        format.json { render json: @fuge.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fuges/1
  # DELETE /fuges/1.json
  def destroy
    @fuge.destroy
    respond_to do |format|
      format.html { redirect_to fuges_url, notice: 'Fuge was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fuge
      @fuge = Fuge.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def fuge_params
      params.require(:fuge).permit(:title, :body)
    end
end
