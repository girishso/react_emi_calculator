`/** @jsx React.DOM */`

AmortizationRow = React.createClass
  render: ->
    data = @props.data
    `(
       <tr>
        <td>{ data.month }</td>
        <td>&#8377;  { data.principal.round().format_rupees() }</td>
        <td>&#8377;  { data.interest.round().format_rupees() }</td>
        <td>&#8377;  { (data.principal + data.interest).round().format_rupees() }</td>
        <td>&#8377;  { data.balance.round().format_rupees() }</td>
        <td>{ data.loan_paid.round(2).format_rupees() }%</td>
      </tr>
    )`

module.exports = AmortizationRow

