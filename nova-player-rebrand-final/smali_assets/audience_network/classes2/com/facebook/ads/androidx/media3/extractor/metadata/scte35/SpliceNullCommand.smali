.class public final Lcom/facebook/ads/androidx/media3/extractor/metadata/scte35/SpliceNullCommand;
.super Lcom/facebook/ads/androidx/media3/extractor/metadata/scte35/SpliceCommand;
.source ""


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/facebook/ads/androidx/media3/extractor/metadata/scte35/SpliceNullCommand;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 533
    new-instance v0, Lcom/facebook/ads/redexgen/X/IY;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/IY;-><init>()V

    sput-object v0, Lcom/facebook/ads/androidx/media3/extractor/metadata/scte35/SpliceNullCommand;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23360
    invoke-direct {p0}, Lcom/facebook/ads/androidx/media3/extractor/metadata/scte35/SpliceCommand;-><init>()V

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 23361
    return-void
.end method
