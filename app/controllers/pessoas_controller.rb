class PessoasController < ApplicationController
  before_action :set_pessoa, only: [:show, :edit, :update, :destroy]

  # GET /pessoas
  # GET /pessoas.json
  def index
    if current_user
      @lead = client.select_pessoas
      pessoas_aux = Pessoa.where("user_id = #{current_user.id}")
      
      @lead.each do |item|
        # verifica se já existe no sistema rdstationdesafio2
        exist = false
        pessoas_aux.each do |pessoa|
          exist = exist || (item.Id == pessoa.salesforce_id)
        end
        
        # se nao existe adiciona ele
        if !exist
          Pessoa.new_from_lead(item, current_user)
        end
      end
      
      @pessoas = Pessoa.where("user_id = #{current_user.id}")
    end
  end

  # GET /pessoas/1
  # GET /pessoas/1.json
  def show
  end

  # GET /pessoas/new
  def new
    @pessoa = Pessoa.new
  end

  # GET /pessoas/1/edit
  def edit
  end

  # POST /pessoas
  # POST /pessoas.json
  def create
    @pessoa = Pessoa.new(pessoa_params)
    @pessoa.user = current_user 
    
    respond_to do |format|
      if @pessoa.save
        if current_user
          id = client.add_pessoa({
                 first_name: @pessoa.name,
                 last_name: @pessoa.last_name,
                 email: @pessoa.email,
                 company: @pessoa.company,
                 title: @pessoa.job_title,
                 phone: @pessoa.phone,
                 website: @pessoa.website
          })
          @pessoa.update(salesforce_id: id)
        end
        format.html { redirect_to @pessoa, notice: 'Pessoa was successfully created.' }
        format.json { render action: 'show', status: :created, location: @pessoa }
      else
        format.html { render action: 'new' }
        format.json { render json: @pessoa.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pessoas/1
  # PATCH/PUT /pessoas/1.json
  def update
    respond_to do |format|
      if @pessoa.update(pessoa_params)
        format.html { redirect_to @pessoa, notice: 'Pessoa was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @pessoa.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pessoas/1
  # DELETE /pessoas/1.json
  def destroy
    @pessoa.destroy
    respond_to do |format|
      format.html { redirect_to pessoas_url }
      format.json { head :no_content }
    end
  end
  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pessoa
      @pessoa = Pessoa.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pessoa_params
      params.require(:pessoa).permit(:name, :last_name, :email, :company, :job_title, :phone, :website)
    end
end
