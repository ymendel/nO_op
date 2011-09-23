# What?

I think this question can be best answered by a few contrived examples of what real-world use might look like.

```
# This convoluted code makes sure that the @kind is "credit_card" or
# "purchase_order", and if it's not "credit_card", then the customer
# must not have a payment_method of "credit_card".
if [ 'credit_card', 'purchase_order' ].include?(@kind) && (@kind == 'credit_card' || current_user.customer.payment_method == 'purchase_order')
  @order = ((@kind == 'credit_card') ? CreditCardOrder : PurchaseOrder).new(params[:order])

  O_o
end
```

or

```
current_user.prelude_web_user.shipping_addresses.reject { |a| a.to_s.blank? }.sort_by(&:to_s).O_o.collect {|a| [ a.to_s, a.id ] }
```

I like to think of that second usage as a judgemental `tap`.

## Contributions

You want to contribute to this? Really? Y'know, you should check out my 'truthy' project, too.

## License

nO_op uses the MIT license. Read License.txt if you care.
