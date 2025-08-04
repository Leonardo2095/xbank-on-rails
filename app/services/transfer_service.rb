class TransferService

  def inicializar(contaRemetente, contaDestinataria, valor)
    @contaRemetente = contaRemetente
    @contaDestinataria = contaDestinataria
    @valor= valor
  end

  def transferir
    return false unless verificarTransferencia?
      ActiveRecord::Base.transaction.do

      @contaRemetente.saldo-=valor
      @contaDestinataria.saldo+= valor

      @contaDestinataria.save!
      @contaRemetente.save!
    end
    true
  end

  private
  
  def verificarTransferencia
    if @contaRemetente.nil? == @contaDestinataria
      return false
    end

    if @valor <=0
      return false
    end

    if @contaRemetente.saldo < valor
      return false
    end

    true
  end