
# Project Documentation

## Overview

This project provides a Rust macro that generates **COBOL** source code. The goal is to use Rust macros to dynamically generate COBOL programs for migration, maintenance, or enhancement purposes.

### COBOL Code

The following **COBOL** code example is designed to take a *Social Security Number* as input and display it. Below is the *example* COBOL code:

```cobol
>>SOURCE FORMAT FREE
       identification division.
       program-id. working_with_input.
       author. John Doe.
       date-written. May 23rd 2024
       environment division.
       
       data division.
       file section.
       working-storage section.
       *> Social Security Number.
       01 SocialSecurityNumber pic x(30) value "[OUTPUT] ->".
       
       procedure division.
       display "Input Social Security Number: " with no advancing
       accept SocialSecurityNumber
       display "[SSN] -> " SocialSecurityNumber

       stop run.
``` 

### Rust Macro

The following Rust macro will generate the above COBOL code dynamically.

```rust
use std::fs::File;
use std::io::{self, Write};

macro_rules! generate_cobol {
    ($program_id:expr, $author:expr, $date_written:expr, $variable_name:expr, $variable_length:expr, $display_prompt:expr, $output_filename:expr) => {{
        let cobol_code = format!(
            r#">>SOURCE FORMAT FREE
       identification division.
       program-id. {}.
       author. {}.
       date-written.{}
       environment division.
       
       data division.
       file section.
       working-storage section.
       *> {}.
       01 {} pic x({}) value "[OUTPUT] ->".
       
       procedure division.
       display "{}" with no advancing
       accept {}
       display "[{}] -> " {}

       stop run.
            "#,
            $program_id,
            $author,
            $date_written,
            $variable_name,
            $variable_name,
            $variable_length,
            $display_prompt,
            $variable_name,
            $variable_name,
            $variable_name
        );

        let mut file = File::create($output_filename)?;
        file.write_all(cobol_code.as_bytes())?;
        Ok(())
    }};
}

fn main() {
    if let Err(e) = generate_cobol!(
        "working_with_input",
        "Irfan Ghat",
        "May 23rd 2024",
        "SocialSecurityNumber",
        30,
        "Input Social Security Number: ",
        "working_with_input.cbl"
    ) {
        eprintln!("Failed to save COBOL code: {}", e);
    } else {
        println!("COBOL code generated and saved to working_with_input.cbl");
    }
}
``` 

### Detailed Explanation

1.  **COBOL Code Template**:
    
    -   This template represents a simple COBOL program that prompts for a Social Security Number and displays it.
2.  **Rust Macro**:
    
    -   The `generate_cobol!` macro takes seven parameters: program ID, author, date written, variable name, variable length, display prompt, and output filename.
    -   Inside the macro, `format!` is used to generate the COBOL source code dynamically.
    -   The generated code is written to the specified file.
3.  **Main Function**:
    
    -   The `main` function calls the `generate_cobol!` macro with the appropriate parameters to generate and save the COBOL code.

### Usage

1.  Ensure you have Rust installed on your system. If not, download and install it from [rust-lang.org](https://www.rust-lang.org/).
2.  Save the Rust code in a file named `main.rs`.
3.  Compile and run the Rust code: `cargo run`
 
    
4.  The generated COBOL code will be saved to `working_with_input.cbl`.

## Contributing

Feel free to contribute to this project by submitting issues or pull requests. Ensure that any new code is well-documented and tested.

## License

This project is licensed under the MIT License. See the LICENSE file for details.