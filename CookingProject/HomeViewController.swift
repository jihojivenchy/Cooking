//
//  ViewController.swift
//  CookingProject
//
//  Created by 엄지호 on 2022/07/08.
//

import UIKit
import SnapKit



class HomeViewController: UIViewController {
    
    let searchButton = UIBarButtonItem(barButtonSystemItem: .search, target: nil, action: nil)
    
    let toolBar = UIToolbar()
    let homeButton = UIBarButtonItem(title: "홈", style: .done, target: nil, action: nil)
    let registerButton = UIBarButtonItem(title: "등록", style: .done, target: nil, action: nil)
    let notificationButton = UIBarButtonItem(title: "알림", style: .done, target: nil, action: nil)
    let myPageButton = UIBarButtonItem(title: "My", style: .done, target: nil, action: nil)
    let flexibleSpaceButton = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)

    let temaLabel = UILabel()
    //한식 중식 양식 일식 간식 채식 퓨전 분식 안주 모두보기
    let kButton = UIButton()      //한식 버튼
    let cButton = UIButton()      //중식 버튼
    let aButton = UIButton()      //양식 버튼
    let jButton = UIButton()      //일식 버튼
    let sButton = UIButton()      //간식 버튼
    let veButton = UIButton()      //채식 버튼
    let fuButton = UIButton()      //퓨전 음식 버튼
    let sfButton = UIButton()      //분식 버튼
    let lightButton = UIButton()      //가벼운 안주 버튼
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewChange()
    }
    
    func viewChange() {
        
        navigationController?.navigationBar.tintColor = .black
        navigationItem.title = "요리가 좋아"
        navigationItem.rightBarButtonItem = searchButton
        
        view.addSubview(toolBar)
        toolBar.isTranslucent = false
        toolBar.backgroundColor = .white
        toolBar.setItems([flexibleSpaceButton, homeButton, flexibleSpaceButton, registerButton, flexibleSpaceButton, notificationButton, flexibleSpaceButton, myPageButton, flexibleSpaceButton], animated: false)
        toolBar.tintColor = .black
        toolBar.snp.makeConstraints { make in
            make.bottom.equalTo(view.safeAreaInsets).inset(20)
            make.left.right.equalTo(view).inset(0)
            make.height.equalTo(40)
        }
        
        view.addSubview(temaLabel)
        temaLabel.text = "요리 테마"
        temaLabel.textAlignment = .center
        temaLabel.font = .systemFont(ofSize: 30)
        temaLabel.snp.makeConstraints { make in
            make.top.equalTo(view).inset(150)
            make.centerX.equalTo(view)
            make.width.equalTo(130)
            make.height.equalTo(70)
        }
        
        view.addSubview(kButton)
        kButton.setTitle("한식", for: .normal)
        kButton.backgroundColor = .orange
        kButton.snp.makeConstraints { make in
            make.top.equalTo(temaLabel.snp_bottomMargin).offset(40)
            make.left.equalTo(view).inset(30)
            make.width.equalTo(70)
            make.height.equalTo(70)
        }
        
        view.addSubview(cButton)
        cButton.setTitle("중식", for: .normal)
        cButton.backgroundColor = .orange
        cButton.snp.makeConstraints { make in
            make.top.equalTo(temaLabel.snp_bottomMargin).offset(40)
            make.centerX.equalTo(view)
            make.width.equalTo(70)
            make.height.equalTo(70)
        }
        
        view.addSubview(aButton)
        aButton.setTitle("양식", for: .normal)
        aButton.backgroundColor = .orange
        aButton.snp.makeConstraints { make in
            make.top.equalTo(temaLabel.snp_bottomMargin).offset(40)
            make.right.equalTo(view).inset(30)
            make.width.equalTo(70)
            make.height.equalTo(70)
        }
        
        view.addSubview(jButton)
        jButton.setTitle("일식", for: .normal)
        jButton.backgroundColor = .orange
        jButton.snp.makeConstraints { make in
            make.top.equalTo(kButton.snp_bottomMargin).offset(30)
            make.left.equalTo(view).inset(30)
            make.width.equalTo(70)
            make.height.equalTo(70)
        }
        
        view.addSubview(sButton)
        sButton.setTitle("간식", for: .normal)
        sButton.backgroundColor = .orange
        sButton.snp.makeConstraints { make in
            make.top.equalTo(kButton.snp_bottomMargin).offset(30)
            make.centerX.equalTo(view)
            make.width.equalTo(70)
            make.height.equalTo(70)
        }
        
        view.addSubview(veButton)
        veButton.setTitle("채식", for: .normal)
        veButton.backgroundColor = .orange
        veButton.snp.makeConstraints { make in
            make.top.equalTo(kButton.snp_bottomMargin).offset(30)
            make.right.equalTo(view).inset(30)
            make.width.equalTo(70)
            make.height.equalTo(70)
        }
        
        view.addSubview(fuButton)
        fuButton.setTitle("퓨전", for: .normal)
        fuButton.backgroundColor = .orange
        fuButton.snp.makeConstraints { make in
            make.top.equalTo(veButton.snp_bottomMargin).offset(30)
            make.left.equalTo(view).inset(30)
            make.width.equalTo(70)
            make.height.equalTo(70)
        }
        
        view.addSubview(sfButton)
        sfButton.setTitle("분식", for: .normal)
        sfButton.backgroundColor = .orange
        sfButton.snp.makeConstraints { make in
            make.top.equalTo(veButton.snp_bottomMargin).offset(30)
            make.centerX.equalTo(view)
            make.width.equalTo(70)
            make.height.equalTo(70)
        }
        
        view.addSubview(lightButton)
        lightButton.setTitle("안주", for: .normal)
        lightButton.backgroundColor = .orange
        lightButton.snp.makeConstraints { make in
            make.top.equalTo(veButton.snp_bottomMargin).offset(30)
            make.right.equalTo(view).inset(30)
            make.width.equalTo(70)
            make.height.equalTo(70)
        }
        
    }


}



