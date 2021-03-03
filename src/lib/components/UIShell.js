import React, {Component} from 'react';
import PropTypes from 'prop-types';
import {
    Header,
    HeaderContainer,
    HeaderMenuButton,
    HeaderName,
    SideNav,
    SideNavItems,
    SideNavLink,
    SkipToContent
} from 'carbon-components-react'
import updateLocation from "../internal/updateLocation";
import UIShellContent from "../internal/UIShellContent";

/**
 * UIShell is a default layout with the header and a sidebar
 */
class UIShell extends Component {
    constructor(props) {
        super(props);
        this.state = {windowLocation: window.location.pathname}
    }

    getMenuItems(pages) {
        return pages.map((page, index) => {
            return (
                <SideNavLink key={index} href={page.url} onClick={(e) => updateLocation(e, page.url)}
                             isActive={this.state.windowLocation === page.url}>{page.name}</SideNavLink>
            )
        });
    }

    componentDidMount() {
        window.addEventListener(
            '_dashprivate_pushstate',
            () => this.setState({windowLocation: window.location.pathname}))
    }

    render() {
        const {pages, name, loading_state, children} = this.props;
        return (
            <HeaderContainer render={({isSideNavExpanded, onClickSideNavExpand}) => (
                <>
                    <Header aria-label={"IBM " + name}>
                        <SkipToContent/>
                        {pages.length > 0 &&
                        <HeaderMenuButton
                            aria-label="Open menu"
                            onClick={onClickSideNavExpand}
                            isActive={isSideNavExpanded}
                        />
                        }
                        <HeaderName href={'/'}>
                            {name}
                        </HeaderName>
                        {pages.length > 0 &&
                        <SideNav
                            aria-label="Side navigation"
                            expanded={isSideNavExpanded}>
                            <SideNavItems>
                                {this.getMenuItems(pages)}
                            </SideNavItems>
                        </SideNav>
                        }
                    </Header>
                     <UIShellContent loading_state={loading_state}>
                        {children}
                     </UIShellContent>
                </>
            )}>
            </HeaderContainer>
        );
    }
}

UIShell.propTypes = {
    /** Element id */
    id: PropTypes.string,
    /** Platform Name */
    name: PropTypes.string.isRequired,
    /** Content of the dashboard */
    children: PropTypes.oneOfType([
        PropTypes.arrayOf(PropTypes.node),
    ]),
    /** If the application has multiple pages */
    pages: PropTypes.arrayOf(
        PropTypes.shape({
            name: PropTypes.string,
            url: PropTypes.string,
        })
    ),
    /** Prop passed by Dash */
    setProps: PropTypes.func,
    /**
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

UIShell.defaultProps = {
    pages: []
}

export default UIShell;
