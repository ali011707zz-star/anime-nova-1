.class public final Lcom/facebook/ads/redexgen/X/ja;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/jX;,
        Lcom/facebook/ads/redexgen/X/jY;,
        Lcom/facebook/ads/redexgen/X/jZ;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\t\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0003\u0017\u0018\u0019B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0011\u0010\u000e\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u0006H\u0087\u0002J\u0019\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u0007H\u0087\u0002J\u0010\u0010\u0013\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\tH\u0007J\u0018\u0010\u0014\u001a\u00020\u00112\u0006\u0010\u000f\u001a\u00020\t2\u0006\u0010\u0012\u001a\u00020\nH\u0007J\u0010\u0010\u0015\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\u000cH\u0007J\u0018\u0010\u0016\u001a\u00020\u00112\u0006\u0010\u000f\u001a\u00020\u000c2\u0006\u0010\u0012\u001a\u00020\rH\u0007R\u001a\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0008\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\r0\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerUpgradeConfig;",
        "",
        "<init>",
        "()V",
        "CONFIG",
        "",
        "Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerUpgradeConfig$ID;",
        "",
        "INTEGER_CONFIG",
        "Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerUpgradeConfig$INTEGER_ID;",
        "",
        "LONG_CONFIG",
        "Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerUpgradeConfig$LONG_ID;",
        "",
        "get",
        "upgradeIdentifier",
        "set",
        "",
        "value",
        "getInteger",
        "setInteger",
        "getLong",
        "setLong",
        "ID",
        "INTEGER_ID",
        "LONG_ID",
        "fbandroid.java.com.facebook.video.heroplayer.exocustom.exocustom"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static A00:[B

.field public static final A01:Lcom/facebook/ads/redexgen/X/ja;

.field public static final A02:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/facebook/ads/redexgen/X/jX;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final A03:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/facebook/ads/redexgen/X/jY;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final A04:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/facebook/ads/redexgen/X/jZ;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    invoke-static {}, Lcom/facebook/ads/redexgen/X/ja;->A02()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/ja;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/ja;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/ja;->A01:Lcom/facebook/ads/redexgen/X/ja;

    .line 3111
    const-class v1, Lcom/facebook/ads/redexgen/X/jX;

    new-instance v0, Ljava/util/EnumMap;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    check-cast v0, Ljava/util/Map;

    sput-object v0, Lcom/facebook/ads/redexgen/X/ja;->A02:Ljava/util/Map;

    .line 3112
    const-class v1, Lcom/facebook/ads/redexgen/X/jY;

    new-instance v0, Ljava/util/EnumMap;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    check-cast v0, Ljava/util/Map;

    sput-object v0, Lcom/facebook/ads/redexgen/X/ja;->A03:Ljava/util/Map;

    .line 3113
    const-class v1, Lcom/facebook/ads/redexgen/X/jZ;

    new-instance v0, Ljava/util/EnumMap;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    check-cast v0, Ljava/util/Map;

    sput-object v0, Lcom/facebook/ads/redexgen/X/ja;->A04:Ljava/util/Map;

    .line 3114
    invoke-static {}, Lcom/facebook/ads/redexgen/X/jX;->values()[Lcom/facebook/ads/redexgen/X/jX;

    move-result-object v5

    array-length v4, v5

    const/4 v6, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v2, v5, v3

    .line 3115
    .local v4, "id":Lcom/facebook/ads/redexgen/X/jX;
    sget-object v1, Lcom/facebook/ads/redexgen/X/ja;->A02:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3116
    .end local v4    # "id":Lcom/facebook/ads/redexgen/X/jX;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3117
    :cond_0
    invoke-static {}, Lcom/facebook/ads/redexgen/X/jY;->values()[Lcom/facebook/ads/redexgen/X/jY;

    move-result-object v5

    array-length v4, v5

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_1

    aget-object v2, v5, v3

    .line 3118
    .local v4, "id":Lcom/facebook/ads/redexgen/X/jY;
    sget-object v1, Lcom/facebook/ads/redexgen/X/ja;->A03:Ljava/util/Map;

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3119
    .end local v4    # "id":Lcom/facebook/ads/redexgen/X/jY;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3120
    :cond_1
    invoke-static {}, Lcom/facebook/ads/redexgen/X/jZ;->values()[Lcom/facebook/ads/redexgen/X/jZ;

    move-result-object v5

    array-length v4, v5

    :goto_2
    if-ge v6, v4, :cond_2

    aget-object v3, v5, v6

    .line 3121
    .local v3, "id":Lcom/facebook/ads/redexgen/X/jZ;
    sget-object v2, Lcom/facebook/ads/redexgen/X/ja;->A04:Ljava/util/Map;

    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3122
    .end local v3    # "id":Lcom/facebook/ads/redexgen/X/jZ;
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 3123
    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/ja;->A02:Ljava/util/Map;

    sget-object v1, Lcom/facebook/ads/redexgen/X/jX;->A0W:Lcom/facebook/ads/redexgen/X/jX;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3124
    sget-object v2, Lcom/facebook/ads/redexgen/X/ja;->A02:Ljava/util/Map;

    sget-object v1, Lcom/facebook/ads/redexgen/X/jX;->A0Q:Lcom/facebook/ads/redexgen/X/jX;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3125
    sget-object v2, Lcom/facebook/ads/redexgen/X/ja;->A02:Ljava/util/Map;

    sget-object v1, Lcom/facebook/ads/redexgen/X/jX;->A1j:Lcom/facebook/ads/redexgen/X/jX;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3126
    sget-object v2, Lcom/facebook/ads/redexgen/X/ja;->A03:Ljava/util/Map;

    sget-object v1, Lcom/facebook/ads/redexgen/X/jY;->A05:Lcom/facebook/ads/redexgen/X/jY;

    const/16 v0, 0x64

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3127
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 88424
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final A00(Lcom/facebook/ads/redexgen/X/jY;)I
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/16 v2, 0x18

    const/16 v1, 0x11

    const/16 v0, 0x28

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ja;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/qY;->A09(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88425
    sget-object v0, Lcom/facebook/ads/redexgen/X/ja;->A03:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0

    :cond_0
    const/4 v2, 0x0

    const/16 v1, 0x18

    const/16 v0, 0x56

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ja;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/ja;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x7a

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

    const/16 v0, 0x29

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/ja;->A00:[B

    return-void

    :array_0
    .array-data 1
        0x7et
        0x49t
        0x5dt
        0x59t
        0x45t
        0x5et
        0x49t
        0x48t
        0xct
        0x5at
        0x4dt
        0x40t
        0x59t
        0x49t
        0xct
        0x5bt
        0x4dt
        0x5ft
        0xct
        0x42t
        0x59t
        0x40t
        0x40t
        0x2t
        0x27t
        0x22t
        0x35t
        0x20t
        0x33t
        0x36t
        0x37t
        0x1bt
        0x36t
        0x37t
        0x3ct
        0x26t
        0x3bt
        0x34t
        0x3bt
        0x37t
        0x20t
    .end array-data
.end method

.method public static final A03(Lcom/facebook/ads/redexgen/X/jX;)Z
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/16 v2, 0x18

    const/16 v1, 0x11

    const/16 v0, 0x28

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ja;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/qY;->A09(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88426
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/ja;->A02:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/qY;->A0C(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
