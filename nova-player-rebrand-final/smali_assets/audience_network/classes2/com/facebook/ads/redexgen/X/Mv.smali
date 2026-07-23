.class public final enum Lcom/facebook/ads/redexgen/X/Mv;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/ads/redexgen/X/Mv;",
        ">;"
    }
.end annotation


# static fields
.field public static A00:[B

.field public static final synthetic A01:[Lcom/facebook/ads/redexgen/X/Mv;

.field public static final enum A02:Lcom/facebook/ads/redexgen/X/Mv;

.field public static final enum A03:Lcom/facebook/ads/redexgen/X/Mv;

.field public static final enum A04:Lcom/facebook/ads/redexgen/X/Mv;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1414
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Mv;->A02()V

    const/16 v2, 0x9

    const/4 v1, 0x4

    const/16 v0, 0x75

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Mv;->A01(III)Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/Mv;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/Mv;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Mv;->A03:Lcom/facebook/ads/redexgen/X/Mv;

    .line 1415
    const/4 v2, 0x0

    const/16 v1, 0x9

    const/16 v0, 0x29

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Mv;->A01(III)Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Mv;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/Mv;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Mv;->A02:Lcom/facebook/ads/redexgen/X/Mv;

    .line 1416
    const/16 v2, 0xd

    const/16 v1, 0xd

    const/16 v0, 0x18

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Mv;->A01(III)Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x2

    new-instance v0, Lcom/facebook/ads/redexgen/X/Mv;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/Mv;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Mv;->A04:Lcom/facebook/ads/redexgen/X/Mv;

    .line 1417
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Mv;->A03()[Lcom/facebook/ads/redexgen/X/Mv;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Mv;->A01:[Lcom/facebook/ads/redexgen/X/Mv;

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

    .line 52618
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static A00(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Mv;
    .locals 1

    .line 52619
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52620
    sget-object v0, Lcom/facebook/ads/redexgen/X/Mv;->A03:Lcom/facebook/ads/redexgen/X/Mv;

    return-object v0

    .line 52621
    :cond_0
    :try_start_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Mv;->valueOf(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Mv;

    move-result-object v0

    return-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52622
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    :catch_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/Mv;->A03:Lcom/facebook/ads/redexgen/X/Mv;

    return-object v0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Mv;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x24

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

    const/16 v0, 0x1a

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Mv;->A00:[B

    return-void

    :array_0
    .array-data 1
        0x44t
        0x43t
        0x5et
        0x59t
        0x4ct
        0x41t
        0x41t
        0x48t
        0x49t
        0x1ft
        0x1et
        0x1ft
        0x14t
        0x72t
        0x73t
        0x68t
        0x63t
        0x75t
        0x72t
        0x6ft
        0x68t
        0x7dt
        0x70t
        0x70t
        0x79t
        0x78t
    .end array-data
.end method

.method public static synthetic A03()[Lcom/facebook/ads/redexgen/X/Mv;
    .locals 3

    .line 52623
    const/4 v0, 0x3

    new-array v2, v0, [Lcom/facebook/ads/redexgen/X/Mv;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Mv;->A03:Lcom/facebook/ads/redexgen/X/Mv;

    const/4 v0, 0x0

    aput-object v1, v2, v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/Mv;->A02:Lcom/facebook/ads/redexgen/X/Mv;

    const/4 v0, 0x1

    aput-object v1, v2, v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/Mv;->A04:Lcom/facebook/ads/redexgen/X/Mv;

    const/4 v0, 0x2

    aput-object v1, v2, v0

    return-object v2
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Mv;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 52624
    const-class v0, Lcom/facebook/ads/redexgen/X/Mv;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Mv;

    return-object v0
.end method

.method public static values()[Lcom/facebook/ads/redexgen/X/Mv;
    .locals 1

    .line 52625
    sget-object v0, Lcom/facebook/ads/redexgen/X/Mv;->A01:[Lcom/facebook/ads/redexgen/X/Mv;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/ads/redexgen/X/Mv;

    return-object v0
.end method
