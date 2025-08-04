require "application_system_test_case"

class TransacaosTest < ApplicationSystemTestCase
  setup do
    @transacao = transacaos(:one)
  end

  test "visiting the index" do
    visit transacaos_url
    assert_selector "h1", text: "Transacaos"
  end

  test "should create transacao" do
    visit transacaos_url
    click_on "New transacao"

    fill_in "Descricao", with: @transacao.descricao
    fill_in "Tipo", with: @transacao.tipo
    fill_in "Valor", with: @transacao.valor
    click_on "Create Transacao"

    assert_text "Transacao was successfully created"
    click_on "Back"
  end

  test "should update Transacao" do
    visit transacao_url(@transacao)
    click_on "Edit this transacao", match: :first

    fill_in "Descricao", with: @transacao.descricao
    fill_in "Tipo", with: @transacao.tipo
    fill_in "Valor", with: @transacao.valor
    click_on "Update Transacao"

    assert_text "Transacao was successfully updated"
    click_on "Back"
  end

  test "should destroy Transacao" do
    visit transacao_url(@transacao)
    click_on "Destroy this transacao", match: :first

    assert_text "Transacao was successfully destroyed"
  end
end
