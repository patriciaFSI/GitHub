require 'test_helper'

class JuizsControllerTest < ActionController::TestCase
  setup do
    @juiz = juizs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:juizs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create juiz" do
    assert_difference('Juiz.count') do
      post :create, juiz: { Idade: @juiz.Idade, Nacionalidade: @juiz.Nacionalidade, Nome: @juiz.Nome }
    end

    assert_redirected_to juiz_path(assigns(:juiz))
  end

  test "should show juiz" do
    get :show, id: @juiz
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @juiz
    assert_response :success
  end

  test "should update juiz" do
    put :update, id: @juiz, juiz: { Idade: @juiz.Idade, Nacionalidade: @juiz.Nacionalidade, Nome: @juiz.Nome }
    assert_redirected_to juiz_path(assigns(:juiz))
  end

  test "should destroy juiz" do
    assert_difference('Juiz.count', -1) do
      delete :destroy, id: @juiz
    end

    assert_redirected_to juizs_path
  end
end
