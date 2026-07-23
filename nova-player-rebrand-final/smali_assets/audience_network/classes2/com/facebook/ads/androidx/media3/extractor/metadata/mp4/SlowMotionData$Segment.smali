.class public final Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SlowMotionData$Segment;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SlowMotionData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Segment"
.end annotation


# static fields
.field public static A03:[B

.field public static A04:[Ljava/lang/String;

.field public static final A05:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SlowMotionData$Segment;",
            ">;"
        }
    .end annotation
.end field

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SlowMotionData$Segment;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final A00:I

.field public final A01:J

.field public final A02:J


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 805
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "ipJNOdoh1eb9OTIeB3FkguNCEb2CSeUt"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "LqRrPV4VmAB5juazeQC90lkeOBe3TfbV"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "GxIB6PN793OgDEySIBV"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "pjbiWXJDETiMhx5orI99E6WkDOkVz5Gn"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "J7P3lvdGctxgOfZGGj"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "2qOoG3pKeDKf31GDID0"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "IGomPZhvHos0bQX2r4wz9X4AzFk3bn9K"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "qZQeJZO1qS4yLqIhHjV6vOsyyUqJ"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SlowMotionData$Segment;->A04:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SlowMotionData$Segment;->A02()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/IP;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/IP;-><init>()V

    sput-object v0, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SlowMotionData$Segment;->A05:Ljava/util/Comparator;

    .line 806
    new-instance v0, Lcom/facebook/ads/redexgen/X/IQ;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/IQ;-><init>()V

    sput-object v0, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SlowMotionData$Segment;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JJI)V
    .locals 1

    .line 40187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40188
    cmp-long v0, p1, p3

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A07(Z)V

    .line 40189
    iput-wide p1, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SlowMotionData$Segment;->A02:J

    .line 40190
    iput-wide p3, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SlowMotionData$Segment;->A01:J

    .line 40191
    iput p5, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SlowMotionData$Segment;->A00:I

    .line 40192
    return-void

    .line 40193
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static synthetic A00(Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SlowMotionData$Segment;Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SlowMotionData$Segment;)I
    .locals 5

    .line 40194
    invoke-static {}, Lcom/facebook/ads/redexgen/X/ns;->A01()Lcom/facebook/ads/redexgen/X/ns;

    move-result-object v4

    iget-wide v2, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SlowMotionData$Segment;->A02:J

    iget-wide v0, p1, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SlowMotionData$Segment;->A02:J

    .line 40195
    invoke-virtual {v4, v2, v3, v0, v1}, Lcom/facebook/ads/redexgen/X/ns;->A07(JJ)Lcom/facebook/ads/redexgen/X/ns;

    move-result-object v4

    iget-wide v2, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SlowMotionData$Segment;->A01:J

    iget-wide v0, p1, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SlowMotionData$Segment;->A01:J

    .line 40196
    invoke-virtual {v4, v2, v3, v0, v1}, Lcom/facebook/ads/redexgen/X/ns;->A07(JJ)Lcom/facebook/ads/redexgen/X/ns;

    move-result-object v2

    iget v1, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SlowMotionData$Segment;->A00:I

    iget v0, p1, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SlowMotionData$Segment;->A00:I

    .line 40197
    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ns;->A06(II)Lcom/facebook/ads/redexgen/X/ns;

    move-result-object v0

    .line 40198
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ns;->A05()I

    move-result v0

    .line 40199
    return v0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SlowMotionData$Segment;->A03:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x63

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A02()V
    .locals 3

    const/16 v0, 0x36

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SlowMotionData$Segment;->A03:[B

    sget-object v1, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SlowMotionData$Segment;->A04:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x39

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SlowMotionData$Segment;->A04:[Ljava/lang/String;

    const-string v1, "usOEkDBV0THirHXXCn"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    nop

    :array_0
    .array-data 1
        -0x1ct
        -0xat
        -0x8t
        -0x2t
        -0xat
        -0x1t
        0x5t
        -0x35t
        -0x4ft
        0x4t
        0x5t
        -0xet
        0x3t
        0x5t
        -0x1bt
        -0x6t
        -0x2t
        -0xat
        -0x22t
        0x4t
        -0x32t
        -0x4at
        -0xbt
        -0x43t
        -0x4ft
        -0xat
        -0x1t
        -0xbt
        -0x1bt
        -0x6t
        -0x2t
        -0xat
        -0x22t
        0x4t
        -0x32t
        -0x4at
        -0xbt
        -0x43t
        -0x4ft
        0x4t
        0x1t
        -0xat
        -0xat
        -0xbt
        -0x2bt
        -0x6t
        0x7t
        -0x6t
        0x4t
        0x0t
        0x3t
        -0x32t
        -0x4at
        -0xbt
    .end array-data
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    .line 40200
    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .line 40201
    const/4 v5, 0x1

    if-ne p0, p1, :cond_0

    .line 40202
    return v5

    .line 40203
    :cond_0
    const/4 v3, 0x0

    sget-object v1, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SlowMotionData$Segment;->A04:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x39

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SlowMotionData$Segment;->A04:[Ljava/lang/String;

    const-string v1, "k7ceU3imh4LqNw1CKaBOtFUoGnjVQs9o"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-eq v1, v0, :cond_2

    .line 40204
    .end local v2
    :cond_1
    return v3

    .line 40205
    :cond_2
    check-cast p1, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SlowMotionData$Segment;

    .line 40206
    .local v2, "segment":Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SlowMotionData$Segment;
    iget-wide v3, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SlowMotionData$Segment;->A02:J

    iget-wide v1, p1, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SlowMotionData$Segment;->A02:J

    cmp-long v0, v3, v1

    if-nez v0, :cond_3

    iget-wide v3, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SlowMotionData$Segment;->A01:J

    iget-wide v1, p1, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SlowMotionData$Segment;->A01:J

    cmp-long v0, v3, v1

    if-nez v0, :cond_3

    iget v1, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SlowMotionData$Segment;->A00:I

    iget v0, p1, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SlowMotionData$Segment;->A00:I

    if-ne v1, v0, :cond_3

    :goto_0
    return v5

    :cond_3
    const/4 v5, 0x0

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final hashCode()I
    .locals 5

    .line 40207
    iget-wide v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SlowMotionData$Segment;->A02:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget-wide v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SlowMotionData$Segment;->A01:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SlowMotionData$Segment;->A00:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object v4, v1, v0

    const/4 v0, 0x1

    aput-object v3, v1, v0

    const/4 v0, 0x2

    aput-object v2, v1, v0

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/CB;->A00([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 40208
    iget-wide v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SlowMotionData$Segment;->A02:J

    .line 40209
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget-wide v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SlowMotionData$Segment;->A01:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SlowMotionData$Segment;->A00:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v0, 0x3

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object v4, v3, v0

    const/4 v0, 0x1

    aput-object v2, v3, v0

    const/4 v0, 0x2

    aput-object v1, v3, v0

    .line 40210
    const/4 v2, 0x0

    const/16 v1, 0x36

    const/16 v0, 0x2e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SlowMotionData$Segment;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/5C;->A0n(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 40211
    iget-wide v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SlowMotionData$Segment;->A02:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 40212
    iget-wide v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SlowMotionData$Segment;->A01:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 40213
    iget v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SlowMotionData$Segment;->A00:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 40214
    return-void
.end method
