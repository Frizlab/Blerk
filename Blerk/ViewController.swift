/*
 * ViewController.swift
 * Blerk
 *
 * Created by François Lamboley on 10/06/2021.
 */

import Cocoa
import SafariServices
import WebKit



class ViewController : NSViewController, WKNavigationDelegate {
	
	@IBOutlet var webView: WKWebView!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		webView.customUserAgent = "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.0 Safari/605.1.15"
		webView.load(URLRequest(url: URL(string: "https://app.slack.com/client/T04D5NG1N/G1PGH756K")!))
	}
	
	override var representedObject: Any? {
		didSet {
		}
	}
	
	func webView(_ webView: WKWebView, didFail navigation: WKNavigation!, withError error: Error) {
		print(error)
	}
	
}
