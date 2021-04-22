# AUTO GENERATED FILE - DO NOT EDIT

from dash.development.base_component import Component, _explicitize_args


class RadioButtonGroup(Component):
    """A RadioButtonGroup component.
Radio Group Component

Keyword arguments:
- legendText (a list of or a singular dash component, string or number; optional): Provide a legend to the RadioButtonGroup input that you are
exposing to the user
- name (string; required): Specify the name of the underlying `<input>` nodes
- radiosButtons (dict; optional): The radios buttons inside this group. radiosButtons has the following type: list of dicts containing keys 'label', 'value', 'id'.
Those keys have the following types:
  - label (string; optional)
  - value (string; optional)
  - id (string; optional)
- id (string; optional): Specify a custom `id` for the radio group
- value (string; optional): The value selected
- labelPosition (a value equal to: 'left', 'right'; optional): Provide where label text should be placed
- orientation (a value equal to: 'horizontal', 'vertical'; optional): Provide where radio buttons should be placed
- disabled (boolean; optional): Specify whether the group is disabled
- className (string; optional): Provide an optional className to be applied to the container node"""
    @_explicitize_args
    def __init__(self, legendText=Component.UNDEFINED, name=Component.REQUIRED, radiosButtons=Component.UNDEFINED, id=Component.UNDEFINED, value=Component.UNDEFINED, labelPosition=Component.UNDEFINED, orientation=Component.UNDEFINED, disabled=Component.UNDEFINED, className=Component.UNDEFINED, **kwargs):
        self._prop_names = ['legendText', 'name', 'radiosButtons', 'id', 'value', 'labelPosition', 'orientation', 'disabled', 'className']
        self._type = 'RadioButtonGroup'
        self._namespace = 'dash_carbon_components'
        self._valid_wildcard_attributes =            []
        self.available_properties = ['legendText', 'name', 'radiosButtons', 'id', 'value', 'labelPosition', 'orientation', 'disabled', 'className']
        self.available_wildcard_properties =            []

        _explicit_args = kwargs.pop('_explicit_args')
        _locals = locals()
        _locals.update(kwargs)  # For wildcard attrs
        args = {k: _locals[k] for k in _explicit_args if k != 'children'}

        for k in ['name']:
            if k not in args:
                raise TypeError(
                    'Required argument `' + k + '` was not specified.')
        super(RadioButtonGroup, self).__init__(**args)
