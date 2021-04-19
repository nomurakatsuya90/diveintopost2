# frozen_string_literal: true

class UniformNotifier
  class JavascriptAlert < Base
    def self.active?
      !!UniformNotifier.alert
    end

    protected

    def self._inline_notify(data)
      message = data.values.compact.join("\n")
      options = UniformNotifier.alert.is_a?(Hash) ? UniformNotifier.alert : {}
      script_attributes = options[:attributes] || {}

      wrap_js_association "alert( #{message.inspect} );", script_attributes
    end
  end
end
