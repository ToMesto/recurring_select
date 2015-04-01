module RecurringSelect
  class Engine < Rails::Engine
    isolate_namespace RecurringSelect
    
    initializer "recurring_select.extending_form_builder" do |app|
      ActionView::Helpers::FormHelper.send(:include, RecurringSelectHelper::FormHelper)
      ActionView::Helpers::FormOptionsHelper.send(:include, RecurringSelectHelper::FormOptionsHelper)
      ActionView::Helpers::FormBuilder.send(:include, RecurringSelectHelper::FormBuilder)
    end    
  end
end
