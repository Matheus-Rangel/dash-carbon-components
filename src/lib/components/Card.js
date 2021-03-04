import React from 'react'
import PropTypes from 'prop-types'
import './Card.scss'

/**
 * Card
 */
const Card = ({children, title, style, className}) => {
    return (
        <div style={style} className={'card ' + className}>
            {title &&
            <>
                <div className={'card-title'}>
                    {title}
                </div>
                <div className={'card-divider'}/>
            </>
            }
            <div className={'card-body'}>
                {children}
            </div>
        </div>
    )
}
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
        PropTypes.node,
    ]),
    /**
     * The class of the element
     */
    className: PropTypes.string,
    /**
     * Title of the card
    */
    title: PropTypes.string
}
export default Card;
