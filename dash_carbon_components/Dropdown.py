# AUTO GENERATED FILE - DO NOT EDIT

from dash.development.base_component import Component, _explicitize_args


class Dropdown(Component):
    """A Dropdown component.
Dropdown component

Keyword arguments:
- disabled (boolean; optional): Disable the control
- options (dict; optional): List of items. options has the following type: list of string | dict containing keys 'label', 'value'.
Those keys have the following types:
  - label (string; optional)
  - value (boolean | number | string | dict | list; optional)s
- id (string; required): Specify a custom `id`
- inline (boolean; optional): Specify whether you want the inline version of this control
- invalid (boolean; optional): Specify if the currently selected value is invalid.
- invalidText (string; optional): Message which is displayed if the value is invalid.
- label (a list of or a singular dash component, string or number; required): Generic `label` that will be used as the textual representation of what
this field is for
- ariaLabel (string; optional): 'aria-label' of the ListBox component.
- value (boolean | number | string | dict | list; optional): In the case you want to control the dropdown selection entirely.
- light (boolean; optional): `true` to use the light version.
- titleText (string | a list of or a singular dash component, string or number; optional): Provide the title text that will be read by a screen reader when
visiting this control
- helperText (string | a list of or a singular dash component, string or number; optional): Provide helper text that is used alongside the control label for
additional help
- style (dict; optional): Style of the component"""
    @_explicitize_args
    def __init__(self, disabled=Component.UNDEFINED, options=Component.UNDEFINED, id=Component.REQUIRED, inline=Component.UNDEFINED, invalid=Component.UNDEFINED, invalidText=Component.UNDEFINED, label=Component.REQUIRED, translateWithId=Component.UNDEFINED, ariaLabel=Component.UNDEFINED, value=Component.UNDEFINED, light=Component.UNDEFINED, titleText=Component.UNDEFINED, helperText=Component.UNDEFINED, style=Component.UNDEFINED, **kwargs):
        self._prop_names = ['disabled', 'options', 'id', 'inline', 'invalid', 'invalidText', 'label', 'ariaLabel', 'value', 'light', 'titleText', 'helperText', 'style']
        self._type = 'Dropdown'
        self._namespace = 'dash_carbon_components'
        self._valid_wildcard_attributes =            []
        self.available_properties = ['disabled', 'options', 'id', 'inline', 'invalid', 'invalidText', 'label', 'ariaLabel', 'value', 'light', 'titleText', 'helperText', 'style']
        self.available_wildcard_properties =            []

        _explicit_args = kwargs.pop('_explicit_args')
        _locals = locals()
        _locals.update(kwargs)  # For wildcard attrs
        args = {k: _locals[k] for k in _explicit_args if k != 'children'}

        for k in ['id', 'label']:
            if k not in args:
                raise TypeError(
                    'Required argument `' + k + '` was not specified.')
        super(Dropdown, self).__init__(**args)
