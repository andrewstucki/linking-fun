use std::os::raw::c_char;
use std::ffi::CStr;

#[allow(non_snake_case)]
#[no_mangle]
pub extern "C" fn RustHello(name: *const c_char) {
    let who = unsafe { CStr::from_ptr(name) }.to_string_lossy();
    println!("Hello {:?} from Rust!", who);
}
