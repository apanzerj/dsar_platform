require 'test_helper'

class SubjectAccessRequestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @subject_access_request = subject_access_requests(:one)
  end

  test "should get index" do
    get subject_access_requests_url, as: :json
    assert_response :success
  end

  test "should create subject_access_request" do
    assert_difference('SubjectAccessRequest.count') do
      post subject_access_requests_url, params: { subject_access_request: { action: @subject_access_request.action, subdomain: @subject_access_request.subdomain, subject_contact_data: @subject_access_request.subject_contact_data, subject_contact_method: @subject_access_request.subject_contact_method } }, as: :json
    end

    assert_response 201
  end

  test "should show subject_access_request" do
    get subject_access_request_url(@subject_access_request), as: :json
    assert_response :success
  end

  test "should update subject_access_request" do
    patch subject_access_request_url(@subject_access_request), params: { subject_access_request: { action: @subject_access_request.action, subdomain: @subject_access_request.subdomain, subject_contact_data: @subject_access_request.subject_contact_data, subject_contact_method: @subject_access_request.subject_contact_method } }, as: :json
    assert_response 200
  end

  test "should destroy subject_access_request" do
    assert_difference('SubjectAccessRequest.count', -1) do
      delete subject_access_request_url(@subject_access_request), as: :json
    end

    assert_response 204
  end
end
