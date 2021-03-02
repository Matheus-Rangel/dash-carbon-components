import React, {Component} from 'react';
import cx from 'classnames';
import PropTypes from 'prop-types';
import {
    HeaderContainer, SideNavLink, Header,
    HeaderName,
    HeaderMenuButton,
    SideNav,
    SideNavItems,
    SkipToContent, Content
} from 'carbon-components-react'
import {is} from 'ramda'
import getProps from "../util/getProps";
/**
 * UIShell is a default layout with the header and a sidebar
 */


export default class UIShell extends Component {
    constructor(props) {
        super(props);
        this.state = {currentPage: 0, content: ''}
    }
    parseChildrenToArray() {
        if (!this.props.children) {
            return []
        }
        if (this.props.children && !is(Array, this.props.children)) {
            // if dcc.Tabs.children contains just one single element, it gets passed as an object
            // instead of an array - so we put in in a array ourselves!
            return [this.props.children];
        }
        return this.props.children;
    }
    navigate(index){
        this.setState({currentPage: index })
    }
    getMenuItems(pages) {
        return pages.map((child, index) => {
            console.log(child);
            const props = getProps(child)
            return (
                <SideNavLink key={index} onClick={() => this.navigate(index)} isActive={index === this.state.currentPage}>{props.name}</SideNavLink>
            )
        });
    }
    getContent(pages) {
        if(pages.length > 0) {
            const style = {
                height: '100%',
                minHeight: '100vh',
                margin: '0',
                width: '100%',
                backgroundColor: '#f4f4f4'
            }
            return(
            <Content id='main-content' style={style}>
                {pages[this.state.currentPage]}
            </Content>
            );
        }
        return '';
    }

    render() {
        const {name, children} = this.props;
        const pages = this.parseChildrenToArray(children);
        console.log(pages)
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
                        <HeaderName href={'#'}>
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
                    {this.getContent(pages)}
                </>
            )}>
            </HeaderContainer>
        );
    }
}
UIShell.propTypes = {
    /** Plataform Name */
    name: PropTypes.string.isRequired,
    /** Pages */
    children: PropTypes.oneOfType([
        PropTypes.arrayOf(PropTypes.node),
        PropTypes.node,
    ]),
    /** Prop passed by Dash */
    setProps: PropTypes.func
}
