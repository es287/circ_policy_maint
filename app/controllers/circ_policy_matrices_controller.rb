class CircPolicyMatricesController < ApplicationController
  before_action :set_circ_policy_matrix, only: [:show, :edit, :update, :destroy]

  # GET /circ_policy_matrices
  # GET /circ_policy_matrices.json
  def index
    @filterrific = initialize_filterrific(
     CircPolicyMatrix,
     params[:filterrific],
     persistence_id: 'shared_key',
     select_options: {
        with_cpg_id: CircPolicyGroup.options_for_select,
        with_pg_id: PatronGroup.options_for_select,
        with_it_id: ItemType.options_for_select
     },
   ) or return
    #@circ_policy_matrices = CircPolicyMatrix.order(:circ_group_id).page params[:page]
    @circ_policy_matrices = @filterrific.find.page(params[:page])


    respond_to do |format|
      format.html
      format.js
    end 

  end

  # GET /circ_policy_matrices/1
  # GET /circ_policy_matrices/1.json
  def show
  end

  # GET /circ_policy_matrices/new
  def new
    @circ_policy_matrix = CircPolicyMatrix.new
  end

  # GET /circ_policy_matrices/1/edit
  def edit
  end

  # POST /circ_policy_matrices
  # POST /circ_policy_matrices.json
  def create
    @circ_policy_matrix = CircPolicyMatrix.new(circ_policy_matrix_params)

    respond_to do |format|
      if @circ_policy_matrix.save
        format.html { redirect_to @circ_policy_matrix, notice: 'Circ policy matrix was successfully created.' }
        format.json { render :show, status: :created, location: @circ_policy_matrix }
      else
        format.html { render :new }
        format.json { render json: @circ_policy_matrix.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /circ_policy_matrices/1
  # PATCH/PUT /circ_policy_matrices/1.json
  def update
    respond_to do |format|
      if @circ_policy_matrix.update(circ_policy_matrix_params)
        format.html { redirect_to @circ_policy_matrix, notice: 'Circ policy matrix was successfully updated.' }
        format.json { render :show, status: :ok, location: @circ_policy_matrix }
      else
        format.html { render :edit }
        format.json { render json: @circ_policy_matrix.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /circ_policy_matrices/1
  # DELETE /circ_policy_matrices/1.json
  def destroy
    @circ_policy_matrix.destroy
    respond_to do |format|
      format.html { redirect_to circ_policy_matrices_url, notice: 'Circ policy matrix was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_circ_policy_matrix
      @circ_policy_matrix = CircPolicyMatrix.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def circ_policy_matrix_params
      params.require(:circ_policy_matrix).permit(:circ_policy_matrix_id,  :patron_group_id,:item_type_id,:circ_group_id,:place_recall,:place_hold,:place_call_slip,:loan_period,:loan_interval,:charge_renew,:page,:filterrific)
    end
end
