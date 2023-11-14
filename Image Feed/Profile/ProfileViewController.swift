import UIKit

final class ProfileViewController: UIViewController {
    
    private var userLabel: UILabel?
    private var mailLabel: UILabel?
    private var descLabel: UILabel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let imageView = UIImageView(image: UIImage(named: "user_photo.png"))
        imageView.tintColor = .gray
        imageView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(imageView)
        imageView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20).isActive = true
        imageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20).isActive = true
        imageView.widthAnchor.constraint(equalToConstant: 70).isActive = true
        imageView.heightAnchor.constraint(equalToConstant: 70).isActive = true
        
        
        let userName = UILabel()
        customUiLabel(label: userName, labelText: "Екатерина Новикова", colorName: "YP White", fontSize: 23)
        userName.leadingAnchor.constraint(equalTo: imageView.leadingAnchor).isActive = true
        userName.topAnchor.constraint(equalTo: imageView.bottomAnchor).isActive = true
        self.userLabel = userName
        
        let mail = UILabel()
        customUiLabel(label: mail, labelText: "@ekaterina_nov", colorName: "YP Gray", fontSize: 13)
        mail.leadingAnchor.constraint(equalTo: userName.leadingAnchor).isActive = true
        mail.topAnchor.constraint(equalTo: userName.bottomAnchor).isActive = true
        self.mailLabel = mail
        
        let desc = UILabel()
        customUiLabel(label: desc, labelText: "Hello, world!", colorName: "YP White", fontSize: 13)
        desc.leadingAnchor.constraint(equalTo: mail.leadingAnchor).isActive = true
        desc.topAnchor.constraint(equalTo: mail.bottomAnchor, constant: 10).isActive = true
        self.descLabel = desc
        
        let button = UIButton.systemButton(
            with: UIImage(named: "logout_button.png")!,
            target: self,
            action: #selector(Self.logoutButtonAction)
        )
        button.tintColor = UIColor(named: "YP Red")
        button.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(button)
        button.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20).isActive = true
        button.centerYAnchor.constraint(equalTo: imageView.centerYAnchor).isActive = true
    }
    
    @objc
    private func logoutButtonAction() {
        for view in view.subviews {
                    if view is UILabel {
                        view.removeFromSuperview()
                    }
                }
    }
    
    
    private func customUiLabel(label: UILabel, labelText: String, colorName: String, fontSize: CGFloat){
        label.text = labelText
        label.textColor = UIColor(named: colorName)
        label.font = label.font.withSize(fontSize)
        label.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(label)
    }
}
