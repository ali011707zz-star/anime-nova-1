.class public final enum Lcom/facebook/ads/redexgen/X/Xy;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Xz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NetworkType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/ads/redexgen/X/Xy;",
        ">;"
    }
.end annotation


# static fields
.field public static A01:[B

.field public static final synthetic A02:[Lcom/facebook/ads/redexgen/X/Xy;

.field public static final enum A03:Lcom/facebook/ads/redexgen/X/Xy;

.field public static final enum A04:Lcom/facebook/ads/redexgen/X/Xy;

.field public static final enum A05:Lcom/facebook/ads/redexgen/X/Xy;

.field public static final enum A06:Lcom/facebook/ads/redexgen/X/Xy;

.field public static final enum A07:Lcom/facebook/ads/redexgen/X/Xy;

.field public static final enum A08:Lcom/facebook/ads/redexgen/X/Xy;


# instance fields
.field public final A00:I


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 2407
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Xy;->A01()V

    const/16 v2, 0x2e

    const/4 v1, 0x7

    const/16 v0, 0x53

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Xy;->A00(III)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/Xy;

    invoke-direct {v0, v1, v3, v3}, Lcom/facebook/ads/redexgen/X/Xy;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Xy;->A08:Lcom/facebook/ads/redexgen/X/Xy;

    .line 2408
    const/16 v2, 0x2a

    const/4 v1, 0x4

    const/16 v0, 0x1c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Xy;->A00(III)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Xy;

    invoke-direct {v0, v1, v4, v3}, Lcom/facebook/ads/redexgen/X/Xy;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Xy;->A07:Lcom/facebook/ads/redexgen/X/Xy;

    .line 2409
    const/16 v2, 0x1b

    const/16 v1, 0xf

    const/16 v0, 0x54

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Xy;->A00(III)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    new-instance v0, Lcom/facebook/ads/redexgen/X/Xy;

    invoke-direct {v0, v1, v3, v4}, Lcom/facebook/ads/redexgen/X/Xy;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Xy;->A06:Lcom/facebook/ads/redexgen/X/Xy;

    .line 2410
    const/4 v2, 0x0

    const/16 v1, 0x9

    const/16 v0, 0x5f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Xy;->A00(III)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x3

    new-instance v0, Lcom/facebook/ads/redexgen/X/Xy;

    invoke-direct {v0, v1, v4, v3}, Lcom/facebook/ads/redexgen/X/Xy;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Xy;->A03:Lcom/facebook/ads/redexgen/X/Xy;

    .line 2411
    const/16 v2, 0x9

    const/16 v1, 0x9

    const/16 v0, 0x6f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Xy;->A00(III)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x4

    new-instance v0, Lcom/facebook/ads/redexgen/X/Xy;

    invoke-direct {v0, v1, v3, v4}, Lcom/facebook/ads/redexgen/X/Xy;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Xy;->A04:Lcom/facebook/ads/redexgen/X/Xy;

    .line 2412
    const/16 v2, 0x12

    const/16 v1, 0x9

    const/16 v0, 0x3d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Xy;->A00(III)Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x5

    new-instance v0, Lcom/facebook/ads/redexgen/X/Xy;

    invoke-direct {v0, v2, v1, v3}, Lcom/facebook/ads/redexgen/X/Xy;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Xy;->A05:Lcom/facebook/ads/redexgen/X/Xy;

    .line 2413
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Xy;->A02()[Lcom/facebook/ads/redexgen/X/Xy;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Xy;->A02:[Lcom/facebook/ads/redexgen/X/Xy;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 73237
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 73238
    iput p3, p0, Lcom/facebook/ads/redexgen/X/Xy;->A00:I

    .line 73239
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Xy;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x15

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

    const/16 v0, 0x35

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Xy;->A01:[B

    return-void

    :array_0
    .array-data 1
        -0x3ft
        -0x3dt
        -0x4at
        -0x43t
        -0x40t
        -0x47t
        -0x2dt
        -0x5at
        -0x45t
        -0x2ft
        -0x2dt
        -0x3at
        -0x33t
        -0x30t
        -0x37t
        -0x1dt
        -0x49t
        -0x35t
        -0x61t
        -0x5ft
        -0x6ct
        -0x65t
        -0x62t
        -0x69t
        -0x4ft
        -0x7at
        -0x67t
        -0x4at
        -0x48t
        -0x55t
        -0x4et
        -0x4bt
        -0x52t
        -0x38t
        -0x4et
        -0x49t
        -0x43t
        -0x52t
        -0x45t
        -0x49t
        -0x52t
        -0x43t
        0x7ft
        -0x80t
        0x7ft
        0x76t
        -0x43t
        -0x4at
        -0x4dt
        -0x4at
        -0x49t
        -0x41t
        -0x4at
    .end array-data
.end method

.method public static synthetic A02()[Lcom/facebook/ads/redexgen/X/Xy;
    .locals 3

    .line 73240
    const/4 v0, 0x6

    new-array v2, v0, [Lcom/facebook/ads/redexgen/X/Xy;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Xy;->A08:Lcom/facebook/ads/redexgen/X/Xy;

    const/4 v0, 0x0

    aput-object v1, v2, v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/Xy;->A07:Lcom/facebook/ads/redexgen/X/Xy;

    const/4 v0, 0x1

    aput-object v1, v2, v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/Xy;->A06:Lcom/facebook/ads/redexgen/X/Xy;

    const/4 v0, 0x2

    aput-object v1, v2, v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/Xy;->A03:Lcom/facebook/ads/redexgen/X/Xy;

    const/4 v0, 0x3

    aput-object v1, v2, v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/Xy;->A04:Lcom/facebook/ads/redexgen/X/Xy;

    const/4 v0, 0x4

    aput-object v1, v2, v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/Xy;->A05:Lcom/facebook/ads/redexgen/X/Xy;

    const/4 v0, 0x5

    aput-object v1, v2, v0

    return-object v2
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Xy;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 73241
    const-class v0, Lcom/facebook/ads/redexgen/X/Xy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Xy;

    return-object v0
.end method

.method public static values()[Lcom/facebook/ads/redexgen/X/Xy;
    .locals 1

    .line 73242
    sget-object v0, Lcom/facebook/ads/redexgen/X/Xy;->A02:[Lcom/facebook/ads/redexgen/X/Xy;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/ads/redexgen/X/Xy;

    return-object v0
.end method
