import React from 'react'
import {Content} from "carbon-components-react";
import PropTypes from 'prop-types'

const UIShellContent = ({children, }) => {
    const style = {
        minHeight: 'calc(100vh - 48px)',
        margin: '0',
        width: '100%',
        backgroundColor: '#f4f4f4',
        marginTop: '48px',
    };
    return (
        <Content id='main-content' style={style}>
            {children}
        </Content>
    );
}
UIShellContent.propTypes = {
    children: PropTypes.oneOfType([
        PropTypes.arrayOf(PropTypes.node),
        PropTypes.node,
    ]),
    /**
     *
     * Object that holds the loading state object coming from dash-renderer
     */
    loading_state: PropTypes.shape({
        /**
         * Determines if the component is loading or not
         */
        is_loading: PropTypes.bool,

        /**
         * Holds which property is loading
         */
        prop_name: PropTypes.string,
        /**
         * Holds the name of the component that is loading
         */
        component_name: PropTypes.string,
    }),
}
export default UIShellContent;
