class HayFieldPdf < Prawn::Document

  def initialize(hay_field)
    super(top_margin: 70)
    @hay_field = hay_field
    field_name
    line_items
  end

  def field_name
    text "#{@hay_field.field_name}", size: 30, style: :bold
  end

  def line_items
    move_down 20
    text "Bail Count: #{@hay_field.bail_count}", size: 14
    text "Average Weight: #{@hay_field.average_weight}", size: 14
    text "Price Per Ton: $#{@hay_field.price_per_ton}", size: 14
    text "Total Due: $#{@hay_field.your_amount}", size: 14
  end
end
