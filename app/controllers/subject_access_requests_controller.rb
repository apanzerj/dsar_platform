class SubjectAccessRequestsController < ApplicationController
  before_action :set_subject_access_request, only: [:show, :update, :destroy]

  # GET /subject_access_requests
  def index
    @subject_access_requests = SubjectAccessRequest.all

    render json: @subject_access_requests
  end

  # GET /subject_access_requests/1
  def show
    render json: @subject_access_request
  end

  # POST /subject_access_requests
  def create
    @subject_access_request = SubjectAccessRequest.new(subject_access_request_params)

    if @subject_access_request.save
      render json: @subject_access_request, status: :created, location: @subject_access_request
    else
      render json: @subject_access_request.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /subject_access_requests/1
  def update
    if @subject_access_request.update(subject_access_request_params)
      render json: @subject_access_request
    else
      render json: @subject_access_request.errors, status: :unprocessable_entity
    end
  end

  # DELETE /subject_access_requests/1
  def destroy
    @subject_access_request.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_subject_access_request
      @subject_access_request = SubjectAccessRequest.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def subject_access_request_params
      params.require(:subject_access_request).permit(:subdomain, :action, :subject_contact_method, :subject_contact_data)
    end
end
