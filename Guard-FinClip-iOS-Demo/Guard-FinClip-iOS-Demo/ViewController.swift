//
//  ViewController.swift
//  Guard-FinClip-iOS-Demo
//
//  Created by JnMars on 2022/3/30.
//

import UIKit
import swiftScan
import Guard

class ViewController: UIViewController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.white

        self.showLoginView()

    }

    private func showLoginView() {
        AuthFlow("6244398c8a4575cdb2cb5656").start { code, message, userInfo in
            self.pushUserInfoProfileVC()
        }
    }
    
    private func showMiniPrograms() {
        
        let request = FATAppletRequest.init()
        request.appletId = "6244175278c1a7000142b2c5"
        request.apiServer = "https://api.finclip.com"
        request.transitionStyle = .up
        request.startParams = [:]
        FATClient.shared().startApplet(with: request, inParentViewController: self) { result, error in
            print(error)
            print(result)
        } closeCompletion: {
            print("close")
        }

    }
    
    @IBAction func scanQrCode(_ sender: Any) {
        let scanVC = LBXScanViewController()
        scanVC.scanResultDelegate = self
        self.navigationController?.pushViewController(scanVC, animated: false)
    }
    
    @IBAction func OpenMiniPrograms(_ sender: Any) {
        self.showMiniPrograms()
    }
    
    @IBAction func rightBarButtonAction(_ sender: Any) {
        self.pushUserInfoProfileVC()
    }
    
    private func pushUserInfoProfileVC(){
        let vc = UserProfileViewController(nibName: "AuthingUserProfile", bundle: Bundle(for: UserProfileViewController.self))
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
}

extension ViewController: LBXScanViewControllerDelegate {
    
    func scanFinished(scanResult: LBXScanResult, error: String?) {
        if let scan = scanResult.strScanned {
                
            let qrCode = FATAppletQrCodeRequest.init()
            qrCode.qrCode = scan
            FATClient.shared().startApplet(with: qrCode, inParentViewController: self) { result, error in
                
            } completion: { result, error in
                
            } closeCompletion: {
                
            }

        }
    }
}
