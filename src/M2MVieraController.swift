//
//  M2MVieraController.swift
//  M2MFramework
//
//  Created by asakawa on 2014/12/18.
//  Copyright (c) 2014 asakawa. All rights reserved.
//

import Foundation

class M2MVieraController {
	
	enum KeyCode {
		case ChDown
		case ChUp
		case VolUp
		case VolDown
		case Mute
		case Tv
		case ChgInput
		case Red
		case Green
		case Yellow
		case Blue
		case VTools
		case Cancel
		case SubMenu
		case Return
		case Enter
		case Right
		case Left
		case Up
		case Down
		case A3d
		case SdCard
		case DispMode
		case Menu
		case Internet
		case VieraLink
		case Epg
		case Text
		case Sttl
		case Info
		case Index
		case Hold
		case RTurn
		case Power
		case Rew
		case Play
		case Ff
		case SkipPrev
		case Pause
		case SkipNext
		case Stop
		case Rec
		case D1
		case D2
		case D3
		case D4
		case D5
		case D6
		case D7
		case D8
		case D9
		case D0
		case D10
		case D11
		case D12
		case PNr
		case Offtimer
		case ChgNetwork
		case Cc
		case Sap
		case Reclist
		case Drive
		case Data
		case Bd
		case Favorite
		case DigaCtl
		case Vod
		case Eco
		case Game
		case EzSync
		case Pictai
		case Mpx
		case Split
		case Swap
		case RScreen
		case A30sSkip
		case Prog
		case TvMuteOn
		case TvMuteOff
		case DmsChUp
		case DmsChDown
		
		func toString()->String {
			switch self {
			case .ChDown:
				return "NRC_CH_DOWN-ONOFF"
			case .ChUp:
				return "NRC_CH_UP-ONOFF"
			case .VolUp:
				return "NRC_VOLUP-ONOFF"
			case .VolDown:
				return "NRC_VOLDOWN-ONOFF"
			case .Mute:
				return "NRC_MUTE-ONOFF"
			case .Tv:
				return "NRC_TV-ONOFF"
			case .ChgInput:
				return "NRC_CHG_INPUT-ONOFF"
			case .Red:
				return "NRC_RED-ONOFF"
			case .Green:
				return "NRC_GREEN-ONOFF"
			case .Yellow:
				return "NRC_YELLOW-ONOFF"
			case .Blue:
				return "NRC_BLUE-ONOFF"
			case .VTools:
				return "NRC_VTOOLS-ONOFF"
			case .Cancel:
				return "NRC_CANCEL-ONOFF"
			case .SubMenu:
				return "NRC_SUBMENU-ONOFF"
			case .Return:
				return "NRC_RETURN-ONOFF"
			case .Enter:
				return "NRC_ENTER-ONOFF"
			case .Right:
				return "NRC_RIGHT-ONOFF"
			case .Left:
				return "NRC_LEFT-ONOFF"
			case .Up:
				return "NRC_UP-ONOFF"
			case .Down:
				return "NRC_DOWN-ONOFF"
			case .A3d:
				return "NRC_3D-ONOFF"
			case .SdCard:
				return "NRC_SD_CARD-ONOFF"
			case .DispMode:
				return "NRC_DISP_MODE-ONOFF"
			case .Menu:
				return "NRC_MENU-ONOFF"
			case .Internet:
				return "NRC_INTERNET-ONOFF"
			case .VieraLink:
				return "NRC_VIERA_LINK-ONOFF"
			case .Epg:
				return "NRC_EPG-ONOFF"
			case .Text:
				return "NRC_TEXT-ONOFF"
			case .Sttl:
				return "NRC_STTL-ONOFF"
			case .Info:
				return "NRC_INFO-ONOFF"
			case .Index:
				return "NRC_INDEX-ONOFF"
			case .Hold:
				return "NRC_HOLD-ONOFF"
			case .RTurn:
				return "NRC_R_TURN-ONOFF"
			case .Power:
				return "NRC_POWER-ONOFF"
			case .Rew:
				return "NRC_REW-ONOFF"
			case .Play:
				return "NRC_PLAY-ONOFF"
			case .Ff:
				return "NRC_FF-ONOFF"
			case .SkipPrev:
				return "NRC_SKIP_PREV-ONOFF"
			case .Pause:
				return "NRC_PAUSE-ONOFF"
			case .SkipNext:
				return "NRC_SKIP_NEXT-ONOFF"
			case .Stop:
				return "NRC_STOP-ONOFF"
			case .Rec:
				return "NRC_REC-ONOFF"
			case .D1:
				return "NRC_D1-ONOFF"
			case .D2:
				return "NRC_D2-ONOFF"
			case .D3:
				return "NRC_D3-ONOFF"
			case .D4:
				return "NRC_D4-ONOFF"
			case .D5:
				return "NRC_D5-ONOFF"
			case .D6:
				return "NRC_D6-ONOFF"
			case .D7:
				return "NRC_D7-ONOFF"
			case .D8:
				return "NRC_D8-ONOFF"
			case .D9:
				return "NRC_D9-ONOFF"
			case .D0:
				return "NRC_D0-ONOFF"
			case .D10:
				return "NRC_D10-ONOFF"
			case .D11:
				return "NRC_D11-ONOFF"
			case .D12:
				return "NRC_D12-ONOFF"
			case .PNr:
				return "NRC_P_NR-ONOFF"
			case .Offtimer:
				return "NRC_OFFTIMER-ONOFF"
			case .ChgNetwork:
				return "NRC_CHG_NETWORK-ONOFF"
			case .Cc:
				return "NRC_CC-ONOFF"
			case .Sap:
				return "NRC_SAP-ONOFF"
			case .Reclist:
				return "NRC_RECLIST-ONOFF"
			case .Drive:
				return "NRC_DRIVE-ONOFF"
			case .Data:
				return "NRC_DATA-ONOFF"
			case .Bd:
				return "NRC_BD-ONOFF"
			case .Favorite:
				return "NRC_FAVORITE-ONOFF"
			case .DigaCtl:
				return "NRC_DIGA_CTL-ONOFF"
			case .Vod:
				return "NRC_VOD-ONOFF"
			case .Eco:
				return "NRC_ECO-ONOFF"
			case .Game:
				return "NRC_GAME-ONOFF"
			case .EzSync:
				return "NRC_EZ_SYNC-ONOFF"
			case .Pictai:
				return "NRC_PICTAI-ONOFF"
			case .Mpx:
				return "NRC_MPX-ONOFF"
			case .Split:
				return "NRC_SPLIT-ONOFF"
			case .Swap:
				return "NRC_SWAP-ONOFF"
			case .RScreen:
				return "NRC_R_SCREEN-ONOFF"
			case .A30sSkip:
				return "NRC_30S_SKIP-ONOFF"
			case .Prog:
				return "NRC_PROG-ONOFF"
			case .TvMuteOn:
				return "NRC_TV_MUTE_ON-ONOFF"
			case .TvMuteOff:
				return "NRC_TV_MUTE_OFF-ONOFF"
			case .DmsChUp:
				return "NRC_DMS_CH_UP-ONOFF"
			case .DmsChDown:
				return "NRC_DMS_CH_DOWN-ONOFF"
			default:
				return ""
			}
		}
	}

	class var searchHost: NSString {
		return "239.255.255.250" as NSString
	}
	
	class var searchPort: UInt16 {
		return 1900
	}
	
	class var searchData: NSData {
		return ("M-SEARCH * HTTP/1.1'\r\nST: urn:panasonic-com:device:p00RemoteController:1\r\nMX: 1\r\nMAN: \"ssdp:discover\"\r\nHOST: 239.255.255.250:1900\r\n\r\n\r\n" as NSString).dataUsingEncoding(NSUTF8StringEncoding)!
	}

	class var sharedInstance: M2MVieraController {
		struct Static {
			static let instance : M2MVieraController = M2MVieraController()
		}
		return Static.instance
	}
	
	func request(host: String, code: M2MVieraController.KeyCode) -> NSMutableURLRequest {
		return self.commonURLRequest(host, action: "X_SendKey", option: "<X_KeyEvent>" + code.toString() + "</X_KeyEvent>")
	}
	
	func request(host: String, string: String) -> NSMutableURLRequest {
		return self.commonURLRequest(host, action: "'X_SendString", option: "<X_String>" + string + "</X_String>")
	}
	
	private func commonURLRequest(host: String, action: String, option: String) -> NSMutableURLRequest {
		let xml = "<?xml version=\"1.0\" encoding=\"utf-8\"?><s:Envelope xmlns:s=\"http://schemas.xmlsoap.org/soap/envelope/\" s:encodingStyle=\"http://schemas.xmlsoap.org/soap/encoding/\"><s:Body><u:%@ xmlns:u=\"urn:panasonic-com:service:p00NetworkControl:1\">%@</u:%@></s:Body></s:Envelope>"
		let header = NSString(format: "\"urn:panasonic-com:service:p00NetworkControl:1#%@\"", action)
		let input = NSString(format: xml, action, option, action)
		let url = "http://" + host + ":55000/nrc/control_0"
		let request = NSMutableURLRequest(URL: NSURL(string: url)!)
		request.HTTPMethod = "POST"
		request.HTTPBody = input.dataUsingEncoding(NSUTF8StringEncoding)
		request.addValue(header, forHTTPHeaderField: "SOAPACTION")
		
		return request
	}
}