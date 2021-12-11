//
//  MainCollectionViewCell.swift
//  ReleaseProject
//
//  Created by Sehun Kang on 2021/11/23.
//

import UIKit

class MainCollectionViewCell: UICollectionViewCell {
	
	static let identifier = "MainCollectionViewCell"

	@IBOutlet weak var catButton: UIButton!
	
	@IBOutlet weak var poopButton: UIButton!
	@IBOutlet weak var potatoButton: UIButton!
	@IBOutlet weak var eventButton: UIButton!
	
	@IBOutlet weak var poopMinusButton: UIButton!
	@IBOutlet weak var poopPlusButton: UIButton!
	@IBOutlet weak var potatoMinusButton: UIButton!
	@IBOutlet weak var potatoPlusButton: UIButton!
	@IBOutlet weak var doneButton: UIButton!
	
	@IBOutlet weak var poopCountLabel: UILabel!
	@IBOutlet weak var potatoCountLabel: UILabel!
	
	let catImage = UIImageView()
	
	override func awakeFromNib() {
        super.awakeFromNib()
		
		///다음버전에서 대응 예정
		eventButton.isHidden = true
		
		poopCountLabel.textColor = .label
		potatoCountLabel.textColor = .label
		
		catButton.setTitle("", for: .normal)
		catImage.frame = CGRect(x: 0, y: 0, width: catButton.frame.width, height: catButton.frame.height)
		catImage.contentMode = .scaleAspectFit
		catButton.addSubview(catImage)
		
		let poopView = UIImageView(image: UIImage(named: "peanut"))
		poopView.frame = CGRect(x: 0, y: 0, width: poopButton.frame.width, height: poopButton.frame.height)
		poopView.contentMode = .scaleAspectFit
		poopView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
		poopButton.setTitle("", for: .normal)
		poopButton.addSubview(poopView)
		
		let potatoView = UIImageView(image: UIImage(named: "potato"))
		potatoView.frame = CGRect(x: 0, y: 0, width: potatoButton.frame.width, height: potatoButton.frame.height)
		potatoView.contentMode = .scaleAspectFit
		potatoView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
		potatoButton.setTitle("", for: .normal)
		potatoButton.addSubview(potatoView)
		
		
		poopMinusButton.setTitle("", for: .normal)
		poopPlusButton.setTitle("", for: .normal)
		potatoMinusButton.setTitle("", for: .normal)
		potatoPlusButton.setTitle("", for: .normal)
		doneButton.setTitle("done".localized(withComment: "done button"), for: .normal)
		
		poopPlusButton.isHidden = true
		poopMinusButton.isHidden = true
		potatoMinusButton.isHidden = true
		potatoPlusButton.isHidden = true
		doneButton.isHidden = true
		
    }
	
}
