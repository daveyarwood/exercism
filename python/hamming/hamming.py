def distance(strand_a, strand_b):
    if (len(strand_a) != len(strand_b)):
        raise ValueError("Strands must be the same length.")

    distance = 0

    for (x, y) in zip(strand_a, strand_b):
        if x != y: distance += 1

    return distance
