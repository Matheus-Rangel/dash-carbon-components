# AUTO GENERATED FILE - DO NOT EDIT

export uishell

"""
    uishell(;kwargs...)
    uishell(children::Any;kwargs...)
    uishell(children_maker::Function;kwargs...)


An UIShell component.
UIShell is a default layout with the header and a sidebar
Keyword arguments:
- `children` (Array of a list of or a singular dash component, string or numbers | a list of or a singular dash component, string or number; optional): Pages
- `id` (String; optional): Element id
- `value` (String; optional)
- `name` (String; required): Plataform Name
"""
function uishell(; kwargs...)
        available_props = Symbol[:children, :id, :value, :name]
        wild_props = Symbol[]
        return Component("uishell", "UIShell", "dash_carbon_components", available_props, wild_props; kwargs...)
end

uishell(children::Any; kwargs...) = uishell(;kwargs..., children = children)
uishell(children_maker::Function; kwargs...) = uishell(children_maker(); kwargs...)

