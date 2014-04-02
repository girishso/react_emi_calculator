`/** @jsx React.DOM */`

Chart = require("./Chart.coffee")

Summary = React.createClass
  render: ->
    `(
      <div className="well">
        <div className="row">
          <div className="col-md-6 col-sm-6">
            <div className="sect">
              <h4>Monthly Payment</h4>
              <h3>₹ 11,8989</h3>
            </div>
            <div className="sect">
              <h4>Total Interest Payable</h4>
              <h3>₹ 11,8989</h3>
            </div>
            <div className="sect">
              <h4>Total Payment (Principal + Interest)</h4>
              <h3>₹ 11,8989</h3>
            </div>
          </div>
          <div className="col-md-6 col-sm-6">
            <Chart />
          </div>
        </div>
      </div>
    )`

module.exports = Summary
