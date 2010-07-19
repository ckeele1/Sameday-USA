function remove_fields(link) {
	$j(link).parents('.fields').next(".remove-field").value = "1";
	$j(link).parents('.fields').addClass('pending-delete');
	$j(link).parents('.fields').children(".remove").hide();
	$j(link).parents('.fields').children(".undo-remove").show();
}

function undo_remove_fields(link) {
	$j(link).parents('.fields').next(".remove-field").value = "0";
	$j(link).parents('.fields').removeClass('pending-delete');
	$j(link).parents('.fields').children(".remove").show();
	$j(link).parents('.fields').children(".undo-remove").hide();
}

function add_fields(link, association, content) {
	var new_id = new Date().getTime();
	var regexp = new RegExp("new_" + association, "g");
	$j(link).parents('.add-more').before(content.replace(regexp, new_id));
	$j(link).parents('.add-more').children('.fields')
}