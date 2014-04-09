`/** @jsx React.DOM */`
AmortizationRow = require("./AmortizationRow.coffee")

Amortization = React.createClass
  render: ->
    rows = @props.amortization_schedule.map (row) ->
      `<AmortizationRow data={row} />`

    `(
      <div className="col-md-12 col-sm-12">
        <div className="cwell">
          <h3>Amortization Schedule</h3>
          <table className="table table-striped table-hover">
            <tbody>
              <tr>
                <th>Month</th>
                <th>Principal (A)</th>
                <th>Interest (B)</th>
                <th>Total (A + B)</th>
                <th>Balance</th>
                <th>Loan Paid Till Date</th>
              </tr>
              { rows }
            </tbody>
          </table>
        </div>
      </div>
    )`

module.exports = Amortization
