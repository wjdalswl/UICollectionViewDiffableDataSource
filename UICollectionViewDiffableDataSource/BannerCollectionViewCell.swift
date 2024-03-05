//
//  BannerCollectionViewCell.swift
//  SwiftMVVMPattern
//
//  Created by 정민지 on 3/5/24.
//

import UIKit
import SnapKit
import Kingfisher

class BannerCollectionViewCell: UICollectionViewCell {
    static let id =  "BannerCell"
    private let titleLabel = UILabel()
    private let backgroundImage =  UIImageView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUI()
    }
    
    private func setUI() {
        self.addSubview(backgroundImage)
        self.addSubview(titleLabel)
        
        titleLabel.snp.makeConstraints { make in
            make.center.equalToSuperview()
        }
        backgroundImage.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
    
    public func config(title: String, imageUrl: String) {
        titleLabel.text = title
        

        
        let url = URL(string: imageUrl)
        backgroundImage.kf.setImage(with: url)

    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
