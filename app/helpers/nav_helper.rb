module NavHelper
  def nav_class
    'c-nav' if current_page?(root_path)
  end

  def nav_brand_class
    'c-nav__brand' if current_page?(root_path)
  end
end