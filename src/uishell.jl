# AUTO GENERATED FILE - DO NOT EDIT

export uishell

"""
    uishell(;kwargs...)
    uishell(children::Any;kwargs...)
    uishell(children_maker::Function;kwargs...)


An UIShell component.
UIShell is a default layout with the header and a sidebar
Keyword arguments:
- `children` (Array of a list of or a singular dash component, string or numbers; optional): Content of the dashboard
- `id` (String; optional): Element id
- `name` (String; required): Platform Name
- `pages` (optional): If the application has multiple pages. pages has the following type: Array of lists containing elements 'name', 'url'.
Those elements have the following types:
  - `name` (String; optional)
  - `url` (String; optional)s
- `loading_state` (optional): Object that holds the loading state object coming from dash-renderer. loading_state has the following type: lists containing elements 'is_loading', 'prop_name', 'component_name'.
Those elements have the following types:
  - `is_loading` (Bool; optional): Determines if the component is loading or not
  - `prop_name` (String; optional): Holds which property is loading
  - `component_name` (String; optional): Holds the name of the component that is loading
"""
function uishell(; kwargs...)
        available_props = Symbol[:children, :id, :name, :pages, :loading_state]
        wild_props = Symbol[]
        return Component("uishell", "UIShell", "dash_carbon_components", available_props, wild_props; kwargs...)
end

uishell(children::Any; kwargs...) = uishell(;kwargs..., children = children)
uishell(children_maker::Function; kwargs...) = uishell(children_maker(); kwargs...)

