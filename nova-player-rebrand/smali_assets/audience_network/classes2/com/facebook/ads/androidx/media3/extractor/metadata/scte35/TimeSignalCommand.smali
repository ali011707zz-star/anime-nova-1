.class public final Lcom/facebook/ads/androidx/media3/extractor/metadata/scte35/TimeSignalCommand;
.super Lcom/facebook/ads/androidx/media3/extractor/metadata/scte35/SpliceCommand;
.source ""


# static fields
.field public static A02:[Ljava/lang/String;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/facebook/ads/androidx/media3/extractor/metadata/scte35/TimeSignalCommand;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final A00:J

.field public final A01:J


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 531
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "fBCCr7VwDgvhDxdGkzRiY2TvWvmZmARS"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "lBD0fDkRFVdGPYWDbMcaGx4cyXv4WEJh"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "6y4HJXgmtxqVkaNMzYZBmSXA6CGxm4DJ"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "vpsLDrGqE5zherZQZMMLL6G3cLRsG8Dm"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "qp0fDGr3Nzl8ahCuvet6k2311zos"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "c5cBfT4Hj52dvZvyRqGaKhWxL68ft04u"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "OtVyWYxYdMxR9geYu5t1Sc80NPuk"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "8DkmlbSWSEaEI0nee1I51BPAFd"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/androidx/media3/extractor/metadata/scte35/TimeSignalCommand;->A02:[Ljava/lang/String;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ic;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Ic;-><init>()V

    sput-object v0, Lcom/facebook/ads/androidx/media3/extractor/metadata/scte35/TimeSignalCommand;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 0

    .line 23296
    invoke-direct {p0}, Lcom/facebook/ads/androidx/media3/extractor/metadata/scte35/SpliceCommand;-><init>()V

    .line 23297
    iput-wide p1, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/scte35/TimeSignalCommand;->A01:J

    .line 23298
    iput-wide p3, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/scte35/TimeSignalCommand;->A00:J

    .line 23299
    return-void
.end method

.method public synthetic constructor <init>(JJLcom/facebook/ads/redexgen/X/Ic;)V
    .locals 0

    .line 23300
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/ads/androidx/media3/extractor/metadata/scte35/TimeSignalCommand;-><init>(JJ)V

    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/4v;J)J
    .locals 9

    .line 23301
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A0I()I

    move-result v0

    int-to-long v7, v0

    .line 23302
    .local v0, "firstByte":J
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 23303
    .local v2, "ptsTime":J
    const-wide/16 v5, 0x80

    and-long/2addr v5, v7

    const-wide/16 v1, 0x0

    cmp-long v0, v5, v1

    if-eqz v0, :cond_0

    .line 23304
    const-wide/16 v3, 0x1

    and-long/2addr v3, v7

    const/16 v0, 0x20

    shl-long/2addr v3, v0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A0Q()J

    move-result-wide v0

    or-long/2addr v3, v0

    .line 23305
    add-long/2addr v3, p1

    sget-object v1, Lcom/facebook/ads/androidx/media3/extractor/metadata/scte35/TimeSignalCommand;->A02:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x15

    if-eq v1, v0, :cond_1

    .line 23306
    sget-object v2, Lcom/facebook/ads/androidx/media3/extractor/metadata/scte35/TimeSignalCommand;->A02:[Ljava/lang/String;

    const-string v1, "5vtaLYhnTEc2lUg08l0YEv2QqnnKhzp8"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "gGhCeZV4kOFdoFbuN1d60dh6MMvStMtQ"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-wide v0, 0x1ffffffffL

    and-long/2addr v3, v0

    .line 23307
    :cond_0
    return-wide v3

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A01(Lcom/facebook/ads/redexgen/X/4v;JLcom/facebook/ads/redexgen/X/53;)Lcom/facebook/ads/androidx/media3/extractor/metadata/scte35/TimeSignalCommand;
    .locals 2

    .line 23308
    invoke-static {p0, p1, p2}, Lcom/facebook/ads/androidx/media3/extractor/metadata/scte35/TimeSignalCommand;->A00(Lcom/facebook/ads/redexgen/X/4v;J)J

    move-result-wide p1

    .line 23309
    .local v0, "ptsTime":J
    invoke-virtual {p3, p1, p2}, Lcom/facebook/ads/redexgen/X/53;->A06(J)J

    move-result-wide v1

    .line 23310
    .local p0, "playbackPositionUs":J
    new-instance v0, Lcom/facebook/ads/androidx/media3/extractor/metadata/scte35/TimeSignalCommand;

    invoke-direct {v0, p1, p2, v1, p0}, Lcom/facebook/ads/androidx/media3/extractor/metadata/scte35/TimeSignalCommand;-><init>(JJ)V

    return-object v0
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 23311
    iget-wide v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/scte35/TimeSignalCommand;->A01:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 23312
    iget-wide v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/scte35/TimeSignalCommand;->A00:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 23313
    return-void
.end method
