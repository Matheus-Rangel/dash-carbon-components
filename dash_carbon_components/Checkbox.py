# AUTO GENERATED FILE - DO NOT EDIT

from dash.development.base_component import Component, _explicitize_args


class Checkbox(Component):
    """A Checkbox component.
Checkbox Input

Keyword arguments:
- id (string; required): Provide an `id` to uniquely identify the Checkbox input
- label (a list of or a singular dash component, string or number; required): Provide a label to provide a description of the Checkbox input that you are
exposing to the user
- hideLabel (boolean; optional): Specify whether the label should be hidden, or not
- disabled (boolean; optional): Specify whether the Checkbox should be disabled
- value (boolean; optional): Specify whether the underlying input is checked
- title (string; optional): Specify a title for the <label> node for the Checkbox
- style (dict; optional): The inline styles
- className (string; optional): Specify an optional className to be applied to the <label> node"""
    @_explicitize_args
    def __init__(self, id=Component.REQUIRED, label=Component.REQUIRED, hideLabel=Component.UNDEFINED, disabled=Component.UNDEFINED, value=Component.UNDEFINED, title=Component.UNDEFINED, style=Component.UNDEFINED, className=Component.UNDEFINED, **kwargs):
        self._prop_names = ['id', 'label', 'hideLabel', 'disabled', 'value', 'title', 'style', 'className']
        self._type = 'Checkbox'
        self._namespace = 'dash_carbon_components'
        self._valid_wildcard_attributes =            []
        self.available_properties = ['id', 'label', 'hideLabel', 'disabled', 'value', 'title', 'style', 'className']
        self.available_wildcard_properties =            []

        _explicit_args = kwargs.pop('_explicit_args')
        _locals = locals()
        _locals.update(kwargs)  # For wildcard attrs
        args = {k: _locals[k] for k in _explicit_args if k != 'children'}

        for k in ['id', 'label']:
            if k not in args:
                raise TypeError(
                    'Required argument `' + k + '` was not specified.')
        super(Checkbox, self).__init__(**args)
