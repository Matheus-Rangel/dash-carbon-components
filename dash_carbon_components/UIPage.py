# AUTO GENERATED FILE - DO NOT EDIT

from dash.development.base_component import Component, _explicitize_args


class UIPage(Component):
    """An UIPage component.
ExampleComponent is an example component.
It takes a property, `label`, and
displays it.
It renders an input with the property `value`
which is editable by the user.

Keyword arguments:
- children (list of a list of or a singular dash component, string or numbers | a list of or a singular dash component, string or number; optional): Children
- id (string; optional): Element id
- name (string; required): Page name
- value (string; required)"""
    @_explicitize_args
    def __init__(self, children=None, id=Component.UNDEFINED, name=Component.REQUIRED, value=Component.REQUIRED, **kwargs):
        self._prop_names = ['children', 'id', 'name', 'value']
        self._type = 'UIPage'
        self._namespace = 'dash_carbon_components'
        self._valid_wildcard_attributes =            []
        self.available_properties = ['children', 'id', 'name', 'value']
        self.available_wildcard_properties =            []

        _explicit_args = kwargs.pop('_explicit_args')
        _locals = locals()
        _locals.update(kwargs)  # For wildcard attrs
        args = {k: _locals[k] for k in _explicit_args if k != 'children'}

        for k in ['name', 'value']:
            if k not in args:
                raise TypeError(
                    'Required argument `' + k + '` was not specified.')
        super(UIPage, self).__init__(children=children, **args)
