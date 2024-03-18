class MarksController < ApplicationController
  before_action :set_word_mark, only: :word_mark

  def word_mark
    param! :status, Integer, required: true
    
    @mark.status = params[:status]
    @mark.save!
    render_200
  end

  private

  def set_word_mark
    @mark = Mark.find_or_initialize_by(user: @current_user, markable_type: Word, markable_id: params[:id])
  end
end
