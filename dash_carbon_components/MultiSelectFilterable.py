# AUTO GENERATED FILE - DO NOT EDIT

from dash.development.base_component import Component, _explicitize_args


class MultiSelectFilterable(Component):
    """A MultiSelectFilterable component.
MultiSelect

Keyword arguments:
- disabled (boolean; optional): Disable the control
- style (dict; optional)
- locale (string; optional): Specify the locale of the control.
Used for the default compareItems used for sorting the list of items in the control.
- light (boolean; optional): true to use the light version.
- selectionFeedback (a value equal to: 'top', 'fixed', 'top-after-reopen'; optional): Specify feedback (mode) of the selection.
top: selected item jumps to top
fixed: selected item stays at it's position
top-after-reopen: selected item jump to top after reopen dropdown
default top-after-reopen
- direction (a value equal to: 'bottom, top'; optional): Specify the direction of the multiselect dropdown. Can be either top or bottom.
default bottom
- id (string; required): Id of the element
- invalid (boolean; optional): Is the current selection invalid.
- invalidText (string; optional): The text to show if it is invalid.
- options (dict; required): List of items. options has the following type: list of string | dict containing keys 'label', 'value'.
Those keys have the following types:
  - label (string; optional)
  - value (boolean | number | string | dict | list; optional)s
- label (string; optional): Generic label that will be used as the textual representation of what this field is for
- size (a value equal to: 'sm', 'lg', 'xl'; optional): Specify the size of the ListBox. Currently supports either sm, lg or xl as an option.
- titleText (string; optional): Provide text to be used in a <label> element that is tied to the multiselect via ARIA attributes.
- value (list of boolean | number | string | dict | lists; optional): The list of the selected items"""
    @_explicitize_args
    def __init__(self, disabled=Component.UNDEFINED, style=Component.UNDEFINED, locale=Component.UNDEFINED, light=Component.UNDEFINED, selectionFeedback=Component.UNDEFINED, direction=Component.UNDEFINED, id=Component.REQUIRED, invalid=Component.UNDEFINED, invalidText=Component.UNDEFINED, options=Component.REQUIRED, label=Component.UNDEFINED, size=Component.UNDEFINED, titleText=Component.UNDEFINED, value=Component.UNDEFINED, **kwargs):
        self._prop_names = ['disabled', 'style', 'locale', 'light', 'selectionFeedback', 'direction', 'id', 'invalid', 'invalidText', 'options', 'label', 'size', 'titleText', 'value']
        self._type = 'MultiSelectFilterable'
        self._namespace = 'dash_carbon_components'
        self._valid_wildcard_attributes =            []
        self.available_properties = ['disabled', 'style', 'locale', 'light', 'selectionFeedback', 'direction', 'id', 'invalid', 'invalidText', 'options', 'label', 'size', 'titleText', 'value']
        self.available_wildcard_properties =            []

        _explicit_args = kwargs.pop('_explicit_args')
        _locals = locals()
        _locals.update(kwargs)  # For wildcard attrs
        args = {k: _locals[k] for k in _explicit_args if k != 'children'}

        for k in ['id', 'options']:
            if k not in args:
                raise TypeError(
                    'Required argument `' + k + '` was not specified.')
        super(MultiSelectFilterable, self).__init__(**args)
