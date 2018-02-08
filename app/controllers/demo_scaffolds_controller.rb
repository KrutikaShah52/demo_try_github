class DemoScaffoldsController < ApplicationController
  before_action :set_demo_scaffold, only: [:show, :edit, :update, :destroy]

  # GET /demo_scaffolds
  # GET /demo_scaffolds.json
  def index
    @demo_scaffolds = DemoScaffold.all
  end

  # GET /demo_scaffolds/1
  # GET /demo_scaffolds/1.json
  def show
  
  end

  # GET /demo_scaffolds/new
  def new
    @demo_scaffold = DemoScaffold.new
  end

  # GET /demo_scaffolds/1/edit
  def edit
  end

  # POST /demo_scaffolds
  # POST /demo_scaffolds.json
  def create
    @demo_scaffold = DemoScaffold.new(demo_scaffold_params)

    respond_to do |format|
      if @demo_scaffold.save
        format.html { redirect_to @demo_scaffold, notice: 'Demo scaffold was successfully created.' }
        format.json { render :show, status: :created, location: @demo_scaffold }
      else
        format.html { render :new }
        format.json { render json: @demo_scaffold.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /demo_scaffolds/1
  # PATCH/PUT /demo_scaffolds/1.json
  def update
    respond_to do |format|
      if @demo_scaffold.update(demo_scaffold_params)
        format.html { redirect_to @demo_scaffold, notice: 'Demo scaffold was successfully updated.' }
        format.json { render :show, status: :ok, location: @demo_scaffold }
      else
        format.html { render :edit }
        format.json { render json: @demo_scaffold.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /demo_scaffolds/1
  # DELETE /demo_scaffolds/1.json
  def destroy
    @demo_scaffold.destroy
    respond_to do |format|
      format.html { redirect_to demo_scaffolds_url, notice: 'Demo scaffold was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_demo_scaffold
      @demo_scaffold = DemoScaffold.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def demo_scaffold_params
      params.require(:demo_scaffold).permit(:name)
    end
end
