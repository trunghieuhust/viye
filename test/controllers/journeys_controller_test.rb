require 'test_helper'

class JourneysControllerTest < ActionController::TestCase
  setup do
    @journey = journeys(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:journeys)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create journey" do
    assert_difference('Journey.count') do
      post :create, journey: { content: @journey.content, enddate: @journey.enddate, headline: @journey.headline, media: @journey.media, mediacaption: @journey.mediacaption, mediacredit: @journey.mediacredit, startdate: @journey.startdate }
    end

    assert_redirected_to journey_path(assigns(:journey))
  end

  test "should show journey" do
    get :show, id: @journey
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @journey
    assert_response :success
  end

  test "should update journey" do
    patch :update, id: @journey, journey: { content: @journey.content, enddate: @journey.enddate, headline: @journey.headline, media: @journey.media, mediacaption: @journey.mediacaption, mediacredit: @journey.mediacredit, startdate: @journey.startdate }
    assert_redirected_to journey_path(assigns(:journey))
  end

  test "should destroy journey" do
    assert_difference('Journey.count', -1) do
      delete :destroy, id: @journey
    end

    assert_redirected_to journeys_path
  end
end
