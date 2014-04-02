`/** @jsx React.DOM */`

EMIForm = require("./EMIForm.coffee")
Summary = require("./Summary.coffee")

EMICalculator = React.createClass
  render: ->
    `(
    <div className="mainbar">
          <h3 id="home">EMI Calculator</h3>
          <div className="row">
            <div className="col-md-8 col-sm-8">
              <div className="is">
                <EMIForm />
                <Summary />
              </div>

            </div>
          </div>

          <div className="row">
            <div className="col-md-12 col-sm-12">
              <div className="cwell">
                <h3>Amortization Schedule</h3>
                <table className="table table-striped table-hover">
                  <tbody><tr>
                    <th>Year</th>
                    <th>Principal (A)</th>
                    <th>Interest (B)</th>
                    <th>Total (A + B)</th>
                    <th>Balance</th>
                    <th>Loan Paid Till Date</th>
                  </tr>
                  <tr>
                    <td>2014</td>
                    <td>₹ 10,000</td>
                    <td>₹ 10,000</td>
                    <td>₹ 10,000</td>
                    <td>₹ 10,000</td>
                    <td>0.2%</td>
                  </tr>
                  <tr>
                    <td>2014</td>
                    <td>₹ 10,000</td>
                    <td>₹ 10,000</td>
                    <td>₹ 10,000</td>
                    <td>₹ 10,000</td>
                    <td>0.2%</td>
                  </tr>

                </tbody></table>

              </div>
            </div>
          </div>
        </div>

    )`

module.exports = EMICalculator
