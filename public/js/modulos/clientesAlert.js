const btnEliminarCliente = (cond_numero => {
    Swal.fire({
        title: '¿Estas seguro de borrar un cliente?',
        text: "¡Si borras no se podra recuperar el registro!",
        icon: 'warning',
        showCancelButton: true,
        confirmButtonColor: '#38A52A',
        cancelButtonColor: '#d33',
        confirmButtonText: 'Si, ¡Borrarlo!',
        cancelButtonText: 'No, ¡Cancelar!'
    }).then((result) => {
        if (result.isConfirmed) {
            Swal.fire (
                '¡Borrado!',
                'El registro ha sido borrado.',
                'success'
            );
            setTimeout(() => {
                window.location = `/borrar-cliente/${cond_numero}`
            },2000);
        }
    })
})