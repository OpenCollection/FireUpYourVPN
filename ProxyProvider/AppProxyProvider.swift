//
//  AppProxyProvider.swift
//  ProxyProvider
//
//  Created by 吕文翰 on 16/1/14.
//  Copyright © 2016年 JohnLui. All rights reserved.
//

import NetworkExtension

class AppProxyProvider: NEAppProxyProvider {

	override func startProxyWithOptions(options: [String : AnyObject]?, completionHandler: (NSError?) -> Void) {
		// Add code here to start the process of connecting the tunnel.
        print("started")
	}

	override func stopProxyWithReason(reason: NEProviderStopReason, completionHandler: () -> Void) {
		// Add code here to start the process of stopping the tunnel.
		completionHandler()
	}

	override func handleAppMessage(messageData: NSData, completionHandler: ((NSData?) -> Void)?) {
		// Add code here to handle the message.
		if let handler = completionHandler {
			handler(messageData)
		}
	}

	override func sleepWithCompletionHandler(completionHandler: () -> Void) {
		// Add code here to get ready to sleep.
		completionHandler()
	}

	override func wake() {
		// Add code here to wake up.
	}

	override func handleNewFlow(flow: NEAppProxyFlow) -> Bool {
		// Add code here to handle the incoming flow.
		return false
	}
}
