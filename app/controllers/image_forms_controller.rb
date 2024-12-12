class ImageFormsController < ApplicationController
  before_action :set_image_form, only: %i[ show edit update destroy ]

  # GET /image_forms or /image_forms.json
  def index
    @image_forms = ImageForm.all
  end

  # GET /image_forms/1 or /image_forms/1.json
  def show
  end

  # GET /image_forms/new
  def new
    @image_form = ImageForm.new
  end

  # GET /image_forms/1/edit
  def edit
  end

  # POST /image_forms or /image_forms.json
  def create
    @image_form = ImageForm.new(image_form_params)

    respond_to do |format|
      if @image_form.save
        format.html { redirect_to @image_form, notice: "Image form was successfully created." }
        format.json { render :show, status: :created, location: @image_form }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @image_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /image_forms/1 or /image_forms/1.json
  def update
    respond_to do |format|
      if @image_form.update(image_form_params)
        format.html { redirect_to @image_form, notice: "Image form was successfully updated." }
        format.json { render :show, status: :ok, location: @image_form }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @image_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /image_forms/1 or /image_forms/1.json
  def destroy
    @image_form.destroy!

    respond_to do |format|
      format.html { redirect_to image_forms_path, status: :see_other, notice: "Image form was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_image_form
      @image_form = ImageForm.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def image_form_params
      params.require(:image_form).permit(:name, :description)
    end
end
