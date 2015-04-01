module RecurringSelect
  class TranslationsController < ActionController::Base
    def summary
      I18n.locale = params[:locale]
      respond_to do |format|
        format.any { render :text => (params[:rule_type] ? RecurringSelect.dirty_hash_to_rule(params).to_s : '') }
      end
    end
  end
end