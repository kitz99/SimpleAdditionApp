Rails.application.routes.draw do

  # root 'welcome#index'

  get 'showinputfields' => 'addition#showinputfields'
  get 'displayresult' => 'addition#displayresult'

  post 'performaddition' => 'addition#performaddition'

end
