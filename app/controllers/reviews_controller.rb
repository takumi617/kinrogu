class ReviewsController < ApplicationController
  def index
     @reviews = Review.all
  end
  
  def new
   @review = Review.new  #formヘルパーのデータの入れ物になる
  end
  
  def create
     
  review = Review.new(storename: params[:review][:storename], location: params[:review][:location], comment: params[:review][:comment],
    category: params[:review][:category],
    star: params[:review][:star],image: params[:review][:image])
  review.save
  redirect_to '/' #=>一覧ページにリダイレクトする
  end
  
  private

  def review_params
    # :image を忘れずに追加し、最後に end を閉じる
    params.require(:review).permit(:storename, :location, :comment, :category, :star, :image)
  end
end