.class public final Lcom/facebook/ads/internal/androidx/support/v4/view/ViewPager$SavedState;
.super Lcom/facebook/ads/internal/androidx/support/v4/view/AbsSavedState;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Pv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SavedState"
.end annotation


# static fields
.field public static A03:[B

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/facebook/ads/internal/androidx/support/v4/view/ViewPager$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public A00:I

.field public A01:Landroid/os/Parcelable;

.field public A02:Ljava/lang/ClassLoader;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 2939
    invoke-static {}, Lcom/facebook/ads/internal/androidx/support/v4/view/ViewPager$SavedState;->A02()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/Pt;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Pt;-><init>()V

    sput-object v0, Lcom/facebook/ads/internal/androidx/support/v4/view/ViewPager$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .locals 1

    .line 86178
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/internal/androidx/support/v4/view/AbsSavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    .line 86179
    if-nez p2, :cond_0

    .line 86180
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p2

    .line 86181
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/internal/androidx/support/v4/view/ViewPager$SavedState;->A00:I

    .line 86182
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/internal/androidx/support/v4/view/ViewPager$SavedState;->A01:Landroid/os/Parcelable;

    .line 86183
    iput-object p2, p0, Lcom/facebook/ads/internal/androidx/support/v4/view/ViewPager$SavedState;->A02:Ljava/lang/ClassLoader;

    .line 86184
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    .line 86185
    invoke-direct {p0, p1}, Lcom/facebook/ads/internal/androidx/support/v4/view/AbsSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 86186
    return-void
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/internal/androidx/support/v4/view/ViewPager$SavedState;->A03:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x7e

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

    const/16 v0, 0x24

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/internal/androidx/support/v4/view/ViewPager$SavedState;->A03:[B

    return-void

    :array_0
    .array-data 1
        0x22t
        0x72t
        0x6dt
        0x71t
        0x6bt
        0x76t
        0x6bt
        0x6dt
        0x6ct
        0x3ft
        0x45t
        0x71t
        0x62t
        0x64t
        0x6et
        0x66t
        0x6dt
        0x77t
        0x53t
        0x62t
        0x64t
        0x66t
        0x71t
        0x2dt
        0x50t
        0x62t
        0x75t
        0x66t
        0x67t
        0x50t
        0x77t
        0x62t
        0x77t
        0x66t
        0x78t
        0x6t
    .end array-data
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 4

    .line 86187
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xa

    const/16 v1, 0x19

    const/16 v0, 0x7d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/internal/androidx/support/v4/view/ViewPager$SavedState;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 86188
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0xa

    const/16 v0, 0x7c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/internal/androidx/support/v4/view/ViewPager$SavedState;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, p0, Lcom/facebook/ads/internal/androidx/support/v4/view/ViewPager$SavedState;->A00:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0x23

    const/4 v1, 0x1

    const/4 v0, 0x5

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/internal/androidx/support/v4/view/ViewPager$SavedState;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 86189
    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 86190
    invoke-super {p0, p1, p2}, Lcom/facebook/ads/internal/androidx/support/v4/view/AbsSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 86191
    iget v0, p0, Lcom/facebook/ads/internal/androidx/support/v4/view/ViewPager$SavedState;->A00:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 86192
    iget-object v0, p0, Lcom/facebook/ads/internal/androidx/support/v4/view/ViewPager$SavedState;->A01:Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 86193
    return-void
.end method
