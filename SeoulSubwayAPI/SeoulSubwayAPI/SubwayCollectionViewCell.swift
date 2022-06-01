//
//  SubwayCollectionViewCell.swift
//  SeoulSubwayAPI
//
//  Created by jamescode on 2022/06/01.
//

import UIKit
import SnapKit

class SubwayCollectionViewCell: UICollectionViewCell {
    
    private lazy var stationNameLabel : UILabel = {
        let label = UILabel()
        return label
    }()
    
    private lazy var stationLineLabel : UILabel = {
        let label = UILabel()
        return label
    }()
    
    required init?(coder: NSCoder) {
           super.init(coder: coder)
           setUpCell()
           setUpLabel()
       }
       
       override init(frame: CGRect) {
           super.init(frame: .zero)
           setUpCell()
           setUpLabel()
       }
    
    func setUpCell() {
            contentView.addSubview(stationNameLabel)
        contentView.addSubview(stationLineLabel)
        stationNameLabel.snp.makeConstraints { make in
            make.top.bottom.leading.trailing.equalTo(safeAreaLayoutGuide)
        }
        
    }
            
        func setUpLabel() {
            stationNameLabel.font = UIFont.systemFont(ofSize: 32)
            stationNameLabel.textAlignment = .center
        }
    
}
