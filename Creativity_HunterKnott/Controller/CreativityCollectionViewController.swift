//
//  CreativityCollectionViewController.swift
//  Creativity_HunterKnott
//
//  Created by Knott, Hunter on 11/7/18.
//  Copyright © 2018 Knott, Hunter. All rights reserved.
//

import UIKit

private let reuseIdentifier = "artidentifier"

public class CreativityCollectionViewController: UICollectionViewController
{
    
    //MARK: Data members for Creativity Screen
    
    private let sectionInsets = UIEdgeInsets(top: 50.0, left: 20.0, bottom: 50.0, right: 20.0)
    //Specifies distance between images
    private let itemsPerRowCompact: CGFloat = 4
    //For smaller phones or when phones are upright
    private let itemsPerRowNormal: CGFloat = 6
    //For phones on landscape or iPads
    
    private let creativeCS: [UIImage?] =
    {
        return [
            UIImage(named: "HaikuJava"),
            UIImage(named: "HaikuSwift"),
            UIImage(named: "HaikuMainframe"),
            UIImage(named: "LastSupper"),
            UIImage(named: "LastSupperPokemon"),
            UIImage(named: "LastSupperMickey"),
            UIImage(named: "Octocat"),
            UIImage(named: "SwiftArt"),
            UIImage(named: "CodeMeme")
        ]
    }()
    
    private let labels : [String] =
    {
        return [
            "Java",
            "Swift",
            "Mainframe",
            "DaVinci",
            "Pokemon",
            "Cartoon",
            "Kitty",
            "Fruitbowl",
            "Bender"
        ]
    }()

    public override func viewDidLoad() -> Void
    {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    //MARK: - Navigation / Layout
    //This comment is like Javadoc. It adds sections for you to access
    
    public override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /*
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
     {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */
    
    
    // MARK: - Navigation
    
    public override func numberOfSections(in collectionView: UICollectionView) -> Int
    {
        return 1
    }

    public override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int
    {
        return creativeCS.count
    }
    
    
    // MARK: UICollectionViewDataSource

    public override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell
    {
        let artCell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! ArtCell
        
        artCell.backgroundColor = .purple
        artCell.artImage.image = creativeCS[indexPath.row]
        artCell.artLabel.text = labels[indexPath.row]
    
        return artCell
    }

    // MARK: UICollectionViewDelegate
    
    
    public func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize//This makes all the images squares
     {
        let paddingSpace = sectionInsets.left * (itemsPerRowCompact + 1)
        let availableWidth = view.frame.width - paddingSpace
        let widthPerItem = availableWidth / itemsPerRowCompact
        
        return CGSize(width: widthPerItem, height: widthPerItem)
    }
    
    public func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets
    {
        return sectionInsets
    }
    
    public func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat
    {
        return sectionInsets.left
    }
    

    /*
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool
     {
        return true
    }
    */

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(_ collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: IndexPath) -> Bool
     {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) -> Bool
     {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?)
    {
    
    }
    */

}
