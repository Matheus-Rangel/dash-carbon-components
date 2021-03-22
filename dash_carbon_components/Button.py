# AUTO GENERATED FILE - DO NOT EDIT

from dash.development.base_component import Component, _explicitize_args


class Button(Component):
    """A Button component.


Keyword arguments:
- children (list of a list of or a singular dash component, string or numbers | a list of or a singular dash component, string or number; optional): The children of the element
- id (string; required)
- style (dict; optional)
- className (string; optional)
- disabled (boolean; optional)
- kind (string; required)
- size (a value equal to: 'default', 'field', 'small', 'sm', 'lg', 'xl'; optional)
- n_clicks (number; default 0)"""
    @_explicitize_args
    def __init__(self, children=None, id=Component.REQUIRED, style=Component.UNDEFINED, className=Component.UNDEFINED, disabled=Component.UNDEFINED, kind=Component.REQUIRED, size=Component.UNDEFINED, n_clicks=Component.UNDEFINED, **kwargs):
        self._prop_names = ['children', 'id', 'style', 'className', 'disabled', 'kind', 'size', 'n_clicks']
        self._type = 'Button'
        self._namespace = 'dash_carbon_components'
        self._valid_wildcard_attributes =            []
        self.available_properties = ['children', 'id', 'style', 'className', 'disabled', 'kind', 'size', 'n_clicks']
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
