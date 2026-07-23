.class public final Lcom/facebook/ads/redexgen/X/IQ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SlowMotionData$Segment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SlowMotionData$Segment;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final A00(Landroid/os/Parcel;)Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SlowMotionData$Segment;
    .locals 6

    .line 40180
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 40181
    .local p0, "startTimeMs":J
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 40182
    .local p2, "endTimeMs":J
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 40183
    .local p4, "speedDivisor":I
    new-instance v0, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SlowMotionData$Segment;

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SlowMotionData$Segment;-><init>(JJI)V

    return-object v0
.end method

.method private final A01(I)[Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SlowMotionData$Segment;
    .locals 1

    .line 40184
    new-array v0, p1, [Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SlowMotionData$Segment;

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

    .line 40185
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/IQ;->A00(Landroid/os/Parcel;)Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SlowMotionData$Segment;

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

    .line 40186
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/IQ;->A01(I)[Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SlowMotionData$Segment;

    move-result-object v0

    return-object v0
.end method
