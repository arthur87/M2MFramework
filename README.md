M2MFramework
============

M2Mに関するSwiftライブラリです。


M2MVieraController
-------------------

パナソニック VIERA(ビエラ)をネットワーク経由で操作します。

機器の発見にはUPnPで規定されたSSDPを利用します。
M2MVieraControllerでは、機器を発見するために必要な情報を提供しますが、ソケット通信に関する処理は提供しないため独自に実装する必要があります。

サンプルとして、CocoaAsyncSocketを利用してソケット通信に関する処理を実装します。

> CocoaAsyncSocket
>
> CocoaAsyncSocket provides easy-to-use and powerful asynchronous socket libraries for Mac and iOS.
>
> https://github.com/robbiehanson/CocoaAsyncSocket

ヘッダファイルを用意します。

    #ifndef M2MFramework_M2MFramework_Bridging_Header_h
    #define M2MFramework_M2MFramework_Bridging_Header_h

    #import "AsyncUdpSocket.h"

    #endif


初期化と設定を行います。

    let sock:AsyncUdpSocket = AsyncUdpSocket(delegate: self)
    sock.enableBroadcast(true, error: nil)
    sock.bindToPort(0, error: nil)
    sock.joinMulticastGroup(M2MVieraController.searchHost, error: nil)
    sock.sendData(M2MVieraController.searchData, toHost: M2MVieraController.searchHost, port: M2MVieraController.searchPort, withTimeout: -1, tag: 1)
    sock.receiveWithTimeout(-1, tag: 1)


機器を発見すると以下の関数が呼ばれます。

    func onUdpSocket(sock: AsyncUdpSocket!, didReceiveData data: NSData!, withTag tag: Int, fromHost host: String!, port: UInt16) -> Bool {

      println(host)
      println(NSString(data: data, encoding: NSUTF8StringEncoding)!)

      return true
    }


機器のIPアドレスを指定してコードを送信します。

    NSURLConnection(request: M2MVieraController.sharedInstance.request(host, code: .D1), delegate: self)



M2MDeviceController
-------------------

iOSに搭載されたセンサや情報にアクセスするためのクラスです。

### 歩数に関する情報を取得する

    M2MDeviceController.sharedInstance.pedometerQuery()
