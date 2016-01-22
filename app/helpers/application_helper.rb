module ApplicationHelper
  def status_label(status)
    case status
    when 0
      'Inativo'
    when 1
      'Ativo'
    end
  end
end
