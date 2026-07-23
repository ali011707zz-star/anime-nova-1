.class public abstract enum Lcom/facebook/ads/redexgen/X/BJ;
.super Ljava/lang/Enum;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/kO;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/po;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "EntryFunction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/ads/redexgen/X/BJ;",
        ">;",
        "Lcom/facebook/ads/redexgen/X/kO<",
        "Ljava/util/Map$Entry<",
        "**>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static A00:[B

.field public static final synthetic A01:[Lcom/facebook/ads/redexgen/X/BJ;

.field public static final enum A02:Lcom/facebook/ads/redexgen/X/BJ;

.field public static final enum A03:Lcom/facebook/ads/redexgen/X/BJ;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 655
    invoke-static {}, Lcom/facebook/ads/redexgen/X/BJ;->A02()V

    const/4 v2, 0x0

    const/4 v1, 0x3

    const/16 v0, 0x38

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/BJ;->A01(III)Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/2H;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/2H;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/BJ;->A02:Lcom/facebook/ads/redexgen/X/BJ;

    .line 656
    const/4 v2, 0x3

    const/4 v1, 0x5

    const/16 v0, 0x6e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/BJ;->A01(III)Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x1

    new-instance v0, Lcom/facebook/ads/redexgen/X/2G;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/2G;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/BJ;->A03:Lcom/facebook/ads/redexgen/X/BJ;

    .line 657
    invoke-static {}, Lcom/facebook/ads/redexgen/X/BJ;->A03()[Lcom/facebook/ads/redexgen/X/BJ;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/BJ;->A01:[Lcom/facebook/ads/redexgen/X/BJ;

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
            "$enum$name",
            "$enum$ordinal"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 30364
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/BL;)V
    .locals 0

    .line 30365
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/BJ;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/BJ;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x40

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

    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/BJ;->A00:[B

    return-void

    :array_0
    .array-data 1
        -0x3dt
        -0x43t
        -0x2ft
        0x4t
        -0x11t
        -0x6t
        0x3t
        -0xdt
    .end array-data
.end method

.method public static synthetic A03()[Lcom/facebook/ads/redexgen/X/BJ;
    .locals 3

    .line 30366
    const/4 v0, 0x2

    new-array v2, v0, [Lcom/facebook/ads/redexgen/X/BJ;

    sget-object v1, Lcom/facebook/ads/redexgen/X/BJ;->A02:Lcom/facebook/ads/redexgen/X/BJ;

    const/4 v0, 0x0

    aput-object v1, v2, v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/BJ;->A03:Lcom/facebook/ads/redexgen/X/BJ;

    const/4 v0, 0x1

    aput-object v1, v2, v0

    return-object v2
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/BJ;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 30367
    const-class v0, Lcom/facebook/ads/redexgen/X/BJ;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/BJ;

    return-object v0
.end method

.method public static values()[Lcom/facebook/ads/redexgen/X/BJ;
    .locals 1

    .line 30368
    sget-object v0, Lcom/facebook/ads/redexgen/X/BJ;->A01:[Lcom/facebook/ads/redexgen/X/BJ;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/ads/redexgen/X/BJ;

    return-object v0
.end method
