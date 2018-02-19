class PatronGroupsController < ApplicationController
  before_action :set_patron_group, only: [:show, :edit, :update, :destroy]

  # GET /patron_groups
  # GET /patron_groups.json
  def index
    @patron_groups = PatronGroup.all
  end

  # GET /patron_groups/1
  # GET /patron_groups/1.json
  def show
  end

  # GET /patron_groups/new
  def new
    @patron_group = PatronGroup.new
  end

  # GET /patron_groups/1/edit
  def edit
  end

  # POST /patron_groups
  # POST /patron_groups.json
  def create
    @patron_group = PatronGroup.new(patron_group_params)

    respond_to do |format|
      if @patron_group.save
        format.html { redirect_to @patron_group, notice: 'Patron group was successfully created.' }
        format.json { render :show, status: :created, location: @patron_group }
      else
        format.html { render :new }
        format.json { render json: @patron_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /patron_groups/1
  # PATCH/PUT /patron_groups/1.json
  def update
    respond_to do |format|
      if @patron_group.update(patron_group_params)
        format.html { redirect_to @patron_group, notice: 'Patron group was successfully updated.' }
        format.json { render :show, status: :ok, location: @patron_group }
      else
        format.html { render :edit }
        format.json { render json: @patron_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /patron_groups/1
  # DELETE /patron_groups/1.json
  def destroy
    @patron_group.destroy
    respond_to do |format|
      format.html { redirect_to patron_groups_url, notice: 'Patron group was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_patron_group
      @patron_group = PatronGroup.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def patron_group_params
      params.require(:patron_group).permit(:patron_group_id, :patron_group_code, :patron_group_name, :patron_group_display)
    end
end
