.class public final enum Lcom/facebook/ads/redexgen/X/rO;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/rN;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RegistrationStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/ads/redexgen/X/rO;",
        ">;"
    }
.end annotation


# static fields
.field public static A00:[B

.field public static final synthetic A01:[Lcom/facebook/ads/redexgen/X/rO;

.field public static final enum A02:Lcom/facebook/ads/redexgen/X/rO;

.field public static final enum A03:Lcom/facebook/ads/redexgen/X/rO;

.field public static final enum A04:Lcom/facebook/ads/redexgen/X/rO;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 3598
    invoke-static {}, Lcom/facebook/ads/redexgen/X/rO;->A01()V

    const/4 v2, 0x0

    const/16 v1, 0x10

    const/16 v0, 0x63

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/rO;->A00(III)Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/rO;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/rO;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/rO;->A02:Lcom/facebook/ads/redexgen/X/rO;

    .line 3599
    const/16 v2, 0x10

    const/16 v1, 0xa

    const/16 v0, 0x43

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/rO;->A00(III)Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x1

    new-instance v0, Lcom/facebook/ads/redexgen/X/rO;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/rO;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/rO;->A03:Lcom/facebook/ads/redexgen/X/rO;

    .line 3600
    const/16 v2, 0x1a

    const/16 v1, 0xc

    const/16 v0, 0x39

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/rO;->A00(III)Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x2

    new-instance v0, Lcom/facebook/ads/redexgen/X/rO;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/rO;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/rO;->A04:Lcom/facebook/ads/redexgen/X/rO;

    .line 3601
    invoke-static {}, Lcom/facebook/ads/redexgen/X/rO;->A02()[Lcom/facebook/ads/redexgen/X/rO;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/rO;->A01:[Lcom/facebook/ads/redexgen/X/rO;

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

    .line 106312
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/rO;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x62

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

    const/16 v0, 0x26

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/rO;->A00:[B

    return-void

    :array_0
    .array-data 1
        0x4ft
        0x44t
        0x57t
        0x44t
        0x53t
        0x5et
        0x53t
        0x44t
        0x46t
        0x48t
        0x52t
        0x55t
        0x44t
        0x53t
        0x44t
        0x45t
        0x73t
        0x64t
        0x66t
        0x68t
        0x72t
        0x75t
        0x64t
        0x73t
        0x64t
        0x65t
        0xet
        0x15t
        0x9t
        0x1et
        0x1ct
        0x12t
        0x8t
        0xft
        0x1et
        0x9t
        0x1et
        0x1ft
    .end array-data
.end method

.method public static synthetic A02()[Lcom/facebook/ads/redexgen/X/rO;
    .locals 3

    .line 106313
    const/4 v0, 0x3

    new-array v2, v0, [Lcom/facebook/ads/redexgen/X/rO;

    sget-object v1, Lcom/facebook/ads/redexgen/X/rO;->A02:Lcom/facebook/ads/redexgen/X/rO;

    const/4 v0, 0x0

    aput-object v1, v2, v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/rO;->A03:Lcom/facebook/ads/redexgen/X/rO;

    const/4 v0, 0x1

    aput-object v1, v2, v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/rO;->A04:Lcom/facebook/ads/redexgen/X/rO;

    const/4 v0, 0x2

    aput-object v1, v2, v0

    return-object v2
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/rO;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 106314
    const-class v0, Lcom/facebook/ads/redexgen/X/rO;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/rO;

    return-object v0
.end method

.method public static values()[Lcom/facebook/ads/redexgen/X/rO;
    .locals 1

    .line 106315
    sget-object v0, Lcom/facebook/ads/redexgen/X/rO;->A01:[Lcom/facebook/ads/redexgen/X/rO;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/ads/redexgen/X/rO;

    return-object v0
.end method
