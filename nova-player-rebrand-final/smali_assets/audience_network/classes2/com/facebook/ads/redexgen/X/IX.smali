.class public final Lcom/facebook/ads/redexgen/X/IX;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/androidx/media3/extractor/metadata/scte35/SpliceInsertCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ComponentSplice"
.end annotation


# instance fields
.field public final A00:I

.field public final A01:J

.field public final A02:J


# direct methods
.method public constructor <init>(IJJ)V
    .locals 0

    .line 40247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40248
    iput p1, p0, Lcom/facebook/ads/redexgen/X/IX;->A00:I

    .line 40249
    iput-wide p2, p0, Lcom/facebook/ads/redexgen/X/IX;->A02:J

    .line 40250
    iput-wide p4, p0, Lcom/facebook/ads/redexgen/X/IX;->A01:J

    .line 40251
    return-void
.end method

.method public synthetic constructor <init>(IJJLcom/facebook/ads/redexgen/X/IW;)V
    .locals 0

    .line 40252
    invoke-direct/range {p0 .. p5}, Lcom/facebook/ads/redexgen/X/IX;-><init>(IJJ)V

    return-void
.end method

.method public static A00(Landroid/os/Parcel;)Lcom/facebook/ads/redexgen/X/IX;
    .locals 5

    .line 40253
    new-instance v0, Lcom/facebook/ads/redexgen/X/IX;

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/IX;-><init>(IJJ)V

    return-object v0
.end method


# virtual methods
.method public final A01(Landroid/os/Parcel;)V
    .locals 2

    .line 40254
    iget v0, p0, Lcom/facebook/ads/redexgen/X/IX;->A00:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 40255
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/IX;->A02:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 40256
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/IX;->A01:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 40257
    return-void
.end method
