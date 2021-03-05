% Auto-generated: do not edit by hand
\name{multiSelectFilterable}

\alias{multiSelectFilterable}

\title{MultiSelectFilterable component}

\description{
MultiSelect
}

\usage{
multiSelectFilterable(disabled=NULL, locale=NULL, initialSelectedItems=NULL,
light=NULL, selectionFeedback=NULL, direction=NULL, id=NULL,
invalid=NULL, invalidText=NULL, items=NULL, label=NULL,
size=NULL, titleText=NULL)
}

\arguments{
\item{disabled}{Logical. Disable the control}

\item{locale}{Character. Specify the locale of the control.
Used for the default compareItems used for sorting the list of items in the control.}

\item{initialSelectedItems}{List of characters. Allow users to pass in arbitrary items from their collection that are pre-selected}

\item{light}{Logical. true to use the light version.}

\item{selectionFeedback}{A value equal to: 'top', 'fixed', 'top-after-reopen'. Specify feedback (mode) of the selection.
top: selected item jumps to top
fixed: selected item stays at it's position
top-after-reopen: selected item jump to top after reopen dropdown
default top-after-reopen}

\item{direction}{A value equal to: 'bottom, top'. Specify the direction of the multiselect dropdown. Can be either top or bottom.
default bottom}

\item{id}{Character. Id of the element}

\item{invalid}{Logical. Is the current selection invalid.}

\item{invalidText}{Character. The text to show if it is invalid.}

\item{items}{List of characters. List of items}

\item{label}{Character. Generic label that will be used as the textual representation of what this field is for}

\item{size}{A value equal to: 'sm', 'lg', 'xl'. Specify the size of the ListBox. Currently supports either sm, lg or xl as an option.}

\item{titleText}{Character. Provide text to be used in a <label> element that is tied to the multiselect via ARIA attributes.}
}

\value{named list of JSON elements corresponding to React.js properties and their values}

