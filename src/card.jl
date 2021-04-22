# AUTO GENERATED FILE - DO NOT EDIT

export card

"""
    card(;kwargs...)
    card(children::Any;kwargs...)
    card(children_maker::Function;kwargs...)


A Card component.
Card to display content
Keyword arguments:
- `children` (Array of a list of or a singular dash component, string or numbers | a list of or a singular dash component, string or number; optional): The children of the element
- `style` (Dict; optional): The inline styles
- `id` (String; optional): The ID of this component, used to identify dash components
in callbacks. The ID needs to be unique across all of the
components in an app.
- `className` (String; optional): The class of the element
- `title` (String; optional): Title of the card
- `info` (String; optional): Additional information about the content of this card.
- `actions` (optional): Actions available on the side menu, button clicks will be outputted to the actionPropName prop of this card. actions has the following type: Array of lists containing elements 'displayName', 'actionPropName'.
Those elements have the following types:
  - `displayName` (String; optional)
  - `actionPropName` (String; optional)s
- `action_click` (String; optional): The action click value
"""
function card(; kwargs...)
        available_props = Symbol[:children, :style, :id, :className, :title, :info, :actions, :action_click]
        wild_props = Symbol[]
        return Component("card", "Card", "dash_carbon_components", available_props, wild_props; kwargs...)
end

card(children::Any; kwargs...) = card(;kwargs..., children = children)
card(children_maker::Function; kwargs...) = card(children_maker(); kwargs...)

