# AUTO GENERATED FILE - DO NOT EDIT

from dash.development.base_component import Component, _explicitize_args


class Column(Component):
    """A Column component.


Keyword arguments:
- children (list of a list of or a singular dash component, string or numbers | a list of or a singular dash component, string or number; optional)
- columnSizes (list of strings; optional)
- offsetSizes (list of strings; optional)"""
    @_explicitize_args
    def __init__(self, children=None, columnSizes=Component.UNDEFINED, offsetSizes=Component.UNDEFINED, **kwargs):
        self._prop_names = ['children', 'columnSizes', 'offsetSizes']
        self._type = 'Column'
        self._namespace = 'dash_carbon_components'
        self._valid_wildcard_attributes =            []
        self.available_properties = ['children', 'columnSizes', 'offsetSizes']
        self.available_wildcard_properties =            []

        _explicit_args = kwargs.pop('_explicit_args')
        _locals = locals()
        _locals.update(kwargs)  # For wildcard attrs
        args = {k: _locals[k] for k in _explicit_args if k != 'children'}

        for k in []:
            if k not in args:
                raise TypeError(
                    'Required argument `' + k + '` was not specified.')
        super(Column, self).__init__(children=children, **args)
