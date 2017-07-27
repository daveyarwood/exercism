
module nucleotide_count;

import std.string;
import std.array;
import std.algorithm.sorting: sort;
import std.algorithm.comparison: equal;

/*
  I'm getting these errors:

  source/nucleotide_count.d(50,36): Error: mutable method nucleotide_count.Counter.nucleotideCounts is not callable using a const object
  source/nucleotide_count.d(61,21): Error: mutable method nucleotide_count.Counter.countOne is not callable using a const object
  source/nucleotide_count.d(68,21): Error: mutable method nucleotide_count.Counter.countOne is not callable using a const object
  source/nucleotide_count.d(76,42): Error: mutable method nucleotide_count.Counter.nucleotideCounts is not callable using a const object
  source/nucleotide_count.d(85,21): Error: mutable method nucleotide_count.Counter.countOne is not callable using a const object
  source/nucleotide_count.d(93,14): Error: mutable method nucleotide_count.Counter.countOne is not callable using a const object
  source/nucleotide_count.d(95,21): Error: mutable method nucleotide_count.Counter.countOne is not callable using a const object
  source/nucleotide_count.d(104,27): Error: mutable method nucleotide_count.Counter.countOne is not callable using a const object
  source/nucleotide_count.d(112,36): Error: mutable method nucleotide_count.Counter.nucleotideCounts is not callable using a const object

  Seems like the issue is that I'm not correctly qualifying the various
  properties and methods in my class (and/or perhaps the class itself) as
  immutable and/or pure.

  References I found:
  https://stackoverflow.com/questions/29089738/mutable-method-x-this-is-not-callable-using-a-immutable-object-error-in-d
  https://dlang.org/spec/const3.html

  This isn't 100% helpful though, as I'm still fighting the compiler.

  I can't seem to find the correct places to put immutable and/or pure, and I'm
  not understanding what the distinction is between the immutable and pure
  qualifiers.

  Any help here would be greatly appreciated!
*/

class Counter {
  string strand;
  ulong[char] counts;

  this(string s) pure {
    strand = s;
    // TODO: iterate through strand and count nucleotides
    ulong[char] cs;
    counts = cs;
  }

  ulong[char] nucleotideCounts() pure {
    return counts;
  }

  ulong countOne(char nucleotide) pure {
    return counts[nucleotide];
  }
}

unittest
{

// test associative array equality
bool aaEqual (const ulong[char] lhs, const ulong[char] rhs)
{
	auto lhs_pairs = lhs.byKeyValue.array;
	auto rhs_pairs = rhs.byKeyValue.array;
	lhs_pairs.sort!(q{a.key < b.key});
	rhs_pairs.sort!(q{a.key < b.key});

	return equal!("a.key == b.key && a.value == b.value")(lhs_pairs, rhs_pairs);
}

immutable int allTestsEnabled = 1;

// has_no_nucleotides
{
	const Counter dna = new Counter("");
	const ulong[char] expected = ['A': 0, 'T': 0, 'C': 0, 'G':0];

	auto actual = dna.nucleotideCounts();

	assert(aaEqual(expected, actual));
}

static if (allTestsEnabled)
{
// has_no_adenosine
{
	const Counter dna = new Counter("");

	assert(dna.countOne('A') == 0);
}

// repetitive_cytidine_gets_count
{
	const Counter dna = new Counter("CCCCC");

	assert(dna.countOne('C') == 5);
}

// repetitive_sequence_has_only_guanosine
{
	const Counter dna = new Counter("GGGGGGGG");
	const ulong[char] expected = ['A': 0, 'T': 0, 'C': 0, 'G': 8];

	const auto actual = dna.nucleotideCounts();

	assert(aaEqual(expected, actual));
}

// count_only_thymidine
{
	const Counter dna = new Counter("GGGGTAACCCGG");

	assert(dna.countOne('T') == 1);
}

// count_a_nucleotide_only_once
{

	const Counter dna = new Counter("GGTTGG");

	dna.countOne('T');

	assert(dna.countOne('T') == 2);
}

// validates_nucleotides
{
	import std.exception : assertThrown;

	const Counter dna = new Counter("GGTTGG");

	assertThrown(dna.countOne('X'));
}

// count_all_nucleotides)
{
	const Counter dna = new Counter("AGCTTTTCATTCTGACTGCAACGGGCAATATGTCTCTGTGTGGATTAAAAAAAGAGTGTCTGATAGCAGC");
	const ulong[char] expected = ['A': 20, 'T': 21, 'G': 17, 'C': 12 ];

	auto actual = dna.nucleotideCounts();

	assert(aaEqual(expected, actual));
}
}

}
