/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
//check null & check length
function check_null(obj, error_message_id, length_min, length_max, error_message_check_length_id) {
    var temp = $("#" + obj);
    if (temp.val() == "") {
        $("#" + error_message_id).fadeIn("slow").show();
        temp.focus();
        return false;
    } else {
    if (length_min != null) {
        if (temp.val().length < length_min) {
            $("#" + error_message_check_length_id).fadeIn("slow").show();
            temp.focus();
            return false;
            }
        }
        
        if (length_max != null) {
            if (temp.val().length > length_max) {
                $("#" + error_message_check_length_id).fadeIn("slow").show();
                temp.focus();
                return false;
            }
        }
        return true;
    }
}
//compare password
function compare(obj, obj_to_compare, error_message_id) {
    var temp = $("#" + obj);
    var temp_to_compare = $("#" + obj_to_compare);
    if (temp.val() != temp_to_compare.val()) {
        $("#" + error_message_id).fadeIn("slow").show();
        temp_to_compare.focus();
        return false;
    }
    return true;
}
//check email structure
function echeck(d) {
    return /^([a-zA-Z0-9_\-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([a-zA-Z0-9\-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/.test(d);
}
//check email
function check_email(obj, error_message_id) {
    var temp = $("#" + obj);
    if (!echeck(temp.val())) {
        $("#" + error_message_id).fadeIn("slow").show();
        temp.focus();            
        return false;
    }           
    return true;
}
//check contact structure
function ccheck(c){
    return /^([0-9])$/.test(c);
}
//check contact
function check_contact(obj, error_message_id){
    var temp = $("#" + obj);
    if (ccheck(temp.val())){
        $("#" + error_message_id).fadeIn("slow").show();
        temp.focus();
        return false;
    }
    return true;
}

