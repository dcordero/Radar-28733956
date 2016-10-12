//
//  BigBuckBunnyViewController.swift
//  BigBuckBunny
//
//  Created by David Cordero on 12/10/16.
//  Copyright © 2016 David Cordero. All rights reserved.
//

import UIKit
import AVFoundation
import AVKit


class BigBuckBunnyViewController: AVPlayerViewController {

    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        play()
    }
    
    // MARK: - Private
    
    private func play() {
        let asset = AVAsset(URL: NSURL(string: "https://clips.vorwaerts-gmbh.de/big_buck_bunny.mp4")!)
        let playetItem = AVPlayerItem(asset: asset)
        player = AVPlayer(playerItem: playetItem)
        player?.play()
        player?.currentItem?.externalMetadata = metaData()
    }
    
    private func metaData() -> [AVMetadataItem] {
        var metadataItems: [AVMetadataItem] = []
        
        let metadataTitle = createMetadataItem(AVMetadataCommonIdentifierTitle, value: "Big Buck Bunny")
        metadataItems.append(metadataTitle)
        
        let metadataDescription = createMetadataItem(AVMetadataCommonIdentifierDescription, value: "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of 'de Finibus Bonorum et Malorum' (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from 'de Finibus Bonorum et Malorum' by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.")
        metadataItems.append(metadataDescription)
        
        return metadataItems
    }
    
    private func createMetadataItem(identifier: String, value: protocol<NSCopying, NSObjectProtocol>?) -> AVMutableMetadataItem {
        let item = AVMutableMetadataItem()
        item.identifier = identifier
        item.value = value
        item.locale = .currentLocale()
        return item
    }
}
