.class public final Lcom/facebook/ads/androidx/media3/common/DrmInitData$SchemeData;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/androidx/media3/common/DrmInitData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SchemeData"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/facebook/ads/androidx/media3/common/DrmInitData$SchemeData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public A00:I

.field public final A01:Ljava/lang/String;

.field public final A02:Ljava/lang/String;

.field public final A03:Ljava/util/UUID;

.field public final A04:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 138
    new-instance v0, Lcom/facebook/ads/redexgen/X/2f;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/2f;-><init>()V

    sput-object v0, Lcom/facebook/ads/androidx/media3/common/DrmInitData$SchemeData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 5

    .line 9331
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9332
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    new-instance v0, Ljava/util/UUID;

    invoke-direct {v0, v3, v4, v1, v2}, Ljava/util/UUID;-><init>(JJ)V

    iput-object v0, p0, Lcom/facebook/ads/androidx/media3/common/DrmInitData$SchemeData;->A03:Ljava/util/UUID;

    .line 9333
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/androidx/media3/common/DrmInitData$SchemeData;->A01:Ljava/lang/String;

    .line 9334
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5C;->A0f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/facebook/ads/androidx/media3/common/DrmInitData$SchemeData;->A02:Ljava/lang/String;

    .line 9335
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/androidx/media3/common/DrmInitData$SchemeData;->A04:[B

    .line 9336
    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 1

    .line 9337
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9338
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/UUID;

    iput-object v0, p0, Lcom/facebook/ads/androidx/media3/common/DrmInitData$SchemeData;->A03:Ljava/util/UUID;

    .line 9339
    iput-object p2, p0, Lcom/facebook/ads/androidx/media3/common/DrmInitData$SchemeData;->A01:Ljava/lang/String;

    .line 9340
    invoke-static {p3}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/facebook/ads/androidx/media3/common/DrmInitData$SchemeData;->A02:Ljava/lang/String;

    .line 9341
    iput-object p4, p0, Lcom/facebook/ads/androidx/media3/common/DrmInitData$SchemeData;->A04:[B

    .line 9342
    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;Ljava/lang/String;[B)V
    .locals 1

    .line 9343
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/facebook/ads/androidx/media3/common/DrmInitData$SchemeData;-><init>(Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 9344
    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    .line 9345
    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 9346
    instance-of v0, p1, Lcom/facebook/ads/androidx/media3/common/DrmInitData$SchemeData;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 9347
    return v2

    .line 9348
    :cond_0
    const/4 v0, 0x1

    if-ne p1, p0, :cond_1

    .line 9349
    return v0

    .line 9350
    :cond_1
    check-cast p1, Lcom/facebook/ads/androidx/media3/common/DrmInitData$SchemeData;

    .line 9351
    .local v2, "other":Lcom/facebook/ads/androidx/media3/common/DrmInitData$SchemeData;
    iget-object v1, p0, Lcom/facebook/ads/androidx/media3/common/DrmInitData$SchemeData;->A01:Ljava/lang/String;

    iget-object v0, p1, Lcom/facebook/ads/androidx/media3/common/DrmInitData$SchemeData;->A01:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A1E(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/facebook/ads/androidx/media3/common/DrmInitData$SchemeData;->A02:Ljava/lang/String;

    iget-object v0, p1, Lcom/facebook/ads/androidx/media3/common/DrmInitData$SchemeData;->A02:Ljava/lang/String;

    .line 9352
    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A1E(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/facebook/ads/androidx/media3/common/DrmInitData$SchemeData;->A03:Ljava/util/UUID;

    iget-object v0, p1, Lcom/facebook/ads/androidx/media3/common/DrmInitData$SchemeData;->A03:Ljava/util/UUID;

    .line 9353
    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A1E(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/facebook/ads/androidx/media3/common/DrmInitData$SchemeData;->A04:[B

    iget-object v0, p1, Lcom/facebook/ads/androidx/media3/common/DrmInitData$SchemeData;->A04:[B

    .line 9354
    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    .line 9355
    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 2

    .line 9356
    iget v0, p0, Lcom/facebook/ads/androidx/media3/common/DrmInitData$SchemeData;->A00:I

    if-nez v0, :cond_0

    .line 9357
    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/common/DrmInitData$SchemeData;->A03:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->hashCode()I

    move-result v0

    .line 9358
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/common/DrmInitData$SchemeData;->A01:Ljava/lang/String;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    add-int/2addr v1, v0

    .line 9359
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/common/DrmInitData$SchemeData;->A02:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 9360
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/common/DrmInitData$SchemeData;->A04:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    add-int/2addr v1, v0

    .line 9361
    .end local v0    # "result":I
    .restart local v1    # "result":I
    iput v1, p0, Lcom/facebook/ads/androidx/media3/common/DrmInitData$SchemeData;->A00:I

    .line 9362
    .end local v1    # "result":I
    :cond_0
    iget v0, p0, Lcom/facebook/ads/androidx/media3/common/DrmInitData$SchemeData;->A00:I

    return v0

    .line 9363
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/common/DrmInitData$SchemeData;->A01:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 9364
    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/common/DrmInitData$SchemeData;->A03:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 9365
    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/common/DrmInitData$SchemeData;->A03:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 9366
    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/common/DrmInitData$SchemeData;->A01:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9367
    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/common/DrmInitData$SchemeData;->A02:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9368
    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/common/DrmInitData$SchemeData;->A04:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 9369
    return-void
.end method
