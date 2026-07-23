.class public final enum Lcom/facebook/ads/redexgen/X/jZ;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/ja;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LONG_ID"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/ads/redexgen/X/jZ;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0004\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003j\u0002\u0008\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerUpgradeConfig$LONG_ID;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "INITIAL_RENDERER_POSITION_OFFSET_US",
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

.field public static A01:[Ljava/lang/String;

.field public static final synthetic A02:Lcom/facebook/ads/redexgen/X/Ac;

.field public static final synthetic A03:[Lcom/facebook/ads/redexgen/X/jZ;

.field public static final enum A04:Lcom/facebook/ads/redexgen/X/jZ;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 3110
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "kbxTv3n6hOrYmARNELIVFN1o35aFfxf9"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "DC"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "fWmFvctsjomcGnzUliPpX0WJqK3ttEhT"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "gzuy7MWN7RDST0VBtMES1RH9HPGoue"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "foiaC1fQ94YGSPY2K40utxG5DrDjHMZK"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "wvizdHnr"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "2cDtQFqEW53Cr0fRDBLwjWIuLIMxwFH2"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "gA310x3TNgH1UJZXUpTymdFhi18Mjiej"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/jZ;->A01:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/jZ;->A01()V

    const/4 v2, 0x0

    const/16 v1, 0x23

    const/16 v0, 0x4f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/jZ;->A00(III)Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/jZ;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/jZ;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/jZ;->A04:Lcom/facebook/ads/redexgen/X/jZ;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/jZ;->A02()[Lcom/facebook/ads/redexgen/X/jZ;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/jZ;->A03:[Lcom/facebook/ads/redexgen/X/jZ;

    sget-object v0, Lcom/facebook/ads/redexgen/X/jZ;->A03:[Lcom/facebook/ads/redexgen/X/jZ;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/qd;->A01([Ljava/lang/Enum;)Lcom/facebook/ads/redexgen/X/Ac;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/jZ;->A02:Lcom/facebook/ads/redexgen/X/Ac;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 88421
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/jZ;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const/4 p0, 0x0

    :goto_0
    array-length p1, v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/jZ;->A01:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v2, v2, v0

    const/16 v0, 0x1e

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/jZ;->A01:[Ljava/lang/String;

    const-string v1, "bPc16As4eDCXVeAhkQE8g5lePspI9WaB"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "g5SuAOrPD4zJLvmEwHOKGazhXjfOTdbt"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-ge p0, p1, :cond_0

    aget-byte v0, v3, p0

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x39

    int-to-byte v0, v0

    aput-byte v0, v3, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A01()V
    .locals 1

    const/16 v0, 0x23

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/jZ;->A00:[B

    return-void

    :array_0
    .array-data 1
        -0x2ft
        -0x2at
        -0x2ft
        -0x24t
        -0x2ft
        -0x37t
        -0x2ct
        -0x19t
        -0x26t
        -0x33t
        -0x2at
        -0x34t
        -0x33t
        -0x26t
        -0x33t
        -0x26t
        -0x19t
        -0x28t
        -0x29t
        -0x25t
        -0x2ft
        -0x24t
        -0x2ft
        -0x29t
        -0x2at
        -0x19t
        -0x29t
        -0x32t
        -0x32t
        -0x25t
        -0x33t
        -0x24t
        -0x19t
        -0x23t
        -0x25t
    .end array-data
.end method

.method public static final synthetic A02()[Lcom/facebook/ads/redexgen/X/jZ;
    .locals 3

    const/4 v0, 0x1

    new-array v2, v0, [Lcom/facebook/ads/redexgen/X/jZ;

    sget-object v1, Lcom/facebook/ads/redexgen/X/jZ;->A04:Lcom/facebook/ads/redexgen/X/jZ;

    const/4 v0, 0x0

    aput-object v1, v2, v0

    return-object v2
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/jZ;
    .locals 1

    const-class v0, Lcom/facebook/ads/redexgen/X/jZ;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    .line 88422
    check-cast v0, Lcom/facebook/ads/redexgen/X/jZ;

    return-object v0
.end method

.method public static values()[Lcom/facebook/ads/redexgen/X/jZ;
    .locals 1

    sget-object v0, Lcom/facebook/ads/redexgen/X/jZ;->A03:[Lcom/facebook/ads/redexgen/X/jZ;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    .line 88423
    check-cast v0, [Lcom/facebook/ads/redexgen/X/jZ;

    return-object v0
.end method
