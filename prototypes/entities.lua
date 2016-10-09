local p = table.deepcopy(data.raw["constant-combinator"]["constant-combinator"])
p.name = "location-combinator"
p.minable.result = "location-combinator"

data:extend{p}
