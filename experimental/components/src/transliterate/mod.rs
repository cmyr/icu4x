// This file is part of ICU4X. For terms of use, please see the file
// called LICENSE at the top level of the ICU4X source tree
// (online at: https://github.com/unicode-org/icu4x/blob/main/LICENSE ).

//! Transliteration
//!
//! See [`Transliterator`].

// https://github.com/unicode-org/icu4x/blob/main/docs/process/boilerplate.md#library-annotations
#![cfg_attr(
    not(test),
    deny(
        clippy::indexing_slicing,
        clippy::unwrap_used,
        clippy::expect_used,
        clippy::panic,
        clippy::exhaustive_structs,
        clippy::exhaustive_enums,
        missing_debug_implementations,
    )
)]
#![warn(missing_docs)]

pub mod provider;

mod compile;
mod error;
mod ids;
#[allow(clippy::indexing_slicing, clippy::unwrap_used)] // TODO(#3958): Remove.
mod transliterator;

pub use error::*;
pub use transliterator::*;

#[doc(no_inline)]
pub use TransliteratorError as Error;

pub use compile::RuleCollection;
