//
//  Stats.swift
//  SwiftIpfsApi
//
//  Created by Teo on 10/11/15.
//  Copyright © 2015 Teo Sartori. All rights reserved.
//
//  Licensed under MIT See LICENCE file in the root of this project for details.

public class Stats : ClientSubCommand {
    
    var parent: IpfsApiClient?
    
    /** Print ipfs bandwidth information. Currently ignores flags.*/
    public func bw( peer: String? = nil,
        proto: String? = nil,
        poll: Bool = false,
        interval: String? = nil,
        completionHandler: (JsonType) -> Void) throws {
            try parent!.fetchJson("stats/bw", completionHandler: completionHandler)
    }
}