import React from 'react'
import './Card.scss'
import {OverflowMenu, OverflowMenuItem, Tooltip} from 'carbon-components-react';
import PropTypes from 'prop-types'

/**
 * Card
 */
const Card = ({children, title, style, className, info, actions, setProps, ...others}) => {
    const actionClick = (actionPropName) => setProps(
        {[actionPropName]: others[actionPropName] ? others[actionPropName] + 1 : 1}
    )
    return (
        <div className={'card'}>
            {title &&
            <>
                <div className={'card-header'}>
                    <div className={'card-title'}>
                        {title}
                    </div>
                    <div className={'card-header-buttons'}>
                        {info &&
                        <div style={{marginRight: actions.length > 0 ? '4px' : '16px'}}>
                            <Tooltip
                                     iconDescription={`Card ${title} Info`}>
                                <p>{info}</p>
                            </Tooltip>
                        </div>
                        }
                        {actions.length > 0 &&
                        <OverflowMenu>
                            {actions.map(action => (
                                    <OverflowMenuItem
                                        key={action.actionPropName}
                                        itemText={action.displayName}
                                        onClick={() => actionClick(action.actionPropName)}
                                    />
                                )
                            )}
                        </OverflowMenu>
                        }
                    </div>
                </div>
                <div className={'card-divider'}/>
            </>
            }

            <div style={style} className={'card-body ' + className}>
                {children}
            </div>
        </div>
    )
};
Card.propTypes = {
    /**
     * The inline styles
     */
    style: PropTypes.object,
    /**
     * The ID of this component, used to identify dash components
     * in callbacks. The ID needs to be unique across all of the
     * components in an app.
     */
    id: PropTypes.string,
    /**
     The children of the element
     */
    children: PropTypes.oneOfType([
        PropTypes.arrayOf(PropTypes.node),
        PropTypes.node
    ]),
    /**
     * The class of the element
     */
    className: PropTypes.string,
    /**
     * Title of the card
     */
    title: PropTypes.string,
    /**
     * Additional information about the content of this card.
     */
    info: PropTypes.string,
    /**
     * Actions available on the side menu, button clicks will be outputted to the actionPropName prop of this card
     */
    actions: PropTypes.arrayOf(
        PropTypes.shape({displayName: PropTypes.string, actionPropName: PropTypes.string})
    ),
    /**
     * Dash function
     */
    setProps: PropTypes.func
}
Card.defaultProps = {
    className: '',
    actions: []
}
export default Card;
