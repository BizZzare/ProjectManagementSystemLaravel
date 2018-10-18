@extends('layouts.app')

@section("content")

    <div class="container">
        <div class="row">
            <div class="col-md-12 col-md-offset-3">
                <h2 class="fTitle wow bounce">Pricing</h2>
                <div class="col wow slideInLeft">
                    <h3>Why it's worth buying?</h3>
                    <p>First of all, you can get acquainted with our features. You just need to click <a href="{{ url("/features") }}">here</a>. The thing is we were doing our best creating this project and will be glad to have some return. If you're interested in the purchase, you can pay after registration.</p>
                </div>
                <div class="col wow slideInRight">
                    <h3>Is it secure to buy here?</h3>
                    <p>Of course it is! We're using one of the most safe billing system of the whole Internet. <a
                                href="https://stripe.com">Stripe</a> will guarantee safety of your card details!</p>
                </div>
                <div class="col wow slideInLeft">
                    <h3>What about the cost?</h3>
                    <p>Now you need to pay $10 monthly in order to use Argentum LUPUS. We hope it's a suitable price for everyone!</p>
                </div>
                <div class="col wow slideInRight">
                    <h3>Can I have a discount?</h3>
                    <p>Sometimes we introduce coupons that can save you about 20%. That is a perfect moment to start using our system. Don't miss it!</p>
                </div>

                <div class="fCard light"></div>
            </div>
        </div>
    </div>

@endsection