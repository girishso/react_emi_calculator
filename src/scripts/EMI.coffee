class EMI
  constructor: (P, I, L) ->
    @P = P
    @J = I/12/100
    @N = L

  summary: ->
    ret = {}
    ret.monthly_emi = @monthly_emi()
    ret.total_payment = ret.monthly_emi * @N
    ret.total_interest = ret.total_payment - @P

    ret

  amortization_schedule: ->
    a = @N
    P = @P
    monthly_emi = @monthly_emi()

    while a > 0
      ret = {}
      a--
      ret.interest = Math.round P * @J, 4
      ret.principal = Math.round monthly_emi - ret.interest, 4
      ret.balance = Math.round P - ret.principal, 4
      P = ret.balance
      ret

  monthly_emi: () ->
    ret = @P * (@J / (1 - Math.pow(1 + @J, -@N)) )
    Math.round ret, 4

module.exports = EMI


_round = Math.round
Math.round = (number, decimals) -> # optional, default 0
  multiplier = Math.pow(10, decimals)
  _round(number * multiplier) / multiplier
