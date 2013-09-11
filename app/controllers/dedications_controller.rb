class DedicationsController < ApplicationController
  before_action :set_dedication, only: [:show]
  before_action :set_book



  # GET /dedications/1
  # GET /dedications/1.json
  def show
    @dedication = Dedication.find(params[:id])
  end

  # GET /dedications/new
  def new
    @dedication = @book.dedications.build
  end



  # POST /dedications
  # POST /dedications.json
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
