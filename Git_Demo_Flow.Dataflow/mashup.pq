[StagingDefinition = [Kind = "FastCopy"]]
section Section1;
shared Table = let
  Source = Table.FromRows(Json.Document(Binary.Decompress(Binary.FromText("i45WMjQyMjY2UYqNBQA=", BinaryEncoding.Base64), Compression.Deflate)), let _t = ((type nullable text) meta [Serialized.Text = true]) in type table [TEST = _t]),
  #"Changed column type" = Table.TransformColumnTypes(Source, {{"TEST", Int64.Type}})
in
  #"Changed column type";
