# AUTO GENERATED FILE - DO NOT EDIT

export multiselect

"""
    multiselect(;kwargs...)

A MultiSelect component.
MultiSelect
Keyword arguments:
- `disabled` (Bool; optional): Disable the control
- `style` (Dict; optional): Inline style
- `locale` (String; optional): Specify the locale of the control.
Used for the default compareItems used for sorting the list of items in the control.
- `light` (Bool; optional): true to use the light version.
- `selectionFeedback` (a value equal to: 'top', 'fixed', 'top-after-reopen'; optional): Specify feedback (mode) of the selection.
top: selected item jumps to top
fixed: selected item stays at it's position
top-after-reopen: selected item jump to top after reopen dropdown
default top-after-reopen
- `direction` (a value equal to: 'bottom, top'; optional): Specify the direction of the multiselect dropdown. Can be either top or bottom.
default bottom
- `id` (String; required): Id of the element
- `invalid` (Bool; optional): Is the current selection invalid.
- `invalidText` (String; optional): The text to show if it is invalid.
- `options` (required): List of items. options has the following type: Array of String | lists containing elements 'label', 'value'.
Those elements have the following types:
  - `label` (String; optional)
  - `value` (Bool | Real | String | Dict | Array; optional)s
- `label` (String; optional): Generic label that will be used as the textual representation of what this field is for
- `size` (a value equal to: 'sm', 'lg', 'xl'; optional): Specify the size of the ListBox. Currently supports either sm, lg or xl as an option.
- `titleText` (String; optional): Provide text to be used in a <label> element that is tied to the multiselect via ARIA attributes.
- `value` (Array of Bool | Real | String | Dict | Arrays; optional): The list of the selected items
- `filterable` (Bool; optional): Specify if this component should be filterable
"""
function multiselect(; kwargs...)
        available_props = Symbol[:disabled, :style, :locale, :light, :selectionFeedback, :direction, :id, :invalid, :invalidText, :options, :label, :size, :titleText, :value, :filterable]
        wild_props = Symbol[]
        return Component("multiselect", "MultiSelect", "dash_carbon_components", available_props, wild_props; kwargs...)
end

