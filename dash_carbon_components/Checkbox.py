# AUTO GENERATED FILE - DO NOT EDIT

from dash.development.base_component import Component, _explicitize_args


class Checkbox(Component):
    """A Checkbox component.


Keyword arguments:
- id (string; required)
- label (string; required)
- disabled (boolean; optional)
- value (boolean; required)
- title (string; optional)"""
    @_explicitize_args
    def __init__(self, id=Component.REQUIRED, label=Component.REQUIRED, disabled=Component.UNDEFINED, value=Component.REQUIRED, title=Component.UNDEFINED, **kwargs):
        self._prop_names = ['id', 'label', 'disabled', 'value', 'title']
        self._type = 'Checkbox'
        self._namespace = 'dash_carbon_components'
        self._valid_wildcard_attributes =            []
        self.available_properties = ['id', 'label', 'disabled', 'value', 'title']
        self.available_wildcard_properties =            []

        _explicit_args = kwargs.pop('_explicit_args')
        _locals = locals()
        _locals.update(kwargs)  # For wildcard attrs
        args = {k: _locals[k] for k in _explicit_args if k != 'children'}

        for k in ['id', 'label', 'value']:
            if k not in args:
                raise TypeError(
                    'Required argument `' + k + '` was not specified.')
        super(Checkbox, self).__init__(**args)
