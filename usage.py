import dash
import dash_carbon_components as dca
import dash_html_components as html
from dash.dependencies import Output, Input
from dash_core_components import Location

app = dash.Dash(__name__, suppress_callback_exceptions=True)

nav_layout = html.Div([
    Location(id='url', refresh=False),
    dca.UIShell(
        name='Dashboard',
        sidebarItems=[{'name': 'Inputs', 'url': '/'}, {'name': 'Outputs', 'url': '/outputs'}],
        headerItems=[{'name': 'Inputs', 'url': '/'}, {'name': 'Outputs', 'url': '/outputs'}],
    ),
    html.Div(
        id='page-content',
        style={
            'minHeight': 'calc(100vh - 48px)',
            'margin': '0',
            'width': '100%',
            'backgroundColor': '#f4f4f4',
            'marginTop': '48px',
            'padding': '32px'
        }
    )
])

inputs_layout = dca.Grid(id='content', children=[
    dca.Row(children=[
        dca.Column(columnSizes=['lg-4 md-5'], offsetSizes=['lg-2'], children=[
            dca.Card(title='Slider', children=[
                html.Div(style={'display': 'flex', 'flexDirection': 'row'}, children=[
                    dca.Slider(
                        id='slider',
                        labelText='Slider',
                        max=100,
                        min=0,
                        step=1,
                        value=50,
                    ),
                ])
            ])
        ]),
        dca.Column(columnSizes=['lg-4 md-5'], children=[
            dca.Card(title='Date Picker', style={'display': 'flex', 'justifyContent': 'center'}, children=[
                dca.DatePickerRange(
                    id='date-picker',
                    placeholder='mm/dd/yyyy',
                    startLabel='Start Date',
                    endLabel='End Date',
                ),
            ])
        ]),
    ]),
    dca.Row(style={'marginTop': '24px'}, children=[
        dca.Column(columnSizes=['lg-3 md-5'], offsetSizes=['lg-2'], children=[
            dca.Card(title='Multiselect', children=[
                dca.MultiSelect(id='multiselect', titleText='Fruits', options=['Apple', 'Orange', 'Grape'],
                                label='Fruits')
            ])
        ]),
        dca.Column(columnSizes=['lg-3 md-5'], children=[
            dca.Card(title='Multiselect Filterable', children=[
                dca.MultiSelectFilterable(id='multiselect', titleText='Fruits',
                                          value=['apple'],
                                          options=[
                                              {'label': 'Apple', 'value': 'apple'},
                                              {'label': 'Orange', 'value': 'orange'},
                                              {'label': 'Grape', 'value': 'grape'}
                                          ],
                                          label='Fruits'),
                dca.Link(children='Select all')
            ])
        ]),
        dca.Column(columnSizes=['lg-3 md-5'], children=[
            dca.Card(title='Number Input', children=[
                html.Div([
                    dca.NumberInput(id='numberinput', helperText='max', label='Number Input', value=50, min=0,
                                    max=100000000, step=10)
                ]),
            ])
        ]),
        dca.Column(columnSizes=['lg-4 md-5'], offsetSizes=['lg-2'], children=[
            dca.Card(title='Radio Group', children=[
                html.Div([
                    dca.RadioButtonGroup(legendText='Radio', value='opt2', id='Radio', name='Radio',
                                         radiosButtons=[
                                             {'labelText': 'Option 1', 'value': 'opt1'},
                                             {'labelText': 'Option 2', 'value': 'opt2'},
                                             {'labelText': 'Option 3', 'value': 'opt3'},
                                         ])
                ]),
            ])
        ]),
        dca.Column(columnSizes=['lg-2 md-5'], children=[
            dca.Card(title='Checkbox', children=[
                html.Div([
                    dca.Checkbox(value=False, id='Checkbox', label='Check me', title='CHECK ME')
                ]),
            ])
        ]),
        dca.Column(columnSizes=['lg-4 md-5'], children=[
            dca.Card(title='Buttons', children=[
                html.Div([
                    dca.Button(id='button2', kind='secondary', children=['Secondary']),
                    dca.Button(id='button1', kind='primary', style={'marginLeft': '1px'}, children=['Primary']),
                ]),
            ])
        ]),
        dca.Column(columnSizes=['lg-4 md-5'], style={'marginTop': '16px'}, offsetSizes=['lg-2'], children=[
            dca.Card(title='Dropdown', children=[
                html.Div([
                    dca.Dropdown(
                        options=[
                            {'label': 'Apple', 'value': 'apple'},
                            {'label': 'Orange', 'value': 'orange'},
                            {'label': 'Grape', 'value': 'grape'}
                        ],
                        id='dropdown',
                        label='Fruits')
                ]),
            ])
        ]),
    ]),
    dca.Tabs(id='tabs', headerOffsets=['lg-2'], headerSizes=['lg-10'], className='bx--offset-lg-2', children=[
        dca.Tab(value='tab1', label='Tab 1', children=[
            dca.Row(style={'marginTop': '24px'}, children=[
                dca.Column(columnSizes=['lg-3'], offsetSizes=['lg-2'], children=[
                    dca.Card(title='Tab 1 Content')
                ])
            ])
        ]),
        dca.Tab(value='tab2', label='Tab 2', children=[
            dca.Row(style={'marginTop': '24px'}, children=[
                dca.Column(columnSizes=['lg-5'], offsetSizes=['lg-2'], children=[
                    dca.Card(title='Tab 2 Content')
                ])
            ])
        ])
    ]),
])
outputs_layout = dca.Grid(children=[
    dca.Row(children=[
        dca.Column(columnSizes=['lg-13'], offsetSizes=['lg-3'], children=[
            dca.Slider(
                id='test',
                labelText='Demo',
                max=1000,
                min=0,
                step=1,
                value=100),
        ])
    ])
])

app.layout = html.Div([
    nav_layout
])
app.validation_layout = html.Div([
    nav_layout,
    inputs_layout,
    outputs_layout
])

pages = {
    '/': inputs_layout,
    '/outputs': outputs_layout
}


@app.callback(
    Output('page-content', 'children'),
    Input('url', 'pathname')
)
def display_page(pathname):
    return pages[pathname]


if __name__ == '__main__':
    app.run_server(debug=True)
