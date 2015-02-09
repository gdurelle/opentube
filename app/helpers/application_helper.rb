module ApplicationHelper
  def twitter_alert_type(type)
    case type
    when 'error'
      return "alert-danger"
    when 'alert', 'warning'
      return "alert-warning"
    when 'info', 'infos'
      return "alert-info"
    when 'notice', 'success'
      return "alert-success"
    end
  end
end
