require 'test_helper'

class SelecaosControllerTest < ActionController::TestCase
  setup do
    @selecao = selecaos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:selecaos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create selecao" do
    assert_difference('Selecao.count') do
      post :create, selecao: { Derrotas: @selecao.Derrotas, Empates: @selecao.Empates, Fase_de_eliminacao: @selecao.Fase_de_eliminacao, Grupo: @selecao.Grupo, Numero_de_gols: @selecao.Numero_de_gols, Pais: @selecao.Pais, Pontos: @selecao.Pontos, Vitorias: @selecao.Vitorias }
    end

    assert_redirected_to selecao_path(assigns(:selecao))
  end

  test "should show selecao" do
    get :show, id: @selecao
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @selecao
    assert_response :success
  end

  test "should update selecao" do
    put :update, id: @selecao, selecao: { Derrotas: @selecao.Derrotas, Empates: @selecao.Empates, Fase_de_eliminacao: @selecao.Fase_de_eliminacao, Grupo: @selecao.Grupo, Numero_de_gols: @selecao.Numero_de_gols, Pais: @selecao.Pais, Pontos: @selecao.Pontos, Vitorias: @selecao.Vitorias }
    assert_redirected_to selecao_path(assigns(:selecao))
  end

  test "should destroy selecao" do
    assert_difference('Selecao.count', -1) do
      delete :destroy, id: @selecao
    end

    assert_redirected_to selecaos_path
  end
end
