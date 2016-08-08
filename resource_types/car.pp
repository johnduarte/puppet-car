Pcore::TypeSet({
  name                => "Vehicles",
  namespace_prefix    => "Things::Vehicles",
  name_authority      => "http://example.com",
  pcore_version       => ">= 2016.0.0",
  version             => "1.0.0",

  types            => {
    RegNbr      => Pattern[/[A-Z]{3}[0-9]{3}/],
    RGBColor    => Variant[Pattern[/#[0-9a-fA-F]{3}/], Integer[0]],
    NamedColor  => Enum[blue, red, pink, black, white, green, yellow]
    Color       => Variant[RGBColor, NamedColor],

    Car => Object[{ attributes => {
      make        => String,
      color       => Color,
      reg_nbr     => RegNbr,
    }
  }],
  # additional things in the Vehicles model
})
