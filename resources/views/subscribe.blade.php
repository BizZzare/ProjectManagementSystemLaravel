@extends("layouts.app")

@section('post-js')

    <div class="container">

            <form action="{{ url('/subscribe') }}" method="POST">
                <div class="row">
            <div class="col-md-6 col-md-offset-3">

                <h2 class="fTitle wow bounce">Subscribe</h2>


                    {{csrf_field()}}
                    <script
                            src="https://checkout.stripe.com/checkout.js" class="stripe-button"
                            data-key="pk_test_Oxj8vk1VeJyHqhdPCt6pjmvL"
                            data-amount="1000"
                            data-name="Argentum Lupus"
                            data-description="Entering charge"
                            data-label="Subscribe Now"
                            data-panel-label="Pay monthly"
                            data-email="{{auth()->check()?auth()->user()->email : null}}"
                            data-image="https://stripe.com/img/documentation/checkout/marketplace.png"
                            data-locale="auto">
                    </script>


            </div>
            <div class="col-md-6 ">
                <h2 class="fTitle wow bounce">Have a coupon?</h2>
                <input type="text" name="coupon" placeholder="Type it here">
            </div>
                </div>
            </form>

    </div>
@endsection