`/** @jsx React.DOM */`

Chart = require("./Chart.coffee")

Summary = React.createClass
  render: ->
    props = @props

    `(
      <div className="well">
        <div className="row">
          <div className="col-md-6 col-sm-6">
            <div className="sect">
              <h4>Monthly Payment</h4>
              <h3>&#8377; {(props.summary.monthly_emi).round().format_rupees()}</h3>
            </div>
            <div className="sect">
              <h4>Total Interest Payable</h4>
              <h3>&#8377; {(props.summary.total_interest).round().format_rupees()}</h3>
            </div>
            <div className="sect">
              <h4>Total Payment (Principal + Interest)</h4>
              <h3>&#8377; {(props.summary.total_payment).round().format_rupees()}</h3>
            </div>
          </div>
          <div className="col-md-6 col-sm-6">
            <Chart total_interest={props.summary.total_interest} total_payment={props.summary.total_payment} />
          </div>
        </div>
      </div>
    )`

module.exports = Summary
