class AscaffoldsController < ApplicationController
  before_action :set_ascaffold, only: [:show, :edit, :update, :destroy]

  # GET /ascaffolds
  # GET /ascaffolds.json
  def index
    @ascaffolds = Ascaffold.all
  end

  # GET /ascaffolds/1
  # GET /ascaffolds/1.json
  def show
  end

  # GET /ascaffolds/new
  def new
    @ascaffold = Ascaffold.new
  end

  # GET /ascaffolds/1/edit
  def edit
  end

  # POST /ascaffolds
  # POST /ascaffolds.json
  def create
    @ascaffold = Ascaffold.new(ascaffold_params)

    respond_to do |format|
      if @ascaffold.save
        format.html { redirect_to @ascaffold, notice: 'Ascaffold was successfully created.' }
        format.json { render :show, status: :created, location: @ascaffold }
      else
        format.html { render :new }
        format.json { render json: @ascaffold.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ascaffolds/1
  # PATCH/PUT /ascaffolds/1.json
  def update
    respond_to do |format|
      if @ascaffold.update(ascaffold_params)
        format.html { redirect_to @ascaffold, notice: 'Ascaffold was successfully updated.' }
        format.json { render :show, status: :ok, location: @ascaffold }
      else
        format.html { render :edit }
        format.json { render json: @ascaffold.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ascaffolds/1
  # DELETE /ascaffolds/1.json
  def destroy
    @ascaffold.destroy
    respond_to do |format|
      format.html { redirect_to ascaffolds_url, notice: 'Ascaffold was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ascaffold
      @ascaffold = Ascaffold.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ascaffold_params
      params[:ascaffold]
    end
end
