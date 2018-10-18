@extends("layouts.app")

@section('post-js')

    <div class="container">
        <div class="col-md-6 col-md-offset-3">
            <h2 class="fTitle wow bounce">Got a new one? It's easy to update your card details!</h2>
        <form action="{{ url('/update') }}" method="POST">
            {{csrf_field()}}
            <script
                    src="https://checkout.stripe.com/checkout.js" class="stripe-button"
                    data-key="pk_test_Oxj8vk1VeJyHqhdPCt6pjmvL"
                    data-name="Argentum LUPUS"
                    data-description="Enter your new card"
                    data-label="New Card"
                    data-panel-label="Update"
                    data-email="{{auth()->check()?auth()->user()->email : null}}"
                    data-image="https://stripe.com/img/documentation/checkout/marketplace.png"
                    data-locale="auto">
            </script>
        </form>
        </div>
    </div>
@endsection
