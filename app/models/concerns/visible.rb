module Visible extend ActiveSupport::Concern
    def archived?
        self.status == "archived"
    end

    VALID_STATUSES = ["public","private","archived"]

    included do
        validates :status, inclusion: { in: VALID_STATUSES }
    end
end

