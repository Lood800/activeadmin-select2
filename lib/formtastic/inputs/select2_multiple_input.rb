module Formtastic
  module Inputs

    class Select2MultipleInput < Formtastic::Inputs::SelectInput
      def extra_input_html_options
        {
          :class => 'select2-input', :multiple => true
        }
      end
    end

    def collection_from_options
      if options[:collection].is_a?(Proc)
        template.instance_exec(&options[:collection])
      else
        super
      end
    end
  end
end
