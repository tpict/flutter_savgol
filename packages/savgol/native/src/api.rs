use savgol_rs::{savgol_filter as lib_savgol_filter, SavGolInput};

pub fn savgol_filter(
    x: Vec<f64>,
    window_length: usize,
    poly_order: usize,
    derivative: usize,
) -> Result<Vec<f64>, String> {
    lib_savgol_filter(&SavGolInput {
        data: &x,
        window_length,
        poly_order,
        derivative,
    })
}
