json.extract! transacao, :id, :tipo, :descricao, :valor, :created_at, :updated_at
json.url transacao_url(transacao, format: :json)
