
module DashCarbonComponents
using Dash

const resources_path = realpath(joinpath( @__DIR__, "..", "deps"))
const version = "0.1.4"

include("button.jl")
include("card.jl")
include("checkbox.jl")
include("column.jl")
include("datepicker.jl")
include("datepickerrange.jl")
include("dropdown.jl")
include("grid.jl")
include("link.jl")
include("multiselect.jl")
include("numberinput.jl")
include("radiobuttongroup.jl")
include("row.jl")
include("slider.jl")
include("tab.jl")
include("tabs.jl")
include("uishell.jl")

function __init__()
    DashBase.register_package(
        DashBase.ResourcePkg(
            "dash_carbon_components",
            resources_path,
            version = version,
            [
                DashBase.Resource(
    relative_package_path = "dash_carbon_components.min.js",
    external_url = nothing,
    dynamic = nothing,
    async = nothing,
    type = :js
),
DashBase.Resource(
    relative_package_path = "dash_carbon_components.min.js.map",
    external_url = nothing,
    dynamic = true,
    async = nothing,
    type = :js
)
            ]
        )

    )
end
end
