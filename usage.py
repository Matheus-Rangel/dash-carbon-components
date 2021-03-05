import dash
import dash_carbon_components as dca
import dash_core_components as dcc
import dash_html_components as html
from dash.dependencies import Output, Input

app = dash.Dash(__name__, suppress_callback_exceptions=True)

nav_layout = html.Div([
    dcc.Location(id='url', refresh=False),
    dca.UIShell(
        id='page-content',
        name='Dashboard',
        pages=[{'name': 'Inputs', 'url': '/'}, {'name': 'Outputs', 'url': '/outputs'}],
    )
])

inputs_layout = dca.Grid(children=[
    dca.Row(children=[
        dca.Column(columnSizes=['lg-4 md-5'], offsetSizes=['lg-2'], children=[
            dca.Card(title='Inputs', children=[
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
            dca.Card(title='Date Picker', style={'display': 'flex', 'justify-content': 'center'}, children=[
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
                dca.MultiSelect(id='multiselect', titleText='Fruits', items=['Apple', 'Orange', 'Grape'],
                                label='Fruits')
            ])
        ]),
        dca.Column(columnSizes=['lg-3 md-5'], children=[
            dca.Card(title='Multiselect Filterable', children=[
                dca.MultiSelectFilterable(id='multiselect', titleText='Fruits', items=['Apple', 'Orange', 'Grape'],
                                          label='Fruits')
            ])
        ]),
    ])
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
                value=100)
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
