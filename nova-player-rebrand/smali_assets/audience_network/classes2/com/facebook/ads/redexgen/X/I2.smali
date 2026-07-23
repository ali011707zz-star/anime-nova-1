.class public final Lcom/facebook/ads/redexgen/X/I2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/androidx/media3/extractor/metadata/flac/PictureFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/facebook/ads/androidx/media3/extractor/metadata/flac/PictureFrame;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40063
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final A00(Landroid/os/Parcel;)Lcom/facebook/ads/androidx/media3/extractor/metadata/flac/PictureFrame;
    .locals 1

    .line 40064
    new-instance v0, Lcom/facebook/ads/androidx/media3/extractor/metadata/flac/PictureFrame;

    invoke-direct {v0, p1}, Lcom/facebook/ads/androidx/media3/extractor/metadata/flac/PictureFrame;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method private final A01(I)[Lcom/facebook/ads/androidx/media3/extractor/metadata/flac/PictureFrame;
    .locals 1

    .line 40065
    new-array v0, p1, [Lcom/facebook/ads/androidx/media3/extractor/metadata/flac/PictureFrame;

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 40066
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/I2;->A00(Landroid/os/Parcel;)Lcom/facebook/ads/androidx/media3/extractor/metadata/flac/PictureFrame;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 40067
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/I2;->A01(I)[Lcom/facebook/ads/androidx/media3/extractor/metadata/flac/PictureFrame;

    move-result-object v0

    return-object v0
.end method
