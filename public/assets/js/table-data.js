$(function(e) {
	//file export datatable
   // console.log("SSSSSSalamo alikom");
	var table = $('#example').DataTable({
		lengthChange: true,
		// buttons: [ 'copy', 'excel', 'pdf', 'colvis' ],
        buttons: [ 'copy', 'excel', 'colvis' ],
		responsive: false,
		language: {
			searchPlaceholder: 'Recherche...',
			sSearch: '',
			lengthMenu: '_MENU_ ',
            info: "Affichage de l'&eacute;lement _START_ &agrave; _END_ sur _TOTAL_ &eacute;l&eacute;ments",
            infoEmpty:
                "Affichage de l'&eacute;lement 0 &agrave; 0 sur 0 &eacute;l&eacute;ments",
            infoFiltered: '(filtr&eacute; de _MAX_ &eacute;l&eacute;ments au total)',
		},
        footerCallback: function () {
            // console.log("SSSSSS");
            var tableFoot = this.children('tfoot').children();
            if (tableFoot.length) {
                let api = this.api();
                // Remove the formatting to get integer data for summation
                let intVal = function (i) {
                    return typeof i === 'string'
                        ? i.replace(/[\$,]/g, '') * 1
                        : typeof i === 'number'
                            ? i
                            : 0;
                };
                var i;
                for (i = 7; i <= 10; i++) {
                    var data = api.column(i, {search: 'applied'}).data();
                    if (data.length) {
                        var total = data.reduce(function (a, b) {
                            return intVal(a) + intVal(b);
                        });
                    } else {
                        total = 0;
                    }
                    // Update footer
                    var display = parseFloat(total).toFixed(2).toString().replace(/\B(?=(?:\d{3})+(?!\d))/g, ' ');
                    $(api.column(i).footer()).html(display);
                    // .toFixed(2).toString().replace(/\B(?=(?:\d{3})+(?!\d))/g, ' ')
                }
            }
        }
	});
	table.buttons().container()
	.appendTo( '#example_wrapper .col-md-6:eq(0)' );

	$('#example1').DataTable({
      //  buttons: [ 'copy', 'excel', 'colvis' ],
		language: {
			searchPlaceholder: 'Search...',
			sSearch: '',
			lengthMenu: '_MENU_',
		}
	});
	$('#example2').DataTable({
		responsive: true,
		language: {
			searchPlaceholder: 'Search...',
			sSearch: '',
			lengthMenu: '_MENU_',
		}
	});
	var table = $('#example-delete').DataTable({
		responsive: true,
		language: {
			searchPlaceholder: 'Search...',
			sSearch: '',
			lengthMenu: '_MENU_',
		}
	});
    $('#example-delete tbody').on( 'click', 'tr', function () {
        if ( $(this).hasClass('selected') ) {
            $(this).removeClass('selected');
        }
        else {
            table.$('tr.selected').removeClass('selected');
            $(this).addClass('selected');
        }
    } );

    $('#button').click( function () {
        table.row('.selected').remove().draw( false );
    } );

	//Details display datatable
	$('#example-1').DataTable( {
        buttons: [ 'copy', 'excel', 'colvis' ],
		language: {
			searchPlaceholder: 'Search...',
			sSearch: '',
			lengthMenu: '_MENU_',
		},
		responsive: {
			details: {
				display: $.fn.dataTable.Responsive.display.modal( {
					header: function ( row ) {
						var data = row.data();
						return 'Details for '+data[0]+' '+data[1];
					}
				} ),
				renderer: $.fn.dataTable.Responsive.renderer.tableAll( {
					tableClass: 'table border mb-0'
				} )
			}
		}
	} );
});
