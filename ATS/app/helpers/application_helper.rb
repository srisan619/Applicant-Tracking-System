module ApplicationHelper
  def collect_employees_count
    [["1-19 employees", "19"], ["20-49 employees", "49"], ["50-99 employees", "99"]]
  end

  def home_btn_is_active
    if ["employers"].include?(controller_name) && ["index"].include?(action_name)
      "active"
    else
      ""
    end
  end
end
