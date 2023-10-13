func solution(_ s1:[String], _ s2:[String]) -> Int { s2.filter {s1.contains($0)}.count }
