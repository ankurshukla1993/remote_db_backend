class SqlQueriesController < ApplicationController
  before_action :set_sql_query, only: [:show, :edit, :update, :destroy]

  # GET /sql_queries
  # GET /sql_queries.json
  def index
    @sql_queries = SqlQuery.all
  end

  # GET /sql_queries/1
  # GET /sql_queries/1.json
  def show
  end

  # GET /sql_queries/new
  def new
    @sql_query = SqlQuery.new
  end

  # GET /sql_queries/1/edit
  def edit
  end

  # POST /sql_queries
  # POST /sql_queries.json
  def create
    @sql_query = SqlQuery.new(sql_query_params)

    respond_to do |format|
      if @sql_query.save
        format.html { redirect_to @sql_query, notice: 'Sql query was successfully created.' }
        format.json { render :show, status: :created, location: @sql_query }
      else
        format.html { render :new }
        format.json { render json: @sql_query.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sql_queries/1
  # PATCH/PUT /sql_queries/1.json
  def update
    respond_to do |format|
      if @sql_query.update(sql_query_params)
        format.html { redirect_to @sql_query, notice: 'Sql query was successfully updated.' }
        format.json { render :show, status: :ok, location: @sql_query }
      else
        format.html { render :edit }
        format.json { render json: @sql_query.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sql_queries/1
  # DELETE /sql_queries/1.json
  def destroy
    @sql_query.destroy
    respond_to do |format|
      format.html { redirect_to sql_queries_url, notice: 'Sql query was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sql_query
      @sql_query = SqlQuery.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sql_query_params
      params.fetch(:sql_query, {})
    end
end
