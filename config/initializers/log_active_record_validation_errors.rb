def log_arv_errors
  if self.errors.any?
    Rails.logger.warn "#{self.class} failed to save!"
    Rails.logger.warn "Attributes: "
    Rails.logger.warn self.attributes
    Rails.logger.warn "Errors: "
    Rails.logger.warn self.errors.full_messages.join("\n")
  end
end

ActiveRecord::Base.send(:after_validation, :log_arv_errors)
