module Nestable
  include ActiveSupport::Concern

  def accepts_nested_attributes_for(*attr_names)
    # options = { allow_destroy: false, update_only: false }
    # options.update(attr_names.extract_options!)
    # options.assert_valid_keys(:allow_destroy, :reject_if, :limit, :update_only)
    # options[:reject_if] = REJECT_ALL_BLANK_PROC if options[:reject_if] == :all_blank

    attr_names.each do |association_name|
      byebug
      if reflection = _reflect_on_association(association_name)
        reflection.autosave = true
        define_autosave_validation_callbacks(reflection)

        nested_attributes_options = self.nested_attributes_options.dup
        nested_attributes_options[association_name.to_sym] = options
        self.nested_attributes_options = nested_attributes_options

        type = (reflection.collection? ? :collection : :one_to_one)
        generate_association_writer(association_name, type)
      else
        raise ArgumentError, "No association found for name `#{association_name}'. Has it been defined yet?"
      end
    end
  end
end
