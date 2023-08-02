//
//  LocationManager.swift
//  toshickstudy
//
//  Created by せかいのとしっく on 2023/08/02.
//

import MapKit

class LocationManager: NSObject, ObservableObject, CLLocationManagerDelegate {
  @Published var alertNoPermissoin: Bool = false
  let manager = CLLocationManager()
  @Published var region = MKCoordinateRegion()

  override init() {
    super.init()
    manager.delegate = self
    manager.requestWhenInUseAuthorization() // 位置情報を利用許可をリクエスト
    manager.desiredAccuracy = kCLLocationAccuracyBest // 最高精度の位置情報を要求
    manager.distanceFilter = 3.0 // 更新距離(m)
    manager.startUpdatingLocation()
  }

  // 領域の更新をするデリゲートメソッド
  func locationManager(_: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
    // 配列の最後に最新のロケーションが格納される
    // map関数を使って全要素にアクセス map{ $0←要素に参照 }
    locations.last.map {
      let center = CLLocationCoordinate2D(
        latitude: $0.coordinate.latitude,
        longitude: $0.coordinate.longitude
      )

      // 地図を表示するための領域を再構築
      region = MKCoordinateRegion(
        center: center,
        latitudinalMeters: 1000.0,
        longitudinalMeters: 1000.0
      )
    }
  }

  func reloadRegion() {
    // オプショナルバインディング
    if let location = manager.location {
      let center = CLLocationCoordinate2D(
        latitude: location.coordinate.latitude,
        longitude: location.coordinate.longitude
      )

      region = MKCoordinateRegion(
        center: center,
        latitudinalMeters: 1000.0,
        longitudinalMeters: 1000.0
      )
    }
  }

  func locationManagerDidChangeAuthorization(_ manager: CLLocationManager) {
    let guarded = manager.authorizationStatus.rawValue
    if guarded == 2 {
      // 拒否された場合に実行される処理を定義
      print("拒否された")

      alertNoPermissoin = true

      let center = CLLocationCoordinate2D(
        latitude: 35.709152712026265,
        longitude: 139.80771829999996
      )

      region = MKCoordinateRegion(
        center: center,
        latitudinalMeters: 1000.0,
        longitudinalMeters: 1000.0
      )
    }
  }
}
