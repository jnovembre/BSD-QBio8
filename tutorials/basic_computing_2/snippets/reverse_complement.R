# Get the reverse complement of a DNA sequence.
sequence <- "ACCTGAG"
reversed <- paste(rev(unlist(strsplit(sequence, NULL))), collapse = "")
rev_complement <- chartr("ATGCN", "TACGN", reversed)
