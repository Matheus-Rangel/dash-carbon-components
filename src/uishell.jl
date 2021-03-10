# AUTO GENERATED FILE - DO NOT EDIT

export uishell

"""
    uishell(;kwargs...)

An UIShell component.
UIShell is a default layout with the header and a sidebar
Keyword arguments:
- `id` (String; optional): Element id
- `name` (String; required): Platform Name
- `sidebarItems` (optional): Items of the sidebar. sidebarItems has the following type: Array of lists containing elements 'name', 'url'.
Those elements have the following types:
  - `name` (String; optional)
  - `url` (String; optional)s
- `headerItems` (optional): Items of the header. headerItems has the following type: Array of lists containing elements 'name', 'url'.
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
        available_props = Symbol[:id, :name, :sidebarItems, :headerItems, :loading_state]
        wild_props = Symbol[]
        return Component("uishell", "UIShell", "dash_carbon_components", available_props, wild_props; kwargs...)
end

