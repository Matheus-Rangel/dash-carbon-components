# AUTO GENERATED FILE - DO NOT EDIT

from dash.development.base_component import Component, _explicitize_args


class RadioButtonGroup(Component):
    """A RadioButtonGroup component.


Keyword arguments:
- legendText (string; optional)
- name (string; optional)
- radiosButtons (dict; optional): radiosButtons has the following type: list of dicts containing keys 'labelText', 'value', 'id'.
Those keys have the following types:
  - labelText (string; optional)
  - value (string; optional)
  - id (string; optional)
- id (string; optional)
- value (string; optional)
- labelPosition (a value equal to: 'left', 'right'; optional)
- orientation (a value equal to: 'horizontal', 'vertical'; optional)
- disabled (boolean; optional)"""
    @_explicitize_args
    def __init__(self, legendText=Component.UNDEFINED, name=Component.UNDEFINED, radiosButtons=Component.UNDEFINED, id=Component.UNDEFINED, value=Component.UNDEFINED, labelPosition=Component.UNDEFINED, orientation=Component.UNDEFINED, disabled=Component.UNDEFINED, **kwargs):
        self._prop_names = ['legendText', 'name', 'radiosButtons', 'id', 'value', 'labelPosition', 'orientation', 'disabled']
        self._type = 'RadioButtonGroup'
        self._namespace = 'dash_carbon_components'
        self._valid_wildcard_attributes =            []
        self.available_properties = ['legendText', 'name', 'radiosButtons', 'id', 'value', 'labelPosition', 'orientation', 'disabled']
        self.available_wildcard_properties =            []

        _explicit_args = kwargs.pop('_explicit_args')
        _locals = locals()
        _locals.update(kwargs)  # For wildcard attrs
        args = {k: _locals[k] for k in _explicit_args if k != 'children'}

        for k in []:
            if k not in args:
                raise TypeError(
                    'Required argument `' + k + '` was not specified.')
        super(RadioButtonGroup, self).__init__(**args)
