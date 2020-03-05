# OrderedDictionary

This very naive implementation is inspired by ones such as used to be included in some of IBM's Kitura codebases. 

It is well tested and it solves two problems with the Foundation `Dictionary` type when encoding/decoding: 

1. It supports keyed encoding/decoding as long as the `OrderedDictionary` keys are either `LosslessStringConvertible` or `RawRepresentable` as `String`.
2. It retains ordering information while encoding/decoding. Although neither JSON nor YAML give syntactic value to the ordering of dictionaries, the ordering can still have semantic value to the next consumer of the JSON or YAML.
