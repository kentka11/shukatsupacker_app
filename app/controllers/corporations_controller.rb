class CorporationsController < ApplicationController
  before_action :set_category, only: [:show, :edit, :update, :destroy]

  def index
  @q = Corporation.search(search[:q])
    if @q == nil
      redirect_to root_url
    else
      @corporations = @q.result(distinct: true)
    end
  end

  def show
  end
  def new
    @corporation = Corporation.new
  end

  def edit
  end

  # POST /categories
  # POST /categories.json
  def create
    @corporation = Corporation.new(corporation_params)

    respond_to do |format|
      if @corporation.save
        format.html { redirect_to @corporation, notice: 'Corporation was successfully created.' }
        format.json { render :show, status: :created, location: @corporation }
      else
        format.html { render :new }
        format.json { render json: @corporation.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @corporation.update(category_params)
        format.html { redirect_to @corporation, notice: 'Corporation was successfully updated.' }
        format.json { render :show, status: :ok, location: @corporation }
      else
        format.html { render :edit }
        format.json { render json: @corporation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /categories/1
  # DELETE /categories/1.json
  def destroy
    @corporation.destroy
    respond_to do |format|
      format.html { redirect_to corporations_url, notice: 'Corporation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_corporation
      @category = Corporation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def corporation_params
      params.require(:corporation).permit(:name)
    end
end
