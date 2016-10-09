local function onBuilt(event)
  local entity = event.created_entity
  if entity.name == "location-combinator" then
    local control = entity.get_or_create_control_behavior()
    control.enabled=true
    control.parameters={parameters={
      {index=1,count=math.floor(entity.position.x),signal={name="signal-X",type="virtual"}},
      {index=2,count=math.floor(entity.position.y),signal={name="signal-Y",type="virtual"}},
      {index=3,count=entity.surface.index,signal={name="signal-Z",type="virtual"}}
    }}
    entity.operable=false
  end
end

script.on_event(defines.events.on_built_entity, onBuilt)
script.on_event(defines.events.on_robot_built_entity, onBuilt)
