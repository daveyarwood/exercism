@Grab('org.spockframework:spock-core:1.0-groovy-2.4')
import spock.lang.*

class ComplementTest extends Specification {

    @Shared
    def complement = new Complement()

    def 'the rna complement of cytosine is guanine'() {
        expect: complement.ofDNA('C') == 'G'
    }

    def 'the rna complement of guanine is cytosine'() {
        expect: complement.ofDNA('G') == 'C'
    }

    def 'the rna complement of thymine is adenine'() {
        expect: complement.ofDNA('T') == 'A'
    }

    def 'the rna complement of adenine is uracil'() {
        expect: complement.ofDNA('A') == 'U'
    }

    def 'can calculate long strand complement'() {
        expect: complement.ofDNA('ACGTGGTCTTAA') == 'UGCACCAGAAUU'
    }

    def 'correctly handles invalid input'() {
        when: complement.ofDNA('U')
        then: thrown(IllegalArgumentException)
    }

    def 'correctly handles completely invalid input'() {
        when: complement.ofDNA('XXX')
        then: thrown(IllegalArgumentException)
    }

    def 'correctly handles partially invalid input'() {
        when: complement.ofDNA('ACGTXXXCTTAA')
        then: thrown(IllegalArgumentException)
    }

}
