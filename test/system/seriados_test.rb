require "application_system_test_case"

class SeriadosTest < ApplicationSystemTestCase
  setup do
    @seriado = seriados(:one)
  end

  test "visiting the index" do
    visit seriados_url
    assert_selector "h1", text: "Seriados"
  end

  test "should create seriado" do
    visit seriados_url
    click_on "New seriado"

    fill_in "Data de lancamento", with: @seriado.Data_De_Lancamento
    fill_in "Description", with: @seriado.description
    fill_in "Diretor", with: @seriado.diretor
    fill_in "Episodios", with: @seriado.episodios
    fill_in "Nome", with: @seriado.nome
    click_on "Create Seriado"

    assert_text "Seriado was successfully created"
    click_on "Back"
  end

  test "should update Seriado" do
    visit seriado_url(@seriado)
    click_on "Edit this seriado", match: :first

    fill_in "Data de lancamento", with: @seriado.Data_De_Lancamento
    fill_in "Description", with: @seriado.description
    fill_in "Diretor", with: @seriado.diretor
    fill_in "Episodios", with: @seriado.episodios
    fill_in "Nome", with: @seriado.nome
    click_on "Update Seriado"

    assert_text "Seriado was successfully updated"
    click_on "Back"
  end

  test "should destroy Seriado" do
    visit seriado_url(@seriado)
    click_on "Destroy this seriado", match: :first

    assert_text "Seriado was successfully destroyed"
  end
end
