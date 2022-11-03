require "test_helper"

class SeriadosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @seriado = seriados(:one)
  end

  test "should get index" do
    get seriados_url
    assert_response :success
  end

  test "should get new" do
    get new_seriado_url
    assert_response :success
  end

  test "should create seriado" do
    assert_difference("Seriado.count") do
      post seriados_url, params: { seriado: { Data_De_Lancamento: @seriado.Data_De_Lancamento, description: @seriado.description, diretor: @seriado.diretor, episodios: @seriado.episodios, nome: @seriado.nome } }
    end

    assert_redirected_to seriado_url(Seriado.last)
  end

  test "should show seriado" do
    get seriado_url(@seriado)
    assert_response :success
  end

  test "should get edit" do
    get edit_seriado_url(@seriado)
    assert_response :success
  end

  test "should update seriado" do
    patch seriado_url(@seriado), params: { seriado: { Data_De_Lancamento: @seriado.Data_De_Lancamento, description: @seriado.description, diretor: @seriado.diretor, episodios: @seriado.episodios, nome: @seriado.nome } }
    assert_redirected_to seriado_url(@seriado)
  end

  test "should destroy seriado" do
    assert_difference("Seriado.count", -1) do
      delete seriado_url(@seriado)
    end

    assert_redirected_to seriados_url
  end
end
