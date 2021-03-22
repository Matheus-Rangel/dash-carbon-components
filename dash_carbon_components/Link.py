# AUTO GENERATED FILE - DO NOT EDIT

from dash.development.base_component import Component, _explicitize_args


class Link(Component):
    """A Link component.


Keyword arguments:
- children (list of a list of or a singular dash component, string or numbers | a list of or a singular dash component, string or number; optional)
- id (string; optional)
- style (dict; optional)
- className (string; optional)
- disabled (boolean; optional)
- inline (boolean; optional)
- size (a value equal to: 'sm', 'lg'; optional)
- n_clicks (number; default 0)
- visited (boolean; default False)"""
    @_explicitize_args
    def __init__(self, children=None, id=Component.UNDEFINED, style=Component.UNDEFINED, className=Component.UNDEFINED, disabled=Component.UNDEFINED, inline=Component.UNDEFINED, size=Component.UNDEFINED, n_clicks=Component.UNDEFINED, visited=Component.UNDEFINED, **kwargs):
        self._prop_names = ['children', 'id', 'style', 'className', 'disabled', 'inline', 'size', 'n_clicks', 'visited']
        self._type = 'Link'
        self._namespace = 'dash_carbon_components'
        self._valid_wildcard_attributes =            []
        self.available_properties = ['children', 'id', 'style', 'className', 'disabled', 'inline', 'size', 'n_clicks', 'visited']
        self.available_wildcard_properties =            []

        _explicit_args = kwargs.pop('_explicit_args')
        _locals = locals()
        _locals.update(kwargs)  # For wildcard attrs
        args = {k: _locals[k] for k in _explicit_args if k != 'children'}

        for k in []:
            if k not in args:
                raise TypeError(
                    'Required argument `' + k + '` was not specified.')
        super(Link, self).__init__(children=children, **args)
