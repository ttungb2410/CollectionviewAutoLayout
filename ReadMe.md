   **AutoLayoutCode**
   
   **Usage**
   
   **Quick Start**

// add extension Contraint
```sh
extension UIView{
    func addConstraintsWithFormat(format: String, views: UIView...){
        var viewsDictionary = [String: UIView]()
        for (index, view) in views.enumerated(){
            let key = "v\(index)"
            view.translatesAutoresizingMaskIntoConstraints = false
            viewsDictionary[key] = view
        }
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: format, options: NSLayoutFormatOptions(), metrics: nil, views: viewsDictionary))
    }
}
```


E.g: class VideoCell: UICollectionViewCell{



 **contraint objects together**

note: H : Horizontal V : Vertical v0,v1,v2,v3: views in the order listed
```sh
 addConstraintsWithFormat(format: "H:|-16-[v0]-16-|", views: thumbnailImageView)

 addConstraintsWithFormat(format: "H:|-16-[v0(44)]|", views: userProfileImageView)
```

//vertical constraints
```sh
addConstraintsWithFormat(format: "V:|-16-[v0]-8-[v1(44)]-16-[v2(1)]|", views: thumbnailImageView,userProfileImageView, separatorView)

addConstraintsWithFormat(format: "H:|[v0]|", views: separatorView)
```
**Constrant 1 object by another object**

// top constraint
```sh
addConstraint(NSLayoutConstraint(item: titleLabel, attribute: .top, relatedBy: .equal, toItem: thumbnailImageView, attribute: .bottom, multiplier: 1, constant: 8))
```
// left constraint
```sh
addConstraint(NSLayoutConstraint(item: titleLabel, attribute: .left, relatedBy: .equal, toItem: userProfileImageView, attribute: .right, multiplier: 1, constant: 8))
```
// right constraint
```sh
addConstraint(NSLayoutConstraint(item: titleLabel, attribute: .right, relatedBy: .equal, toItem: thumbnailImageView, attribute: .right, multiplier: 1, constant: 0))
}
```
