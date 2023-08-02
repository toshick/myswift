import MapKit
import SwiftUI

struct MapView: View {
  @State private var region = MKCoordinateRegion(
    center: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868),

    span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
  )

  // @Binding var manager: LocationManager
  // @Binding var trackingMode: MapUserTrackingMode

  var body: some View {
    Map(coordinateRegion: $region)
    // Map(coordinateRegion: $manager.region,
    //     showsUserLocation: true, // マップ上にユーザーの場所を表示するオプションをBool値で指定
    //     userTrackingMode: $trackingMode) // マップがユーザーの位置情報更新にどのように応答するかを決定
    //   .edgesIgnoringSafeArea(.bottom)
  }
}

struct MapView_Previews: PreviewProvider {
  static var previews: some View {
    MapView()
  }
}
