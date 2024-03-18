class MarkDecorator < Draper::Decorator
  delegate_all
  def status
    case object.status
    when 'unknow' then '未掌握'
    when 'learned' then '已掌握'
    else object.status
    end
  end
end
