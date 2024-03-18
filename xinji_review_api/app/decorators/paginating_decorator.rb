class PaginatingDecorator < Draper::CollectionDecorator
  delegate :current_page, :total_pages, :limit_value, :entry_name, :total_count, :offset_value, :last_page?

  def paginate
      { total_pages: total_pages, current_page: current_page, limit_value: limit_value }
  end
end
