class FrameworksController < ApplicationController
  before_action :set_framework, only: [:show, :edit, :update, :destroy]

  # GET /frameworks
  # GET /frameworks.json
  def index
    @frameworks = Framework.all.with_associations(:content_sources)
  end

  # GET /frameworks/1
  # GET /frameworks/1.json
  def show
    @tags = @framework.tag_children(params[:tag_id])
    @content_items = @framework.content_items_for_tag(params[:tag_id])
  end

  # GET /frameworks/new
  def new
    @framework = Framework.new
  end

  # GET /frameworks/1/edit
  def edit
  end

  # POST /frameworks
  # POST /frameworks.json
  def create
    @framework = Framework.new(framework_params)

    respond_to do |format|
      if @framework.save
        format.html { redirect_to @framework, notice: 'Framework was successfully created.' }
        format.json { render :show, status: :created, location: @framework }
      else
        format.html { render :new }
        format.json { render json: @framework.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /frameworks/1
  # PATCH/PUT /frameworks/1.json
  def update
    respond_to do |format|
      if @framework.update(framework_params)
        format.html { redirect_to @framework, notice: 'Framework was successfully updated.' }
        format.json { render :show, status: :ok, location: @framework }
      else
        format.html { render :edit }
        format.json { render json: @framework.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /frameworks/1
  # DELETE /frameworks/1.json
  def destroy
    @framework.destroy
    respond_to do |format|
      format.html { redirect_to frameworks_url, notice: 'Framework was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_framework
      @framework = Framework.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def framework_params
      params.require(:framework).permit(:title)
    end
end
