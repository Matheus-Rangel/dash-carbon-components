# AUTO GENERATED FILE - DO NOT EDIT

from dash.development.base_component import Component, _explicitize_args


class UIShell(Component):
    """An UIShell component.
UIShell is a default layout with the header and a sidebar

Keyword arguments:
- children (list of a list of or a singular dash component, string or numbers | a list of or a singular dash component, string or number; optional): Pages
- id (string; optional): Element id
- value (string; optional)
- name (string; required): Plataform Name"""
    @_explicitize_args
    def __init__(self, children=None, id=Component.UNDEFINED, value=Component.UNDEFINED, name=Component.REQUIRED, **kwargs):
        self._prop_names = ['children', 'id', 'value', 'name']
        self._type = 'UIShell'
        self._namespace = 'dash_carbon_components'
        self._valid_wildcard_attributes =            []
        self.available_properties = ['children', 'id', 'value', 'name']
        self.available_wildcard_properties =            []

        _explicit_args = kwargs.pop('_explicit_args')
        _locals = locals()
        _locals.update(kwargs)  # For wildcard attrs
        args = {k: _locals[k] for k in _explicit_args if k != 'children'}

        for k in ['name']:
            if k not in args:
                raise TypeError(
                    'Required argument `' + k + '` was not specified.')
        super(UIShell, self).__init__(children=children, **args)
