# AUTO GENERATED FILE - DO NOT EDIT

from dash.development.base_component import Component, _explicitize_args


class Card(Component):
    """A Card component.
Card to display content

Keyword arguments:
- children (list of a list of or a singular dash component, string or numbers | a list of or a singular dash component, string or number; optional): The children of the element
- style (dict; optional): The inline styles
- id (string; optional): The ID of this component, used to identify dash components
in callbacks. The ID needs to be unique across all of the
components in an app.
- className (string; default ''): The class of the element
- title (string; optional): Title of the card
- info (string; optional): Additional information about the content of this card.
- actions (dict; optional): Actions available on the side menu, button clicks will be outputted to the actionPropName prop of this card. actions has the following type: list of dicts containing keys 'displayName', 'actionPropName'.
Those keys have the following types:
  - displayName (string; optional)
  - actionPropName (string; optional)
- action_click (string; optional): The action click value"""
    @_explicitize_args
    def __init__(self, children=None, style=Component.UNDEFINED, id=Component.UNDEFINED, className=Component.UNDEFINED, title=Component.UNDEFINED, info=Component.UNDEFINED, actions=Component.UNDEFINED, action_click=Component.UNDEFINED, **kwargs):
        self._prop_names = ['children', 'style', 'id', 'className', 'title', 'info', 'actions', 'action_click']
        self._type = 'Card'
        self._namespace = 'dash_carbon_components'
        self._valid_wildcard_attributes =            []
        self.available_properties = ['children', 'style', 'id', 'className', 'title', 'info', 'actions', 'action_click']
        self.available_wildcard_properties =            []

        _explicit_args = kwargs.pop('_explicit_args')
        _locals = locals()
        _locals.update(kwargs)  # For wildcard attrs
        args = {k: _locals[k] for k in _explicit_args if k != 'children'}

        for k in []:
            if k not in args:
                raise TypeError(
                    'Required argument `' + k + '` was not specified.')
        super(Card, self).__init__(children=children, **args)
