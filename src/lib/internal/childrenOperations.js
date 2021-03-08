import {is, isNil} from "ramda";

export function parseChildrenToArray(children) {
    if (children && !is(Array, children)) {
        // if dcc.Tabs.children contains just one single element, it gets passed as an object
        // instead of an array - so we put in in a array ourselves!
        return [children];
    }
    return children;
}
export function getProps(child) {
    if (
        child.props._dashprivate_layout &&
        child.props._dashprivate_layout.props
    ) {
        // props are coming from Dash
        return  child.props._dashprivate_layout.props;
    }
    return child.props;
}
