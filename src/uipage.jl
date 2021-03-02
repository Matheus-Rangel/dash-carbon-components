# AUTO GENERATED FILE - DO NOT EDIT

export uipage

"""
    uipage(;kwargs...)
    uipage(children::Any;kwargs...)
    uipage(children_maker::Function;kwargs...)


An UIPage component.
ExampleComponent is an example component.
It takes a property, `label`, and
displays it.
It renders an input with the property `value`
which is editable by the user.
Keyword arguments:
- `children` (Array of a list of or a singular dash component, string or numbers | a list of or a singular dash component, string or number; optional): Children
- `name` (String; required): Page name
"""
function uipage(; kwargs...)
        available_props = Symbol[:children, :name]
        wild_props = Symbol[]
        return Component("uipage", "UIPage", "dash_carbon_components", available_props, wild_props; kwargs...)
end

uipage(children::Any; kwargs...) = uipage(;kwargs..., children = children)
uipage(children_maker::Function; kwargs...) = uipage(children_maker(); kwargs...)

