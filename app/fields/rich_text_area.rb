class RichTextArea < Trestle::Form::Field
  def field
    content_tag :div, class: 'input-group' do
      safe_join [
        builder.raw_text_field(name, {class: 'form-control'}),
        builder.raw_rich_text_area(name, options),
      ]
    end
  end
end
