//
//  ViewController.swift
//  Lesson2_4
//
//  Created by Evgeny Mastepan on 03.12.2024.
//

import UIKit

class ViewController: UIViewController {
    let leftIndent: CGFloat = 15
    let bigIndent: CGFloat = 32
    let nameOfUser: String = "Марина Дубровская"
    let titleOfUser: String = "Dream of rain"
    let descriptionOfUser: String = "I dream of rain I dream of gardens in the desert sand I wake in pain I dream of love as time runs through my hand I dream of fire Those dreams are tied to a horse that will never tire And in the flames Her shadows play in the shape of a man's desire"

    lazy var userImage = setImage(name: "face")
    lazy var centerImage = setImage(name: "bike")
    
    lazy var userName = setTextLabel(text: nameOfUser, size: 16, bold: true)
    lazy var nameOfCenterImage = setTextLabel(text: "Desert Rose", color: .white, size: 20, bold: true)
    lazy var titleText = setTextLabel(text: titleOfUser, size: 20, bold: true)
    lazy var descriptionText = setTextLabel(text: descriptionOfUser, size: 16, bold: false)
    
    lazy var grayContainerView: UIView = {
        $0.backgroundColor = .systemGray4
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.layer.cornerRadius = 30
        return $0
    }(UIView())
    
    private lazy var nextButton: UIButton = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.backgroundColor = .systemGreen
        $0.setTitle("Подробно", for: .normal)
        $0.layer.cornerRadius = 30
        $0.isOpaque = true
        return $0
    }(UIButton())
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        view.addSubview(userImage)
        view.addSubview(userName)
        view.addSubview(grayContainerView)
        view.addSubview(centerImage)
        view.addSubview(nameOfCenterImage)
        view.addSubview(titleText)
        view.addSubview(descriptionText)
        view.addSubview(nextButton)
        setConstraints()
    }

    private func setConstraints() {
        NSLayoutConstraint.activate([
            userImage.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: bigIndent),
            userImage.widthAnchor.constraint(equalToConstant: 63),
            userImage.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 44),
            userImage.heightAnchor.constraint(equalToConstant: 63),
            
            userName.leadingAnchor.constraint(equalTo: userImage.trailingAnchor, constant: leftIndent),
            userName.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -leftIndent),
            userName.centerYAnchor.constraint(equalTo: userImage.centerYAnchor),
            userName.heightAnchor.constraint(equalToConstant: 19),
            
            grayContainerView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: leftIndent),
            grayContainerView.topAnchor.constraint(equalTo: userImage.bottomAnchor, constant: bigIndent),
            grayContainerView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -leftIndent),
            grayContainerView.heightAnchor.constraint(equalToConstant: 489),
            
            centerImage.leadingAnchor.constraint(equalTo: grayContainerView.leadingAnchor, constant: leftIndent),
            centerImage.topAnchor.constraint(equalTo: grayContainerView.topAnchor, constant: leftIndent),
            centerImage.trailingAnchor.constraint(equalTo: grayContainerView.trailingAnchor, constant: -leftIndent),
            centerImage.heightAnchor.constraint(equalToConstant: 239),
            
            nameOfCenterImage.leadingAnchor.constraint(equalTo: centerImage.leadingAnchor, constant: leftIndent),
            nameOfCenterImage.topAnchor.constraint(equalTo: centerImage.centerYAnchor, constant: bigIndent + bigIndent),
            nameOfCenterImage.trailingAnchor.constraint(equalTo: centerImage.trailingAnchor, constant: -leftIndent),
            nameOfCenterImage.heightAnchor.constraint(equalToConstant: 24),
            
            titleText.leadingAnchor.constraint(equalTo: centerImage.leadingAnchor, constant: leftIndent),
            titleText.topAnchor.constraint(equalTo: centerImage.bottomAnchor, constant: bigIndent),
            titleText.trailingAnchor.constraint(equalTo: centerImage.trailingAnchor, constant: -leftIndent),
            titleText.heightAnchor.constraint(equalToConstant: 24),
            
            descriptionText.leadingAnchor.constraint(equalTo: grayContainerView.leadingAnchor, constant: leftIndent),
            descriptionText.topAnchor.constraint(equalTo: titleText.bottomAnchor, constant: 5),
            descriptionText.trailingAnchor.constraint(equalTo: grayContainerView.trailingAnchor, constant: -leftIndent),
            descriptionText.heightAnchor.constraint(equalToConstant: 80),
            
            nextButton.leadingAnchor.constraint(equalTo: grayContainerView.leadingAnchor, constant: leftIndent),
            nextButton.topAnchor.constraint(equalTo: descriptionText.bottomAnchor, constant: leftIndent),
            nextButton.trailingAnchor.constraint(equalTo: grayContainerView.trailingAnchor, constant: -leftIndent),
            nextButton.bottomAnchor.constraint(equalTo: grayContainerView.bottomAnchor, constant: -leftIndent)
        ])
    }
    
    func setTextLabel(text: String, color: UIColor = .black, size: CGFloat, bold: Bool) -> UILabel {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = text
        label.textColor = color
        label.numberOfLines = 0
        if bold { label.font = UIFont.systemFont(ofSize: size, weight: .heavy) }
           else { label.font = UIFont.systemFont(ofSize: size) }
        return label
    }
    
    func setImage(name: String) -> UIImageView {
        let image = UIImageView()
        image.image = UIImage(named: name)
        image.translatesAutoresizingMaskIntoConstraints = false
        image.layer.cornerRadius = 31
        image.contentMode = .scaleAspectFill
        image.clipsToBounds = true
        return image
    }
}

