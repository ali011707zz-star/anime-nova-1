.class public abstract Lcom/facebook/ads/redexgen/X/iq;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/is;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AiFrcCompatibilityChecker"
.end annotation


# static fields
.field public static A00:Ljava/lang/Boolean;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public static A01:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 2956
    invoke-static {}, Lcom/facebook/ads/redexgen/X/iq;->A01()V

    const/4 v0, 0x0

    sput-object v0, Lcom/facebook/ads/redexgen/X/iq;->A00:Ljava/lang/Boolean;

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/iq;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x7d

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .locals 1

    const/16 v0, 0x54

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/iq;->A01:[B

    return-void

    :array_0
    .array-data 1
        0x6at
        0x4dt
        0x45t
        0x40t
        0x49t
        0x48t
        0xct
        0x58t
        0x43t
        0xct
        0x4bt
        0x49t
        0x58t
        0xct
        0x41t
        0x49t
        0x48t
        0x45t
        0x4dt
        0xct
        0x6ft
        0x43t
        0x48t
        0x49t
        0x4ft
        0x7t
        0x2at
        0x3dt
        0x20t
        0xat
        0x37t
        0x20t
        0x1at
        0x3bt
        0x26t
        0x23t
        0x61t
        0x72t
        0x79t
        0x73t
        0x78t
        0x65t
        0x39t
        0x64t
        0x72t
        0x74t
        0x3at
        0x76t
        0x7et
        0x71t
        0x65t
        0x74t
        0x3at
        0x63t
        0x65t
        0x76t
        0x79t
        0x64t
        0x71t
        0x72t
        0x65t
        0x3at
        0x65t
        0x72t
        0x66t
        0x62t
        0x72t
        0x64t
        0x63t
        0x39t
        0x61t
        0x76t
        0x7bt
        0x62t
        0x72t
        0x41t
        0x5et
        0x53t
        0x52t
        0x58t
        0x18t
        0x56t
        0x41t
        0x54t
    .end array-data
.end method

.method public static A02()Z
    .locals 6

    .line 87508
    sget-object v0, Lcom/facebook/ads/redexgen/X/iq;->A00:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 87509
    sget-object v0, Lcom/facebook/ads/redexgen/X/iq;->A00:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 87510
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/iq;->A00:Ljava/lang/Boolean;

    .line 87511
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1f

    if-lt v1, v0, :cond_3

    .line 87512
    const/16 v2, 0x4b

    const/16 v1, 0x9

    const/16 v0, 0x4a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/iq;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v5

    .line 87513
    .local v0, "mediaCodec":Landroid/media/MediaCodec;
    invoke-virtual {v5}, Landroid/media/MediaCodec;->getSupportedVendorParameters()Ljava/util/List;

    move-result-object v0

    .line 87514
    .local v1, "vendorParameters":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 87515
    .local v3, "param":Ljava/lang/String;
    const/16 v2, 0x24

    const/16 v1, 0x27

    const/16 v0, 0x6a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/iq;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 87516
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/iq;->A00:Ljava/lang/Boolean;

    .line 87517
    :cond_2
    invoke-virtual {v5}, Landroid/media/MediaCodec;->release()V

    goto :goto_0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87518
    :catch_0
    move-exception v4

    .line 87519
    .local v0, "e":Ljava/io/IOException;
    const/16 v2, 0x19

    const/16 v1, 0xb

    const/16 v0, 0x32

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/iq;->A00(III)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0x19

    const/16 v0, 0x51

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/iq;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v4}, Lcom/facebook/ads/redexgen/X/hd;->A02(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 87520
    .end local v0    # "e":Ljava/io/IOException;
    :cond_3
    :goto_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/iq;->A00:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static A03(II)Z
    .locals 1

    .line 87521
    const/16 v0, 0x1e0

    if-lt p0, v0, :cond_0

    if-lt p1, v0, :cond_0

    const/16 v0, 0xf00

    if-gt p0, v0, :cond_0

    const/16 v0, 0x870

    if-gt p1, v0, :cond_0

    .line 87522
    const/4 v0, 0x1

    return v0

    .line 87523
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
