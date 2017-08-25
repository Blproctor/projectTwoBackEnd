class MedicalPostsController < ApplicationController
  before_action :set_medical_post, only: [:show, :update, :destroy]

  # GET /medical_posts
  def index
    @medical_posts = MedicalPost.all

    render json: @medical_posts
  end

  # GET /medical_posts/1
  def show
    render json: @medical_post
  end

  # POST /medical_posts
  def create
    @medical_post = MedicalPost.new(medical_post_params)

    if @medical_post.save
      render json: @medical_post, status: :created, location: @medical_post
    else
      render json: @medical_post.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /medical_posts/1
  def update
    if @medical_post.update(medical_post_params)
      render json: @medical_post
    else
      render json: @medical_post.errors, status: :unprocessable_entity
    end
  end

  # DELETE /medical_posts/1
  def destroy
    @medical_post.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_medical_post
      @medical_post = MedicalPost.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def medical_post_params
      params.require(:medical_post).permit(:title, :content)
    end
end
