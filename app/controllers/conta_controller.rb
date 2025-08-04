class ContaController < ApplicationController
  before_action :set_contum, only: %i[ show edit update destroy sacar depositar]

  before_action :authenticate_user!

  # GET /conta or /conta.json
  def index
    @contas = current_user.conta
  end

  # GET /conta/1 or /conta/1.json
  def show
  end

  # GET /conta/new
  def new
    @contum = Contum.new
  end

  # GET /conta/1/edit
  def edit
  end

  # POST /conta or /conta.json
  def create
    @contum = current_user.conta.build(contum_params)

    respond_to do |format|
      if @contum.save
        format.html { redirect_to @contum, notice: "Contum was successfully created." }
        format.json { render :show, status: :created, location: @contum }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @contum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /conta/1 or /conta/1.json
  def update
    respond_to do |format|
      if @contum.update(contum_params)
        format.html { redirect_to @contum, notice: "Contum was successfully updated." }
        format.json { render :show, status: :ok, location: @contum }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @contum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /conta/1 or /conta/1.json
  def destroy
    @contum.destroy!

    respond_to do |format|
      format.html { redirect_to conta_path, status: :see_other, notice: "Contum was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  def sacar
    if request.post?
      valor = params[:valor]
      if @contum.sacar(valor)
        redirect_to @contum, notice: "saque realizado com sucesso"
      else
        flash.now[:alert] = @contum.errors. full_message.to_sentence
        render :sacar, status: :unprocessable_entity
      end
    else
    end
  end

  def depositar
    @contum
    if request.post?
      valor= params[:valor]
      if @contum.depositar(valor)
        redirect_to @contum, notice: "deposito realizado com sucesso"
      else
        flash.now[:alert] = @contum.errors.full_message.to_sentence
        render :depositar, status: :unprocessable_entity
      end
    else
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contum
      @contum = Contum.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def contum_params
      params.expect(contum: [:saldo, :password, :nome])
    end
  
end
