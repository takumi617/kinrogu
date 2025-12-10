# app/controllers/bookmarks_controller.rb
class BookmarksController < ApplicationController
  # ログイン必須
  before_action :authenticate_user!
  
  # 処理の前に、対象の飲食店をセットする
  before_action :set_review

  # ブックマーク作成
  def create
    # ログイン中のユーザーが、対象のレビューをブックマークに追加
    bookmark = current_user.bookmarks.new(review: @review)
    
    if bookmark.save
      redirect_to root_path, notice: 'ブックマークしました。'
    else
      redirect_to root_path, alert: 'ブックマークに失敗しました。'
    end
  end

  def destroy
    # 対象のレビューへのブックマークを探して削除
    bookmark = current_user.bookmarks.find_by(review: @review)
    
    if bookmark&.destroy
      redirect_to root_path, notice: 'ブックマークを解除しました。'
    else
      redirect_to root_path, alert: '解除できませんでした。'
    end
  end

  private

  def set_review
    # URLの :review_id から対象データを取得
    @review = Review.find(params[:review_id])
  end
end