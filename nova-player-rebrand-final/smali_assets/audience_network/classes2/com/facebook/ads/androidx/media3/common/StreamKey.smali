.class public final Lcom/facebook/ads/androidx/media3/common/StreamKey;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Comparable;
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/facebook/ads/androidx/media3/common/StreamKey;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static A04:[B

.field public static A05:[Ljava/lang/String;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/facebook/ads/androidx/media3/common/StreamKey;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final A00:I

.field public final A01:I

.field public final A02:I

.field public final A03:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 157
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "dWL5NZus448HlVN1g2vI4u5EATU39hAo"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "Ig00thAwydWR5sbVXvrRGjlFjIN2O8J7"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "jkNUubNrA3kuMGxf9Z6EfVeaas9OM69U"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "EYKJogzwz3XUzBJ6M5pIp4"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "kAMXbaxHTcvtkNk6pT6NuIpsMq0wtAm5"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "DETMEqXpM2RL9RfuWccguPA2eDkJCyIw"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "l4lmv0vVbQT1UVlO08Ifu3RnFv4eezi8"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "GuIdMvOGKOFBnnXM1bTmuQpg4J0thJGn"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/androidx/media3/common/StreamKey;->A05:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/androidx/media3/common/StreamKey;->A02()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/3f;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/3f;-><init>()V

    sput-object v0, Lcom/facebook/ads/androidx/media3/common/StreamKey;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    .line 10626
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10627
    iput p1, p0, Lcom/facebook/ads/androidx/media3/common/StreamKey;->A01:I

    .line 10628
    iput p2, p0, Lcom/facebook/ads/androidx/media3/common/StreamKey;->A00:I

    .line 10629
    iput p3, p0, Lcom/facebook/ads/androidx/media3/common/StreamKey;->A02:I

    .line 10630
    iput p3, p0, Lcom/facebook/ads/androidx/media3/common/StreamKey;->A03:I

    .line 10631
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 10632
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10633
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/androidx/media3/common/StreamKey;->A01:I

    .line 10634
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/androidx/media3/common/StreamKey;->A00:I

    .line 10635
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/androidx/media3/common/StreamKey;->A02:I

    .line 10636
    iget v0, p0, Lcom/facebook/ads/androidx/media3/common/StreamKey;->A02:I

    iput v0, p0, Lcom/facebook/ads/androidx/media3/common/StreamKey;->A03:I

    .line 10637
    return-void
.end method

.method private final A00(Lcom/facebook/ads/androidx/media3/common/StreamKey;)I
    .locals 4

    .line 10638
    iget v3, p0, Lcom/facebook/ads/androidx/media3/common/StreamKey;->A01:I

    iget v0, p1, Lcom/facebook/ads/androidx/media3/common/StreamKey;->A01:I

    sub-int/2addr v3, v0

    .line 10639
    .local v0, "result":I
    if-nez v3, :cond_0

    .line 10640
    iget v3, p0, Lcom/facebook/ads/androidx/media3/common/StreamKey;->A00:I

    iget v0, p1, Lcom/facebook/ads/androidx/media3/common/StreamKey;->A00:I

    sub-int/2addr v3, v0

    sget-object v1, Lcom/facebook/ads/androidx/media3/common/StreamKey;->A05:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x10

    if-eq v1, v0, :cond_1

    .line 10641
    sget-object v2, Lcom/facebook/ads/androidx/media3/common/StreamKey;->A05:[Ljava/lang/String;

    const-string v1, "BMcfT7wTTEuICUupPfiGugxRU9d1aBTy"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-nez v3, :cond_0

    .line 10642
    iget v3, p0, Lcom/facebook/ads/androidx/media3/common/StreamKey;->A02:I

    iget v0, p1, Lcom/facebook/ads/androidx/media3/common/StreamKey;->A02:I

    sub-int/2addr v3, v0

    .line 10643
    :cond_0
    return v3

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/androidx/media3/common/StreamKey;->A04:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x4e

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
    .locals 1

    const/4 v0, 0x1

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/androidx/media3/common/StreamKey;->A04:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x66t
    .end array-data
.end method


# virtual methods
.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 10644
    check-cast p1, Lcom/facebook/ads/androidx/media3/common/StreamKey;

    invoke-direct {p0, p1}, Lcom/facebook/ads/androidx/media3/common/StreamKey;->A00(Lcom/facebook/ads/androidx/media3/common/StreamKey;)I

    move-result v0

    return v0
.end method

.method public final describeContents()I
    .locals 1

    .line 10645
    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 10646
    const/4 v3, 0x1

    if-ne p0, p1, :cond_0

    .line 10647
    return v3

    .line 10648
    :cond_0
    const/4 v2, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-eq v1, v0, :cond_2

    .line 10649
    .end local v2
    :cond_1
    return v2

    .line 10650
    :cond_2
    check-cast p1, Lcom/facebook/ads/androidx/media3/common/StreamKey;

    .line 10651
    .local v2, "that":Lcom/facebook/ads/androidx/media3/common/StreamKey;
    iget v1, p0, Lcom/facebook/ads/androidx/media3/common/StreamKey;->A01:I

    iget v0, p1, Lcom/facebook/ads/androidx/media3/common/StreamKey;->A01:I

    if-ne v1, v0, :cond_3

    iget v1, p0, Lcom/facebook/ads/androidx/media3/common/StreamKey;->A00:I

    iget v0, p1, Lcom/facebook/ads/androidx/media3/common/StreamKey;->A00:I

    if-ne v1, v0, :cond_3

    iget v1, p0, Lcom/facebook/ads/androidx/media3/common/StreamKey;->A02:I

    iget v0, p1, Lcom/facebook/ads/androidx/media3/common/StreamKey;->A02:I

    if-ne v1, v0, :cond_3

    :goto_0
    return v3

    :cond_3
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .line 10652
    iget v0, p0, Lcom/facebook/ads/androidx/media3/common/StreamKey;->A01:I

    .line 10653
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v0, p0, Lcom/facebook/ads/androidx/media3/common/StreamKey;->A00:I

    add-int/2addr v1, v0

    .line 10654
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lcom/facebook/ads/androidx/media3/common/StreamKey;->A02:I

    add-int/2addr v1, v0

    .line 10655
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 10656
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, p0, Lcom/facebook/ads/androidx/media3/common/StreamKey;->A01:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x6

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/androidx/media3/common/StreamKey;->A01(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, p0, Lcom/facebook/ads/androidx/media3/common/StreamKey;->A00:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, p0, Lcom/facebook/ads/androidx/media3/common/StreamKey;->A02:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 10657
    iget v0, p0, Lcom/facebook/ads/androidx/media3/common/StreamKey;->A01:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 10658
    iget v0, p0, Lcom/facebook/ads/androidx/media3/common/StreamKey;->A00:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 10659
    iget v0, p0, Lcom/facebook/ads/androidx/media3/common/StreamKey;->A02:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 10660
    return-void
.end method
