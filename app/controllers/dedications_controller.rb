class DedicationsController < ApplicationController
  before_action :set_dedication, only: [:show, :edit, :update, :destroy]
  before_action :set_book

  def show
    @dedication = Dedication.find(params[:id])
  end

  def new
    @dedication = @book.dedications.build
  end

  def create
    @dedication = @book.dedications.build(dedication_params)

    respond_to do |format|
      if @dedication.save
        format.html { redirect_to [@book, @dedication], notice: 'Dedication was successfully created.' }
        format.json { render action: 'show', status: :created, location: @dedication }
      else
        format.html { render action: 'new' }
        format.json { render json: @dedication.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
    @dedication = Dedication.find(params[:id])
  end

  def update
    @dedication = Dedication.find(params[:id])

    respond_to do |format|
      if @dedication.update_attributes(dedication_params)
        format.html { redirect_to [@book, @dedication], notice: 'Dedication was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @dedication.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @dedication = Dedication.find(params[:id])
    @dedication.destroy

    respond_to do |format|
      format.html { redirect_to book_url }
      format.json { head :no_content }
    end
  end





  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dedication
      @dedication = Dedication.find(params[:id])
    end

    def set_book
      @book = Book.find(params[:book_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dedication_params
      params.require(:dedication).permit(:words)
    end
end
