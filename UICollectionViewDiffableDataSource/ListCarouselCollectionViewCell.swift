//
//  ListCarouselCollectionViewCell.swift
//  SwiftMVVMPattern
//
//  Created by 정민지 on 3/6/24.
//

import Foundation
import UIKit

class ListCarouselCollectionViewCell: UICollectionViewCell {
    static let id =  "ListCarouselCell"
    private let mainImage = UIImageView()
    private let titleLabel = UILabel()
    private let subTitleLabel =  UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUI()
    }
    
    private func setUI() {
        self.addSubview(mainImage)
        self.addSubview(titleLabel)
        self.addSubview(subTitleLabel)
        
        mainImage.snp.makeConstraints { make in
            make.top.leading.bottom.equalToSuperview()
            make.width.equalTo(60)
        }
        titleLabel.snp.makeConstraints { make in
            make.top.trailing.equalToSuperview()
            make.leading.equalTo(mainImage.snp.trailing).offset(8)
        }
        subTitleLabel.snp.makeConstraints { make in
            make.top.equalTo(titleLabel.snp.bottom).offset(8)
            make.leading.equalTo(mainImage.snp.trailing).offset(8)
            make.trailing.equalToSuperview()
        }
    }
    
    public func config(imageUrl: String, title: String, subTitle: String?) {
        mainImage.kf.setImage(with: URL(string: imageUrl))
        titleLabel.text = title
        subTitleLabel.text = subTitle
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
