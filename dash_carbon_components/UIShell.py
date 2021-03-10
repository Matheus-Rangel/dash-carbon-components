# AUTO GENERATED FILE - DO NOT EDIT

from dash.development.base_component import Component, _explicitize_args


class UIShell(Component):
    """An UIShell component.
UIShell is a default layout with the header and a sidebar

Keyword arguments:
- id (string; optional): Element id
- name (string; required): Platform Name
- sidebarItems (dict; optional): Items of the sidebar. sidebarItems has the following type: list of dicts containing keys 'name', 'url'.
Those keys have the following types:
  - name (string; optional)
  - url (string; optional)
- headerItems (dict; optional): Items of the header. headerItems has the following type: list of dicts containing keys 'name', 'url'.
Those keys have the following types:
  - name (string; optional)
  - url (string; optional)
- loading_state (dict; optional): Object that holds the loading state object coming from dash-renderer. loading_state has the following type: dict containing keys 'is_loading', 'prop_name', 'component_name'.
Those keys have the following types:
  - is_loading (boolean; optional): Determines if the component is loading or not
  - prop_name (string; optional): Holds which property is loading
  - component_name (string; optional): Holds the name of the component that is loading"""
    @_explicitize_args
    def __init__(self, id=Component.UNDEFINED, name=Component.REQUIRED, sidebarItems=Component.UNDEFINED, headerItems=Component.UNDEFINED, loading_state=Component.UNDEFINED, **kwargs):
        self._prop_names = ['id', 'name', 'sidebarItems', 'headerItems', 'loading_state']
        self._type = 'UIShell'
        self._namespace = 'dash_carbon_components'
        self._valid_wildcard_attributes =            []
        self.available_properties = ['id', 'name', 'sidebarItems', 'headerItems', 'loading_state']
        self.available_wildcard_properties =            []

        _explicit_args = kwargs.pop('_explicit_args')
        _locals = locals()
        _locals.update(kwargs)  # For wildcard attrs
        args = {k: _locals[k] for k in _explicit_args if k != 'children'}

        for k in ['name']:
            if k not in args:
                raise TypeError(
                    'Required argument `' + k + '` was not specified.')
        super(UIShell, self).__init__(**args)
