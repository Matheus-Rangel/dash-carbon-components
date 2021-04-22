# AUTO GENERATED FILE - DO NOT EDIT

from dash.development.base_component import Component, _explicitize_args


class Button(Component):
    """A Button component.
Carbon Button

Keyword arguments:
- children (list of a list of or a singular dash component, string or numbers | a list of or a singular dash component, string or number; optional): Specify the content of your Button
- id (string; required): The id of the button
- style (dict; optional): jsx Style
- className (string; optional): Specify an optional className to be added to your Button
- disabled (boolean; optional): Specify whether the Button should be disabled, or not
- dangerDescription (string; optional): Specify the message read by screen readers for the danger button variant
- href (string; optional): Optionally specify an href for your Button to become an `<a>` element
- isSelected (boolean; optional): Specify whether the Button is currently selected
- kind (a value equal to: 'primary', 'secondary', 'danger', 'ghost', 'danger--primary', 'danger--ghost', 'danger--tertiary', 'tertiary'; required): Specify the kind of Button you want to create
- role (string; optional): Optional prop to specify the role of the Button
- size (a value equal to: 'default', 'field', 'small', 'sm', 'lg', 'xl'; optional): Specify the size of the button, from a list of available sizes.
For `default` buttons, this prop can remain unspecified.
- tooltipAlignment (a value equal to: 'start', 'center', 'end'; optional): Specify the alignment of the tooltip to the icon-only button.
Can be one of: start, center, or end.
- tooltipPosition (a value equal to: 'top', 'right', 'bottom', 'left'; optional): Specify the direction of the tooltip for icon-only buttons.
Can be either top, right, bottom, or left.
- type (a value equal to: 'button', 'reset', 'submit'; optional): Optional prop to specify the type of the Button
- n_clicks (number; default 0): Number of times this button has been clicked"""
    @_explicitize_args
    def __init__(self, children=None, id=Component.REQUIRED, style=Component.UNDEFINED, className=Component.UNDEFINED, disabled=Component.UNDEFINED, dangerDescription=Component.UNDEFINED, href=Component.UNDEFINED, isSelected=Component.UNDEFINED, kind=Component.REQUIRED, role=Component.UNDEFINED, size=Component.UNDEFINED, tooltipAlignment=Component.UNDEFINED, tooltipPosition=Component.UNDEFINED, type=Component.UNDEFINED, n_clicks=Component.UNDEFINED, **kwargs):
        self._prop_names = ['children', 'id', 'style', 'className', 'disabled', 'dangerDescription', 'href', 'isSelected', 'kind', 'role', 'size', 'tooltipAlignment', 'tooltipPosition', 'type', 'n_clicks']
        self._type = 'Button'
        self._namespace = 'dash_carbon_components'
        self._valid_wildcard_attributes =            []
        self.available_properties = ['children', 'id', 'style', 'className', 'disabled', 'dangerDescription', 'href', 'isSelected', 'kind', 'role', 'size', 'tooltipAlignment', 'tooltipPosition', 'type', 'n_clicks']
        self.available_wildcard_properties =            []

        _explicit_args = kwargs.pop('_explicit_args')
        _locals = locals()
        _locals.update(kwargs)  # For wildcard attrs
        args = {k: _locals[k] for k in _explicit_args if k != 'children'}

        for k in ['id', 'kind']:
            if k not in args:
                raise TypeError(
                    'Required argument `' + k + '` was not specified.')
        super(Button, self).__init__(children=children, **args)
