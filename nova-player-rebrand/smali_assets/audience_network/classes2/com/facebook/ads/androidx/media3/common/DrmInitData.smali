.class public final Lcom/facebook/ads/androidx/media3/common/DrmInitData;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/androidx/media3/common/DrmInitData$SchemeData;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/facebook/ads/androidx/media3/common/DrmInitData$SchemeData;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/facebook/ads/androidx/media3/common/DrmInitData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public A00:I

.field public final A01:I

.field public final A02:Ljava/lang/String;

.field public final A03:[Lcom/facebook/ads/androidx/media3/common/DrmInitData$SchemeData;
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        value = "Making the schemeDatas public"
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 139
    new-instance v0, Lcom/facebook/ads/redexgen/X/2e;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/2e;-><init>()V

    sput-object v0, Lcom/facebook/ads/androidx/media3/common/DrmInitData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 9370
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9371
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/androidx/media3/common/DrmInitData;->A02:Ljava/lang/String;

    .line 9372
    sget-object v0, Lcom/facebook/ads/androidx/media3/common/DrmInitData$SchemeData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/ads/androidx/media3/common/DrmInitData$SchemeData;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5C;->A0f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/ads/androidx/media3/common/DrmInitData$SchemeData;

    iput-object v0, p0, Lcom/facebook/ads/androidx/media3/common/DrmInitData;->A03:[Lcom/facebook/ads/androidx/media3/common/DrmInitData$SchemeData;

    .line 9373
    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/common/DrmInitData;->A03:[Lcom/facebook/ads/androidx/media3/common/DrmInitData$SchemeData;

    array-length v0, v0

    iput v0, p0, Lcom/facebook/ads/androidx/media3/common/DrmInitData;->A01:I

    .line 9374
    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;Z[Lcom/facebook/ads/androidx/media3/common/DrmInitData$SchemeData;)V
    .locals 1

    .line 9375
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9376
    iput-object p1, p0, Lcom/facebook/ads/androidx/media3/common/DrmInitData;->A02:Ljava/lang/String;

    .line 9377
    if-eqz p2, :cond_0

    .line 9378
    invoke-virtual {p3}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Lcom/facebook/ads/androidx/media3/common/DrmInitData$SchemeData;

    .line 9379
    :cond_0
    iput-object p3, p0, Lcom/facebook/ads/androidx/media3/common/DrmInitData;->A03:[Lcom/facebook/ads/androidx/media3/common/DrmInitData$SchemeData;

    .line 9380
    array-length v0, p3

    iput v0, p0, Lcom/facebook/ads/androidx/media3/common/DrmInitData;->A01:I

    .line 9381
    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/common/DrmInitData;->A03:[Lcom/facebook/ads/androidx/media3/common/DrmInitData$SchemeData;

    invoke-static {v0, p0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 9382
    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;[Lcom/facebook/ads/androidx/media3/common/DrmInitData$SchemeData;)V
    .locals 1

    .line 9383
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/facebook/ads/androidx/media3/common/DrmInitData;-><init>(Ljava/lang/String;Z[Lcom/facebook/ads/androidx/media3/common/DrmInitData$SchemeData;)V

    .line 9384
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/ads/androidx/media3/common/DrmInitData$SchemeData;",
            ">;)V"
        }
    .end annotation

    .line 9385
    .local p1, "schemeDatas":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/common/DrmInitData$SchemeData;>;"
    const/4 v2, 0x0

    new-array v0, v2, [Lcom/facebook/ads/androidx/media3/common/DrmInitData$SchemeData;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/facebook/ads/androidx/media3/common/DrmInitData$SchemeData;

    const/4 v0, 0x0

    invoke-direct {p0, v0, v2, v1}, Lcom/facebook/ads/androidx/media3/common/DrmInitData;-><init>(Ljava/lang/String;Z[Lcom/facebook/ads/androidx/media3/common/DrmInitData$SchemeData;)V

    .line 9386
    return-void
.end method

.method public varargs constructor <init>([Lcom/facebook/ads/androidx/media3/common/DrmInitData$SchemeData;)V
    .locals 1

    .line 9387
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/facebook/ads/androidx/media3/common/DrmInitData;-><init>(Ljava/lang/String;[Lcom/facebook/ads/androidx/media3/common/DrmInitData$SchemeData;)V

    .line 9388
    return-void
.end method

.method private final A00(Lcom/facebook/ads/androidx/media3/common/DrmInitData$SchemeData;Lcom/facebook/ads/androidx/media3/common/DrmInitData$SchemeData;)I
    .locals 2

    .line 9389
    sget-object v1, Lcom/facebook/ads/redexgen/X/2Y;->A03:Ljava/util/UUID;

    iget-object v0, p1, Lcom/facebook/ads/androidx/media3/common/DrmInitData$SchemeData;->A03:Ljava/util/UUID;

    invoke-virtual {v1, v0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9390
    sget-object v1, Lcom/facebook/ads/redexgen/X/2Y;->A03:Ljava/util/UUID;

    iget-object v0, p2, Lcom/facebook/ads/androidx/media3/common/DrmInitData$SchemeData;->A03:Ljava/util/UUID;

    invoke-virtual {v1, v0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 9391
    :goto_0
    return v0

    .line 9392
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 9393
    :cond_1
    iget-object v1, p1, Lcom/facebook/ads/androidx/media3/common/DrmInitData$SchemeData;->A03:Ljava/util/UUID;

    iget-object v0, p2, Lcom/facebook/ads/androidx/media3/common/DrmInitData$SchemeData;->A03:Ljava/util/UUID;

    invoke-virtual {v1, v0}, Ljava/util/UUID;->compareTo(Ljava/util/UUID;)I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public final A01(Ljava/lang/String;)Lcom/facebook/ads/androidx/media3/common/DrmInitData;
    .locals 3

    .line 9394
    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/common/DrmInitData;->A02:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/5C;->A1E(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9395
    return-object p0

    .line 9396
    :cond_0
    const/4 v2, 0x0

    iget-object v1, p0, Lcom/facebook/ads/androidx/media3/common/DrmInitData;->A03:[Lcom/facebook/ads/androidx/media3/common/DrmInitData$SchemeData;

    new-instance v0, Lcom/facebook/ads/androidx/media3/common/DrmInitData;

    invoke-direct {v0, p1, v2, v1}, Lcom/facebook/ads/androidx/media3/common/DrmInitData;-><init>(Ljava/lang/String;Z[Lcom/facebook/ads/androidx/media3/common/DrmInitData$SchemeData;)V

    return-object v0
.end method

.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 9397
    check-cast p1, Lcom/facebook/ads/androidx/media3/common/DrmInitData$SchemeData;

    check-cast p2, Lcom/facebook/ads/androidx/media3/common/DrmInitData$SchemeData;

    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/androidx/media3/common/DrmInitData;->A00(Lcom/facebook/ads/androidx/media3/common/DrmInitData$SchemeData;Lcom/facebook/ads/androidx/media3/common/DrmInitData$SchemeData;)I

    move-result v0

    return v0
.end method

.method public final describeContents()I
    .locals 1

    .line 9398
    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 9399
    const/4 v3, 0x1

    if-ne p0, p1, :cond_0

    .line 9400
    return v3

    .line 9401
    :cond_0
    const/4 v2, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-eq v1, v0, :cond_2

    .line 9402
    .end local v2
    :cond_1
    return v2

    .line 9403
    :cond_2
    check-cast p1, Lcom/facebook/ads/androidx/media3/common/DrmInitData;

    .line 9404
    .local v2, "other":Lcom/facebook/ads/androidx/media3/common/DrmInitData;
    iget-object v1, p0, Lcom/facebook/ads/androidx/media3/common/DrmInitData;->A02:Ljava/lang/String;

    iget-object v0, p1, Lcom/facebook/ads/androidx/media3/common/DrmInitData;->A02:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A1E(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/facebook/ads/androidx/media3/common/DrmInitData;->A03:[Lcom/facebook/ads/androidx/media3/common/DrmInitData$SchemeData;

    iget-object v0, p1, Lcom/facebook/ads/androidx/media3/common/DrmInitData;->A03:[Lcom/facebook/ads/androidx/media3/common/DrmInitData$SchemeData;

    .line 9405
    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9406
    :goto_0
    return v3

    .line 9407
    :cond_3
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .line 9408
    iget v0, p0, Lcom/facebook/ads/androidx/media3/common/DrmInitData;->A00:I

    if-nez v0, :cond_0

    .line 9409
    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/common/DrmInitData;->A02:Ljava/lang/String;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 9410
    .local v0, "result":I
    :goto_0
    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/common/DrmInitData;->A03:[Lcom/facebook/ads/androidx/media3/common/DrmInitData$SchemeData;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    .line 9411
    .end local v0    # "result":I
    .local v1, "result":I
    iput v1, p0, Lcom/facebook/ads/androidx/media3/common/DrmInitData;->A00:I

    .line 9412
    .end local v1    # "result":I
    :cond_0
    iget v0, p0, Lcom/facebook/ads/androidx/media3/common/DrmInitData;->A00:I

    return v0

    .line 9413
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/common/DrmInitData;->A02:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 9414
    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/common/DrmInitData;->A02:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9415
    iget-object v1, p0, Lcom/facebook/ads/androidx/media3/common/DrmInitData;->A03:[Lcom/facebook/ads/androidx/media3/common/DrmInitData$SchemeData;

    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 9416
    return-void
.end method
