import SwiftUI
import PhotosUI

struct AccountStruct : Hashable {
    var id = UUID()
    var email : String
    var confirmEmail : String
    var password : String
}
