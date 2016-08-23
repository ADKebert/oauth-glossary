module ApplicationHelper
  def class_for_controller(name)
    controller_name == name ? "active" : ""
  end
end
