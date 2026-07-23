.class public final Lcom/facebook/ads/redexgen/X/IM;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/MdtaMetadataEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/MdtaMetadataEntry;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final A00(Landroid/os/Parcel;)Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/MdtaMetadataEntry;
    .locals 2

    .line 40161
    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/MdtaMetadataEntry;

    invoke-direct {v0, p1, v1}, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/MdtaMetadataEntry;-><init>(Landroid/os/Parcel;Lcom/facebook/ads/redexgen/X/IM;)V

    return-object v0
.end method

.method private final A01(I)[Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/MdtaMetadataEntry;
    .locals 1

    .line 40162
    new-array v0, p1, [Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/MdtaMetadataEntry;

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

    .line 40163
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/IM;->A00(Landroid/os/Parcel;)Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/MdtaMetadataEntry;

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

    .line 40164
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/IM;->A01(I)[Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/MdtaMetadataEntry;

    move-result-object v0

    return-object v0
.end method
