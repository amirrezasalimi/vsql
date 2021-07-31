import os
import vsql

fn main() {
	os.rm('test.vsql') or {}
	example() or { panic(err) }
}

fn example() ? {
	mut db := vsql.open('test.vsql') ?

	// All SQL commands use query():
	db.query('CREATE TABLE foo (a DOUBLE PRECISION)') ?
	db.query('INSERT INTO foo (a) VALUES (1.23)') ?
	db.query('INSERT INTO foo (a) VALUES (4.56)') ?

	// Iterate through a result:
	result := db.query('SELECT * FROM foo') ?
	println(result.columns)

	for row in result {
		println(row.get_f64('A') ?)
	}
}