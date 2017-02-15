val DNA_TO_RNA = mapOf(
    'G' to 'C',
    'C' to 'G',
    'T' to 'A',
    'A' to 'U'
)

fun transcribeToRna(dna: String): String {
    return dna.map { nucleotide -> DNA_TO_RNA[nucleotide] }.joinToString("")
}
