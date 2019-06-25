module ApplicationHelper
  def design_theme_css
    if current_tenant.design_theme
      "#{current_tenant.design_theme.name}/main.css"
    else
      "fallback.css"
    end   
  end
end
