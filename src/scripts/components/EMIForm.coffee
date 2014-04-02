`/** @jsx React.DOM */`


EMIForm = React.createClass
  render: ->
    `(
      <div className="well">
        <h1>Home Loan</h1>
        <div className="form">
          <form className="form-horizontal">
            <div className="form-group">
              <label className="control-label col-md-3" for="name">Amount (₹)</label>
              <div className="col-md-4">
                <input type="text" className="form-control" name="amount"/>
              </div>
            </div>
            <div className="form-group">
              <label className="control-label col-md-3" for="interest">Interest Rate (%)</label>
              <div className="col-md-4">
                <input type="text" className="form-control" name="interest"/>
              </div>
            </div>
            <div className="form-group">
              <label className="control-label col-md-3" for="tenure">Tenure</label>
              <div className="col-md-3">
                <input type="text" className="form-control" name="tenure"/>
                <label className="radio">
                  <input type="radio" value="" name="years"/>
                  <span>Years</span>
                </label>
                <label className="radio">
                  <input type="radio" value="" name="months"/>
                  <span>Months</span>
                </label>
              </div>
            </div>
          </form>
        </div>
      </div>
    )`

module.exports = EMIForm
