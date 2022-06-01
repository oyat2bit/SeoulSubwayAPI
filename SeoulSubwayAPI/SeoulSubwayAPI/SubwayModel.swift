// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let welcome = try? newJSONDecoder().decode(Welcome.self, from: jsonData)

import Foundation

// MARK: - SubwayResult
struct SubwayResult: Codable {
    let searchSTNBySubwayLineInfo: SearchSTNBySubwayLineInfo
    
    enum CodingKeys: String, CodingKey {
        case searchSTNBySubwayLineInfo = "SearchSTNBySubwayLineInfo"
    }
}

// MARK: - SearchSTNBySubwayLineInfo
struct SearchSTNBySubwayLineInfo: Codable {
    let row: [SubwayData]
    
}

// api로 담아올 수 있는 지하철 역 정보
struct SubwayData: Codable {
    let station: String
    let line: String
    
    enum CodingKeys: String, CodingKey {
        case station = "STATION_NM"
        case line = "LINE_NUM"
    }
}
