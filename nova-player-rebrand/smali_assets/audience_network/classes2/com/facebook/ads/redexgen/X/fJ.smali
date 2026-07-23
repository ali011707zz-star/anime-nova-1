.class public final enum Lcom/facebook/ads/redexgen/X/fJ;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/fK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AnimationState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/ads/redexgen/X/fJ;",
        ">;"
    }
.end annotation


# static fields
.field public static A00:[B

.field public static final synthetic A01:[Lcom/facebook/ads/redexgen/X/fJ;

.field public static final enum A02:Lcom/facebook/ads/redexgen/X/fJ;

.field public static final enum A03:Lcom/facebook/ads/redexgen/X/fJ;

.field public static final enum A04:Lcom/facebook/ads/redexgen/X/fJ;

.field public static final enum A05:Lcom/facebook/ads/redexgen/X/fJ;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 2808
    invoke-static {}, Lcom/facebook/ads/redexgen/X/fJ;->A01()V

    const/16 v2, 0x8

    const/16 v1, 0x9

    const/16 v0, 0x52

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/fJ;->A00(III)Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/fJ;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/fJ;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/fJ;->A03:Lcom/facebook/ads/redexgen/X/fJ;

    .line 2809
    const/4 v2, 0x0

    const/16 v1, 0x8

    const/16 v0, 0x25

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/fJ;->A00(III)Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x1

    new-instance v0, Lcom/facebook/ads/redexgen/X/fJ;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/fJ;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/fJ;->A02:Lcom/facebook/ads/redexgen/X/fJ;

    .line 2810
    const/16 v2, 0x21

    const/16 v1, 0x11

    const/16 v0, 0x71

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/fJ;->A00(III)Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x2

    new-instance v0, Lcom/facebook/ads/redexgen/X/fJ;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/fJ;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/fJ;->A05:Lcom/facebook/ads/redexgen/X/fJ;

    .line 2811
    const/16 v2, 0x11

    const/16 v1, 0x10

    const/16 v0, 0x41

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/fJ;->A00(III)Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x3

    new-instance v0, Lcom/facebook/ads/redexgen/X/fJ;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/fJ;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/fJ;->A04:Lcom/facebook/ads/redexgen/X/fJ;

    .line 2812
    invoke-static {}, Lcom/facebook/ads/redexgen/X/fJ;->A02()[Lcom/facebook/ads/redexgen/X/fJ;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/fJ;->A01:[Lcom/facebook/ads/redexgen/X/fJ;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 82287
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/fJ;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x78

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

    const/16 v0, 0x32

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/fJ;->A00:[B

    return-void

    :array_0
    .array-data 1
        0x1ct
        0x13t
        0x14t
        0x10t
        0x1ct
        0x9t
        0x18t
        0x19t
        0x6bt
        0x64t
        0x63t
        0x67t
        0x6bt
        0x7et
        0x63t
        0x64t
        0x6dt
        0x6bt
        0x7ct
        0x6ft
        0x7ct
        0x6bt
        0x6at
        0x7ct
        0x66t
        0x78t
        0x77t
        0x70t
        0x74t
        0x78t
        0x6dt
        0x7ct
        0x7dt
        0x5bt
        0x4ct
        0x5ft
        0x4ct
        0x5bt
        0x5at
        0x4ct
        0x56t
        0x48t
        0x47t
        0x40t
        0x44t
        0x48t
        0x5dt
        0x40t
        0x47t
        0x4et
    .end array-data
.end method

.method public static synthetic A02()[Lcom/facebook/ads/redexgen/X/fJ;
    .locals 3

    .line 82288
    const/4 v0, 0x4

    new-array v2, v0, [Lcom/facebook/ads/redexgen/X/fJ;

    sget-object v1, Lcom/facebook/ads/redexgen/X/fJ;->A03:Lcom/facebook/ads/redexgen/X/fJ;

    const/4 v0, 0x0

    aput-object v1, v2, v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/fJ;->A02:Lcom/facebook/ads/redexgen/X/fJ;

    const/4 v0, 0x1

    aput-object v1, v2, v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/fJ;->A05:Lcom/facebook/ads/redexgen/X/fJ;

    const/4 v0, 0x2

    aput-object v1, v2, v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/fJ;->A04:Lcom/facebook/ads/redexgen/X/fJ;

    const/4 v0, 0x3

    aput-object v1, v2, v0

    return-object v2
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/fJ;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 82289
    const-class v0, Lcom/facebook/ads/redexgen/X/fJ;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/fJ;

    return-object v0
.end method

.method public static values()[Lcom/facebook/ads/redexgen/X/fJ;
    .locals 1

    .line 82290
    sget-object v0, Lcom/facebook/ads/redexgen/X/fJ;->A01:[Lcom/facebook/ads/redexgen/X/fJ;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/ads/redexgen/X/fJ;

    return-object v0
.end method
