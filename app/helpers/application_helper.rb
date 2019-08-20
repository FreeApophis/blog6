module ApplicationHelper
  def design_theme_css
    if current_tenant.design_theme
      "#{current_tenant.design_theme.name}/main.css"
    else
      "fallback.css"
    end   
  end

  def flash_key_to_class key
    case key
      when "notice"
        "info"
      when "succees"
        "success"
      when "warning"
        "warning"
      when "alert"
        "error"
      else
        ""
    end
  end
end
