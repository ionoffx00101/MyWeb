	$(init);
	function init() {
		$('#btn_cart_add').on('click', function() {

			var qty = $('#qty').val();
			$('input[name=qty]').val(qty);
			var serializeData = $('#form').serialize();

			$.post("addBook.jsp", serializeData, function(res) {

				if (res.check) {
					alert("장바구니에 넣었습니다.");
				} else {
					alert("장바구니에 담는 도중 오류가 발생했습니다.");
				}

			}, 'json');
		});
		
		$('#btn_cart_view').on('click', function() {

		
		});

	}