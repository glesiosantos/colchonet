module ApplicationHelper
    def error_tag(model, attribute)
        if model.errors.has_key? attribute
            content_tag :div, model.errors[attribute].first,
            :class => 'invalid-feedback d-block'
        end    
    end
end