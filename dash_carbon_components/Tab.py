# AUTO GENERATED FILE - DO NOT EDIT

from dash.development.base_component import Component, _explicitize_args


class Tab(Component):
    """A Tab component.
Tab component

Keyword arguments:
- children (list of a list of or a singular dash component, string or numbers | a list of or a singular dash component, string or number; optional): Tab content
- className (string; optional): Specify an optional className to be added to your Tab
- disabled (boolean; optional): Whether your Tab is disabled.
- label (string; required): Provide the contents of your Tab
- role (string; optional): Provide an accessibility role for your Tab
- value (string; optional): Value of the tab"""
    @_explicitize_args
    def __init__(self, children=None, className=Component.UNDEFINED, disabled=Component.UNDEFINED, label=Component.REQUIRED, role=Component.UNDEFINED, value=Component.UNDEFINED, **kwargs):
        self._prop_names = ['children', 'className', 'disabled', 'label', 'role', 'value']
        self._type = 'Tab'
        self._namespace = 'dash_carbon_components'
        self._valid_wildcard_attributes =            []
        self.available_properties = ['children', 'className', 'disabled', 'label', 'role', 'value']
        self.available_wildcard_properties =            []

        _explicit_args = kwargs.pop('_explicit_args')
        _locals = locals()
        _locals.update(kwargs)  # For wildcard attrs
        args = {k: _locals[k] for k in _explicit_args if k != 'children'}

        for k in ['label']:
            if k not in args:
                raise TypeError(
                    'Required argument `' + k + '` was not specified.')
        super(Tab, self).__init__(children=children, **args)
