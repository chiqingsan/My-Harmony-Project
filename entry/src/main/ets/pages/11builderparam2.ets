@Component
struct myPhotoAlbum {
  @BuilderParam pictureContent: () => void = this.myImage

  @Builder
  myImage() {
    Column() {
      Image($r("app.media.startIcon"))
        .objectFit(ImageFit.Contain)
    }
    .width(100)
  }

  build() {
    Column() {
      Column() {
        this.pictureContent()
      }
      .height(80)
    }
    .width("100%").height(150).justifyContent(FlexAlign.Center)
    .border({
      width: 3,
      color: "#ccc",
      radius: 15
    })
  }
}

@Entry
@Component
struct Index {
  @Builder
  myAlbumContents1() {
    Row() {
      Image($r("app.media.startIcon"))
        .objectFit(ImageFit.Contain)
    }
  }

  @Builder
  myAlbumContents2() {
    Row() {
      Image($r("app.media.startIcon"))
        .objectFit(ImageFit.Contain)
        .width(100)
      Image($r("app.media.startIcon"))
        .objectFit(ImageFit.Contain)
        .width(100)
    }
    .width(200)
  }

  @Builder
  myAlbumContents3() {
    Row() {
      Image($r("app.media.startIcon"))
        .borderRadius(99)
        .objectFit(ImageFit.Contain)
    }
  }

  build() {
    Column({ space: 15 }) {
      myPhotoAlbum({ pictureContent: this.myAlbumContents1 })
      myPhotoAlbum({ pictureContent: this.myAlbumContents2 })
      myPhotoAlbum({ pictureContent: this.myAlbumContents3 })
    }
  }
}