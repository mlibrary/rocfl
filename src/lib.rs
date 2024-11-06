// rustimport:pyo3

use pyo3::prelude::*;


pub mod cmd;
pub mod config;
pub mod ocfl;


#[pyfunction]
fn say_hello() {
    println!("Hello from pyrocfl, implemented in Rust!")
}
