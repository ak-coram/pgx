-- This file is auto generated by pgx.
-- `./sql/load-order.txt` items.
                
-- `extension_sql!()` defined SQL.

-- Schemas defined by `#[pg_schema] mod { /* ... */ }` blocks (except `public` & `pg_catalog`)
CREATE SCHEMA IF NOT EXISTS arrays;

-- Enums derived via `#[derive(PostgresEnum)]`

-- Shell types for types defined by `#[derive(PostgresType)]`

-- src/lib.rs:90
-- arrays::SomeStruct
CREATE TYPE arrays.SomeStruct;

-- Functions defined by `#[pg_extern]`

-- src/lib.rs:93
-- arrays::return_vec_of_customtype
CREATE OR REPLACE FUNCTION arrays."return_vec_of_customtype"() RETURNS SomeStruct[] /* alloc::vec::Vec<arrays::SomeStruct> */
STRICT
SET search_path TO @ extschema @
LANGUAGE c /* Rust */
AS 'MODULE_PATHNAME', 'return_vec_of_customtype_wrapper';

-- src/lib.rs:90
-- arrays::somestruct_out
CREATE OR REPLACE FUNCTION arrays."somestruct_out"(
	"input" SomeStruct  /* arrays::SomeStruct */
) RETURNS cstring /* &std::ffi::c_str::CStr */
IMMUTABLE PARALLEL SAFE STRICT
LANGUAGE c /* Rust */
AS 'MODULE_PATHNAME', 'somestruct_out_wrapper';

-- src/lib.rs:90
-- arrays::somestruct_in
CREATE OR REPLACE FUNCTION arrays."somestruct_in"(
	"input" cstring  /* &std::ffi::c_str::CStr */
) RETURNS SomeStruct /* arrays::SomeStruct */
IMMUTABLE PARALLEL SAFE STRICT
LANGUAGE c /* Rust */
AS 'MODULE_PATHNAME', 'somestruct_in_wrapper';

-- src/lib.rs:81
-- arrays::strip_nulls
CREATE OR REPLACE FUNCTION arrays."strip_nulls"(
	"input" integer[]  /* alloc::vec::Vec<core::option::Option<i32>> */
) RETURNS integer[] /* alloc::vec::Vec<i32> */
STRICT
LANGUAGE c /* Rust */
AS 'MODULE_PATHNAME', 'strip_nulls_wrapper';

-- src/lib.rs:76
-- arrays::i32_array_with_nulls
CREATE OR REPLACE FUNCTION arrays."i32_array_with_nulls"() RETURNS integer[] /* alloc::vec::Vec<core::option::Option<i32>> */
STRICT
LANGUAGE c /* Rust */
AS 'MODULE_PATHNAME', 'i32_array_with_nulls_wrapper';

-- src/lib.rs:71
-- arrays::i32_array_no_nulls
CREATE OR REPLACE FUNCTION arrays."i32_array_no_nulls"() RETURNS integer[] /* alloc::vec::Vec<i32> */
STRICT
LANGUAGE c /* Rust */
AS 'MODULE_PATHNAME', 'i32_array_no_nulls_wrapper';

-- src/lib.rs:61
-- arrays::static_names_set
CREATE OR REPLACE FUNCTION arrays."static_names_set"() RETURNS SETOF text[] /* alloc::vec::Vec<core::option::Option<&str>> */
STRICT
LANGUAGE c /* Rust */
AS 'MODULE_PATHNAME', 'static_names_set_wrapper';

-- src/lib.rs:56
-- arrays::static_names
CREATE OR REPLACE FUNCTION arrays."static_names"() RETURNS text[] /* alloc::vec::Vec<core::option::Option<&str>> */
STRICT
LANGUAGE c /* Rust */
AS 'MODULE_PATHNAME', 'static_names_wrapper';

-- src/lib.rs:43
-- arrays::sum_vec
CREATE OR REPLACE FUNCTION arrays."sum_vec"(
	"input" integer[]  /* alloc::vec::Vec<core::option::Option<i32>> */
) RETURNS bigint /* i64 */
STRICT
LANGUAGE c /* Rust */
AS 'MODULE_PATHNAME', 'sum_vec_wrapper';

-- src/lib.rs:32
-- arrays::sum_array
CREATE OR REPLACE FUNCTION arrays."sum_array"(
	"input" integer[]  /* pgx::datum::array::Array<i32> */
) RETURNS bigint /* i64 */
STRICT
LANGUAGE c /* Rust */
AS 'MODULE_PATHNAME', 'sum_array_wrapper';

-- src/lib.rs:18
-- arrays::approx_distance_pgx
CREATE OR REPLACE FUNCTION arrays."approx_distance_pgx"(
	"compressed" bigint[] , /* pgx::datum::array::Array<i64> */
	"distances" double precision[]  /* pgx::datum::array::Array<f64> */
) RETURNS double precision /* f64 */
IMMUTABLE PARALLEL SAFE STRICT
LANGUAGE c /* Rust */
AS 'MODULE_PATHNAME', 'approx_distance_pgx_wrapper';

-- src/lib.rs:9
-- arrays::sq_euclid_pgx
CREATE OR REPLACE FUNCTION arrays."sq_euclid_pgx"(
	"a" real[] , /* pgx::datum::array::Array<f32> */
	"b" real[]  /* pgx::datum::array::Array<f32> */
) RETURNS real /* f32 */
STRICT
LANGUAGE c /* Rust */
AS 'MODULE_PATHNAME', 'sq_euclid_pgx_wrapper';

-- Types defined by `#[derive(PostgresType)]`

-- src/lib.rs:90
-- arrays::SomeStruct - TypeId { t: 3262737433582561213 }
CREATE TYPE arrays.SomeStruct (
	INTERNALLENGTH = variable,
	INPUT = somestruct_in,
	OUTPUT = somestruct_out,
	STORAGE = extended
);
                            
-- Operator classes defined by `#[derive(PostgresHash, PostgresOrd)]`

