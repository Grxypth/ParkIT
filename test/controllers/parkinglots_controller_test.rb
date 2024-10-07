require "test_helper"

class ParkinglotsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @parkinglot = parkinglots(:one)
  end

  test "should get index" do
    get parkinglots_url, as: :json
    assert_response :success
  end

  test "should create parkinglot" do
    assert_difference("Parkinglot.count") do
      post parkinglots_url, params: { parkinglot: { address: @parkinglot.address, company_name: @parkinglot.company_name } }, as: :json
    end

    assert_response :created
  end

  test "should show parkinglot" do
    get parkinglot_url(@parkinglot), as: :json
    assert_response :success
  end

  test "should update parkinglot" do
    patch parkinglot_url(@parkinglot), params: { parkinglot: { address: @parkinglot.address, company_name: @parkinglot.company_name } }, as: :json
    assert_response :success
  end

  test "should destroy parkinglot" do
    assert_difference("Parkinglot.count", -1) do
      delete parkinglot_url(@parkinglot), as: :json
    end

    assert_response :no_content
  end
end
