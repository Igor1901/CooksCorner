//
//  SearchView.swift
//  CooksCorner
//
//  Created by Игорь Пачкин on 23/3/24.
//


import UIKit
import SnapKit

class SearchView: UIView {
    
    // MARK: - Properties
    
    private let questionLabel: UILabel = {
        let label = UILabel()
        label.text = "What to eat\ntoday?"
        label.numberOfLines = 0
        label.textAlignment = .center
        label.font = UIFont(name: "MPLUS1p-Medium", size: 22)
        return label
    }()
    
    // MARK: - segment
    
    let segmentedControlBackground: UIView = {
           let view = UIView()
           view.backgroundColor = UIColor.orange // Предполагаем, что это светло-жёлтый цвет
           view.layer.cornerRadius = 26
           return view
       }()
    
    // Ваши другие свойства и методы
        
    let chefsButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Chefs", for: .normal)
        button.setTitleColor(UIColor.orange, for: .normal)
        button.backgroundColor = UIColor.gray
        button.layer.cornerRadius = 17
        //button.addTarget(self, action: #selector(segmentChanged(_:)), for: .touchUpInside)
        return button
    }()
    
    let recipesButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Recipes", for: .normal)
        button.setTitleColor(UIColor.orange, for: .normal)
        button.backgroundColor = UIColor.lightGray // Здесь будет светло-жёлтый цвет
        button.layer.cornerRadius = 17
        //button.addTarget(self, action: #selector(segmentChanged(_:)), for: .touchUpInside)
        return button
    }()
    
    // MARK: - search
    
    lazy var searchView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.layer.cornerRadius = 22
        view.layer.borderWidth = 1
        view.layer.borderColor = UIColor.orange.cgColor
        //view.backgroundColor = UIColor(red: 248/255, green: 248/255, blue: 248/255, alpha: 1)
        return view
    }()
    
     let searchTextField: UITextField = {
        let textField = UITextField()
        //textField.font = UIFont(name: "MPLUS1p-Medium", size: 16)!
         //textField.font = ui
        textField.isSecureTextEntry = true
        textField.attributedPlaceholder = NSAttributedString(
            string: "Search recipes",
            attributes: [
                //NSAttributedString.Key.font: UIFont(name: "MPLUS1p-Medium", size: 16)!,
                NSAttributedString.Key.foregroundColor: UIColor.lightGray
            ]
        )
        return textField
    }()
    
     let searchButton: UIButton = {
         let button = UIButton()
         button.setImage(UIImage(systemName: "magnifyingglass"), for: .normal)
         button.contentMode = .scaleAspectFit
         button.tintColor = .black
         return button
    }()
    
    // MARK: - Initializers
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Setup
    
    private func setupViews() {
        addSubview(questionLabel)
        addSubview(segmentedControlBackground)
        segmentedControlBackground.addSubview(chefsButton)
        segmentedControlBackground.addSubview(recipesButton)
        addSubview(searchView)
        searchView.addSubview(searchTextField)
        searchView.addSubview(searchButton)
    }
    
    private func setupConstraints() {
        questionLabel.snp.makeConstraints { make in
            make.top.equalTo(safeAreaLayoutGuide.snp.top).offset(14)
            make.centerX.equalToSuperview()
        }
        
        segmentedControlBackground.snp.makeConstraints { make in
            make.top.equalTo(questionLabel.snp.bottom).offset(24)
            make.leading.trailing.equalToSuperview().inset(20)
            make.height.equalTo(52)
        }
        
        chefsButton.snp.makeConstraints { make in
            make.centerY.equalToSuperview()
            make.top.bottom.equalToSuperview().inset(8)
            make.leading.equalToSuperview().inset(8.5)
            make.width.equalTo(160)
        }
        
        recipesButton.snp.makeConstraints { make in
            make.centerY.equalToSuperview()
            make.top.bottom.equalToSuperview().inset(8)
            make.trailing.equalToSuperview().offset(-8.5)
            make.width.equalTo(160)
        }
        
        searchView.snp.makeConstraints { make in
            make.top.equalTo(segmentedControlBackground.snp.bottom).offset(32)
            make.leading.trailing.equalToSuperview().inset(20)
            make.height.equalTo(44)
        }
        
        searchTextField.snp.makeConstraints { make in
            make.centerY.equalToSuperview()
            make.leading.equalTo(16)
            make.trailing.equalTo(-48)
        }
        
        searchButton.snp.makeConstraints { make in
            make.centerY.equalToSuperview()
            make.trailing.equalToSuperview().offset(-15)
            make.width.equalTo(20)
            make.height.equalTo(20)
        }
    }
    
}
