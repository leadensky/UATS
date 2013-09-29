class TimecardCategoriesController < ActionController::Base
  before_action :set_timecardCategory, only: [:show, :edit, :update, :destroy]

  def index
    @categories = TimecardCategory.all
  end

  def show

  end

  def new
    @category = TimecardCategory.new
  end


  def edit
    @category = TimecardCategory.find(params[:id])
  end

  def create
    @category = TimecardCategory.new(timecardCategory_params)

    respond_to do |format|
      if @category.save
        format.html { redirect_to @category, notice: 'TimecardCategory was successfully created.' }
        format.json { render action: 'show', status: :created, location: @category }
      else
        format.html { render action: 'new' }
        format.json { render json: @category.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @category.update(timecardCategory_params)
        format.html { redirect_to @category, notice: 'TimecardCategory was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /projects/1
  # DELETE /projects/1.json
  def destroy
    @category.destroy
    respond_to do |format|
      format.html { redirect_to timecard_categories_url }
      format.json { head :no_content }
    end
  end


  private
  # Use callbacks to share common setup or constraints between actions.
  def set_timecardCategory
    @category = TimecardCategory.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def timecardCategory_params
    params.require(:timecard_category).permit(:name, :description)
  end

end