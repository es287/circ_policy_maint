class CircPolicyGroupsController < ApplicationController
  before_action :set_circ_policy_group, only: [:show, :edit, :update, :destroy]

  # GET /circ_policy_groups
  # GET /circ_policy_groups.json
  def index
    @circ_policy_groups = CircPolicyGroup.all
  end

  # GET /circ_policy_groups/1
  # GET /circ_policy_groups/1.json
  def show
  end

  # GET /circ_policy_groups/new
  def new
    @circ_policy_group = CircPolicyGroup.new
  end

  # GET /circ_policy_groups/1/edit
  def edit
  end

  # POST /circ_policy_groups
  # POST /circ_policy_groups.json
  def create
    @circ_policy_group = CircPolicyGroup.new(circ_policy_group_params)

    respond_to do |format|
      if @circ_policy_group.save
        format.html { redirect_to @circ_policy_group, notice: 'Circ policy group was successfully created.' }
        format.json { render :show, status: :created, location: @circ_policy_group }
      else
        format.html { render :new }
        format.json { render json: @circ_policy_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /circ_policy_groups/1
  # PATCH/PUT /circ_policy_groups/1.json
  def update
    respond_to do |format|
      if @circ_policy_group.update(circ_policy_group_params)
        format.html { redirect_to @circ_policy_group, notice: 'Circ policy group was successfully updated.' }
        format.json { render :show, status: :ok, location: @circ_policy_group }
      else
        format.html { render :edit }
        format.json { render json: @circ_policy_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /circ_policy_groups/1
  # DELETE /circ_policy_groups/1.json
  def destroy
    @circ_policy_group.destroy
    respond_to do |format|
      format.html { redirect_to circ_policy_groups_url, notice: 'Circ policy group was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_circ_policy_group
      @circ_policy_group = CircPolicyGroup.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def circ_policy_group_params
      params.require(:circ_policy_group).permit(:circ_group_id, :circ_group_name)
    end
end
