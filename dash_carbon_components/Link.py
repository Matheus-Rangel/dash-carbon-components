# AUTO GENERATED FILE - DO NOT EDIT

from dash.development.base_component import Component, _explicitize_args


class Link(Component):
    """A Link component.
Link component

Keyword arguments:
- children (list of a list of or a singular dash component, string or numbers | a list of or a singular dash component, string or number; optional): Provide the content for the Link
- id (string; optional): The id of the link
- style (dict; optional): Inline styles
- className (string; optional): Provide a custom className to be applied to the containing `<a>` node
- disabled (boolean; optional): Specify if the control should be disabled, or not
- inline (boolean; optional): Specify whether you want the inline version of this control
- size (a value equal to: 'sm', 'md', 'lg'; optional): Specify the size of the Link. Currently supports either `sm`, 'md' (default) or 'lg` as an option.
- n_clicks (number; default 0): Number of times this link has been clicked
- visited (boolean; default False): Specify whether you want the link to receive visited styles after the link has been clicked
- href (string; optional): Provide the `href` attribute for the `<a>` node"""
    @_explicitize_args
    def __init__(self, children=None, id=Component.UNDEFINED, style=Component.UNDEFINED, className=Component.UNDEFINED, disabled=Component.UNDEFINED, inline=Component.UNDEFINED, size=Component.UNDEFINED, n_clicks=Component.UNDEFINED, visited=Component.UNDEFINED, href=Component.UNDEFINED, **kwargs):
        self._prop_names = ['children', 'id', 'style', 'className', 'disabled', 'inline', 'size', 'n_clicks', 'visited', 'href']
        self._type = 'Link'
        self._namespace = 'dash_carbon_components'
        self._valid_wildcard_attributes =            []
        self.available_properties = ['children', 'id', 'style', 'className', 'disabled', 'inline', 'size', 'n_clicks', 'visited', 'href']
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
