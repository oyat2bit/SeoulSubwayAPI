//
//  ViewController.swift
//  SeoulSubwayAPI
//
//  Created by jamescode on 2022/06/01.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //메모장 서울api key값 확인 후 넣기
        let authKey = ""
        let url = "http://openapi.seoul.go.kr:8088/\(authKey)/json/SearchSTNBySubwayLineInfo/1/1000/"
        getData(from: url)
        
        configureUI()
    }
    
    private func getData(from url: String) {
        let task = URLSession.shared.dataTask(with: URL(string: url)!, completionHandler: {data, response, error in
            guard let data = data, error == nil else {
                print("something went wrong")
                return
            }
            
            //have data
            var subwayResult: SubwayResult?
            do {
                subwayResult = try JSONDecoder().decode(SubwayResult.self, from: data)
            }
            catch {
                print("failed to convert \(error.localizedDescription)")
            }
            
            guard let json = subwayResult else {
                return
            }
            print(json.searchSTNBySubwayLineInfo.row)
        })
        task.resume()
    }
    
}

// MARK: - Private Functions
private extension ViewController {
    func configureUI() {
    }
}
