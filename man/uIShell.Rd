% Auto-generated: do not edit by hand
\name{uIShell}

\alias{uIShell}

\title{UIShell component}

\description{
UIShell is a default layout with the header and a sidebar
}

\usage{
uIShell(children=NULL, id=NULL, name=NULL, sidebarItems=NULL,
headerItems=NULL, loading_state=NULL)
}

\arguments{
\item{children}{List of a list of or a singular dash component, string or numbers | a list of or a singular dash component, string or number. Content of the dashboard}

\item{id}{Character. Element id}

\item{name}{Character. Platform Name}

\item{sidebarItems}{List of lists containing elements 'name', 'url'.
those elements have the following types:
  - name (character; optional)
  - url (character; optional)s. Items of the sidebar}

\item{headerItems}{List of lists containing elements 'name', 'url'.
those elements have the following types:
  - name (character; optional)
  - url (character; optional)s. Items of the header}

\item{loading_state}{Lists containing elements 'is_loading', 'prop_name', 'component_name'.
those elements have the following types:
  - is_loading (logical; optional): determines if the component is loading or not
  - prop_name (character; optional): holds which property is loading
  - component_name (character; optional): holds the name of the component that is loading. Object that holds the loading state object coming from dash-renderer}
}

\value{named list of JSON elements corresponding to React.js properties and their values}

