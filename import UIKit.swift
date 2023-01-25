import UIKit

class DiaryViewController: UIViewController {
    //MARK: - Properties
    var diaryTextView: UITextView!
    var diaryTitle: UITextField!
    var saveButton: UIButton!
    
    //MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        setUpView()
    }
    
    //MARK: - SetUpView
    func setUpView() {
        //create a title label
        let titleLabel = UILabel()
        titleLabel.text = "Diary Entry"
        titleLabel.textAlignment = .center
        titleLabel.font = UIFont.boldSystemFont(ofSize: 24)
        self.view.addSubview(titleLabel)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 20).isActive = true
        titleLabel.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 20).isActive = true
        titleLabel.rightAnchor.constraint(equalTo: self.view.rightAnchor, constant: -20).isActive = true
        titleLabel.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        //create a diary title textField
        diaryTitle = UITextField()
        diaryTitle.placeholder = "Title"
        diaryTitle.borderStyle = .roundedRect
        self.view.addSubview(diaryTitle)
        diaryTitle.translatesAutoresizingMaskIntoConstraints = false
        diaryTitle.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 20).isActive = true
        diaryTitle.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 20).isActive = true
        diaryTitle.rightAnchor.constraint(equalTo: self.view.rightAnchor, constant: -20).isActive = true
        diaryTitle.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        //create a diary textview
        diaryTextView = UITextView()
        diaryTextView.layer.borderWidth = 1
        diaryTextView.layer.borderColor = UIColor.lightGray.cgColor
        diaryTextView.layer.cornerRadius = 5
        diaryTextView.font = UIFont.systemFont(ofSize: 18)
        self.view.addSubview(diaryTextView)
        diaryTextView.translatesAutoresizingMaskIntoConstraints = false
        diaryTextView.topAnchor.constraint(equalTo: diaryTitle.bottomAnchor, constant: 20).isActive = true
        diaryTextView.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 20).isActive = true
        diaryTextView.right
