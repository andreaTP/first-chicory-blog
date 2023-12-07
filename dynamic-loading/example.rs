#[no_mangle]
pub extern fn exported_function(value: i32) -> i32 {
    value + 1
}
