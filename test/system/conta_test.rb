require "application_system_test_case"

class ContaTest < ApplicationSystemTestCase
  setup do
    @contum = conta(:one)
  end

  test "visiting the index" do
    visit conta_url
    assert_selector "h1", text: "Conta"
  end

  test "should create contum" do
    visit conta_url
    click_on "New contum"

    fill_in "Saldo", with: @contum.saldo
    click_on "Create Contum"

    assert_text "Contum was successfully created"
    click_on "Back"
  end

  test "should update Contum" do
    visit contum_url(@contum)
    click_on "Edit this contum", match: :first

    fill_in "Saldo", with: @contum.saldo
    click_on "Update Contum"

    assert_text "Contum was successfully updated"
    click_on "Back"
  end

  test "should destroy Contum" do
    visit contum_url(@contum)
    click_on "Destroy this contum", match: :first

    assert_text "Contum was successfully destroyed"
  end
end
