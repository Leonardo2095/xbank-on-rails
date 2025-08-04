class Contum < ApplicationRecord

  belongs_to :user
  has_many :transacao
  validates :password, presence: true
  validates :nome, presence: true, uniqueness: true

  def depositar(valor)
    valor= valor.to_f
    if valor > 0
      self.saldo += valor
      save
      true
    end
  end

  def sacar(valor)
    valor= valor.to_f
    if valor > 0
      self.saldo -=valor
      save
      true
    end
  end

  def transferir(valor, contaTransferir, contaOrigem)
    valor= valor.to_f
    self.saldo -= valor
  end
  
end
