function extractChild(element, children) -- Credit to dzikakulka. Extracts children/components easily
  assert(type(children) == "table", "children must be in table")
  logStyle("error", "Red")
  for _, name in ipairs(children) do
    assert(type(name) == "string", "children names must be a string")
    if element.getChild(name) == nil then
      log(element.getChildren(), "children available:", "error")
      log(children, "children selected:", "error")
      error("child does not exist: " .. name)
    end
    element = element.getChild(name)
  end
  return element
end