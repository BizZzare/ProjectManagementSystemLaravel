@extends('voyager::master')

<!-- @section('page_title', __('voyager.generic.viewing').' '.$dataType->display_name_plural) -->

@section('page_header')
    <div class="container-fluid">
        <h1 class="page-title">
            <i class="{{ $dataType->icon }}"></i> {{ $dataType->display_name_plural }}
        </h1>
        @can('add',app($dataType->model_name))
            <a href="{{ route('voyager.'.$dataType->slug.'.create') }}" class="btn btn-success btn-add-new">
                <i class="voyager-plus"></i> <span>{{ __('voyager.generic.add_new') }}</span>
            </a>
        @endcan
    </div>
@stop

@section('content')
	<h1>Projects</h1>
     <?php
         $dsn = 'mysql:dbname=ArgentumLupusDB;host=localhost';
         $user = 'root';
         $password = '';
         try
         {
             $dbh = new PDO($dsn, $user, $password, [PDO::ATTR_ERRMODE=>PDO::ERRMODE_WARNING]);
             $sql = 'SELECT * FROM `projects`';
             foreach ($dbh->query($sql) as $row)
             {
                 if ($row['name'] != 'admin')
                     echo '<div><p>'.$row['id'].'"</p><p>'.$row['name'].'</p></div>';
             }
         }
         catch (PDOException $e)
         {
             echo $e->getMessage();
         }
     >
@endsection

<!-- @section('javascript')
    @if(!$dataType->server_side && config('dashboard.data_tables.responsive'))
        <script src="{{ voyager_asset('lib/js/dataTables.responsive.min.js') }}"></script>
    @endif
    <script>
        $(document).ready(function () {
            @if (!$dataType->server_side)
                var table = $('#dataTable').DataTable({!! json_encode(
                    array_merge([
                        "order" => [],
                        "language" => __('voyager.datatable'),
                    ],
                    config('voyager.dashboard.data_tables', []))
                , true) !!});
            @else
                $('#search-input select').select2({
                    minimumResultsForSearch: Infinity
                });
            @endif

            @if ($isModelTranslatable)
                $('.side-body').multilingual();
            @endif
        });


        var deleteFormAction;
        $('td').on('click', '.delete', function (e) {
            var form = $('#delete_form')[0];

            if (!deleteFormAction)
            {
                deleteFormAction = form.action;
            }

            form.action = deleteFormAction.match(/\/[0-9]+$/)
                ? deleteFormAction.replace(/([0-9]+$)/, $(this).data('id'))
                : deleteFormAction + '/' + $(this).data('id');
            console.log(form.action);

            $('#delete_modal').modal('show');
        });
    </script>
@stop -->