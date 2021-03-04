# AUTO GENERATED FILE - DO NOT EDIT

from dash.development.base_component import Component, _explicitize_args


class Column(Component):
    """A Column component.
Row Column

Keyword arguments:
- children (list of a list of or a singular dash component, string or numbers | a list of or a singular dash component, string or number; optional): The children of the element
- style (dict; optional): The inline styles
- id (string; optional): The ID of this component, used to identify dash components
in callbacks. The ID needs to be unique across all of the
components in an app.
- className (string; default ''): The class of the element
- columnSizes (list of strings; optional): The size of the column with the display size, sm-4, lg-16 ...
- offsetSizes (list of strings; optional): The size of the offset with the display size, lg-2 ..."""
    @_explicitize_args
    def __init__(self, children=None, style=Component.UNDEFINED, id=Component.UNDEFINED, className=Component.UNDEFINED, columnSizes=Component.UNDEFINED, offsetSizes=Component.UNDEFINED, **kwargs):
        self._prop_names = ['children', 'style', 'id', 'className', 'columnSizes', 'offsetSizes']
        self._type = 'Column'
        self._namespace = 'dash_carbon_components'
        self._valid_wildcard_attributes =            []
        self.available_properties = ['children', 'style', 'id', 'className', 'columnSizes', 'offsetSizes']
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
