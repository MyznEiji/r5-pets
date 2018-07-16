module ApplicationHelper

  # 引数が現在のコントローラーと一致したらturuを返す
  def controller?(controller)
    controller.include?(params[:controller])
  end

  # 引数が現在のアクションと一致したらtrueを返す
  def action?(action)
    action.include?(params[:action])
  end
end
