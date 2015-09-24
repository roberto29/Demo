require 'test_helper'

class EnvioCorreosControllerTest < ActionController::TestCase
  setup do
    @envio_correo = envio_correos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:envio_correos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create envio_correo" do
    assert_difference('EnvioCorreo.count') do
      post :create, envio_correo: {  }
    end

    assert_redirected_to envio_correo_path(assigns(:envio_correo))
  end

  test "should show envio_correo" do
    get :show, id: @envio_correo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @envio_correo
    assert_response :success
  end

  test "should update envio_correo" do
    patch :update, id: @envio_correo, envio_correo: {  }
    assert_redirected_to envio_correo_path(assigns(:envio_correo))
  end

  test "should destroy envio_correo" do
    assert_difference('EnvioCorreo.count', -1) do
      delete :destroy, id: @envio_correo
    end

    assert_redirected_to envio_correos_path
  end
end
