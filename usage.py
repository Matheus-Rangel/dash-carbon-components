import dash
from dash.dependencies import Output, Input
import dash_carbon_components as dca
import dash_core_components as dcc
import dash_html_components as html
import time
app = dash.Dash(__name__, suppress_callback_exceptions=True)

nav_layout = html.Div([
    dcc.Location(id='url', refresh=False),
    html.Div(id='page-content', style={'height': 'calc(100vh - 48px)', 'background-color': '#f4f4f4', 'padding': '48px', 'margin-top': '48px'}),
    dca.UIShell(
        name='Dashboard',
        pages=[{'name': 'Inputs', 'url': '/'}, {'name': 'Outputs', 'url': '/outputs'}],
    )
])
index_page = html.Div([
    dcc.Link('Go to Page 1', href='/'),
    html.Br(),
    dcc.Link('Go to Page 2', href='/outputs'),
])

inputs_layout = dca.Grid(children=[
    dca.Row(children=[
        dca.Column(columnSizes=['lg-13'], offsetSizes=['lg-3'], children=[
            dca.Slider(
                id='slider',
                labelText='Demo',
                max=100,
                min=0,
                step=1,
                value=50)
        ])
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

pages = {
    '/': inputs_layout,
    '/outputs': outputs_layout
}

app.layout = html.Div([
    nav_layout
])
app.validation_layout = html.Div([
    nav_layout,
    inputs_layout,
    outputs_layout
])

@app.callback(
    Output('page-content', 'children'),
    Input('url', 'pathname')
)
def display_page(pathname):
    return pages[pathname]


if __name__ == '__main__':
    app.run_server(debug=True)
