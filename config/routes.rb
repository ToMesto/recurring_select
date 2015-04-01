RecurringSelect::Engine.routes.draw do
  post "/translate_summary/:locale", :to => "translations#summary", :as => "translate_summary"
end
