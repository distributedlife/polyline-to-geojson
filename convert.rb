require "polylines"

puts "{
  \"type\": \"FeatureCollection\",
  \"features\": [
    {
      \"type\": \"Feature\",
      \"properties\": {},
      \"geometry\": {
        \"type\": \"LineString\",
        \"coordinates\": #{Polylines::Decoder.decode_polyline(File.read('data')).map{|pair| [pair[1], pair[0]] }}
      }
    }
  ]
}"