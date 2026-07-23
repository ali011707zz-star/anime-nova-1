.class public final enum Lcom/facebook/ads/redexgen/X/Vt;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Vu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PayloadType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/ads/redexgen/X/Vt;",
        ">;"
    }
.end annotation


# static fields
.field public static A00:[B

.field public static A01:[Ljava/lang/String;

.field public static final synthetic A02:[Lcom/facebook/ads/redexgen/X/Vt;

.field public static final enum A03:Lcom/facebook/ads/redexgen/X/Vt;

.field public static final enum A04:Lcom/facebook/ads/redexgen/X/Vt;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 2159
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "muyYqE"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "E9PpaFAJE9Hnt4d"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "ghgofcX6zvMHlgudfTaqS8Nc5lCgt2E9"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "YIYOJOVvACGtG0gL9GV7SlNTtBEERz"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "JgOQfSPAOiHiw6Rg9nCac4dnqR1hKwEe"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "B0OWkxWZ1EYllgtprLWqObgHiHWKfwuG"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "4mHTrr1U8XEd9q"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "nBr2KfKPMHO8Xb5ORNsKNBZ88yN02YcX"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Vt;->A01:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Vt;->A01()V

    const/4 v2, 0x0

    const/4 v1, 0x2

    const/4 v0, 0x7

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Vt;->A00(III)Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/Vt;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/Vt;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Vt;->A03:Lcom/facebook/ads/redexgen/X/Vt;

    .line 2160
    const/4 v2, 0x2

    const/4 v1, 0x4

    const/16 v0, 0x37

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Vt;->A00(III)Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Vt;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/Vt;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Vt;->A04:Lcom/facebook/ads/redexgen/X/Vt;

    .line 2161
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Vt;->A02()[Lcom/facebook/ads/redexgen/X/Vt;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Vt;->A02:[Lcom/facebook/ads/redexgen/X/Vt;

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

    .line 69805
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/Vt;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const/4 p0, 0x0

    :goto_0
    array-length p1, v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Vt;->A01:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v2, v2, v0

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Vt;->A01:[Ljava/lang/String;

    const-string v1, "ButKfEyieReZO2wb3N14oIodeWUfkj1h"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "KKvBf6HmkOg9UJ27XgqfLe6TaNBCJiNp"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-ge p0, p1, :cond_1

    aget-byte v0, v3, p0

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x16

    int-to-byte v0, v0

    aput-byte v0, v3, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .locals 1

    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Vt;->A00:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x58t
        0x55t
        0x6ft
        0x6et
        0x6ft
        0x64t
    .end array-data
.end method

.method public static synthetic A02()[Lcom/facebook/ads/redexgen/X/Vt;
    .locals 3

    .line 69806
    const/4 v0, 0x2

    new-array v2, v0, [Lcom/facebook/ads/redexgen/X/Vt;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Vt;->A03:Lcom/facebook/ads/redexgen/X/Vt;

    const/4 v0, 0x0

    aput-object v1, v2, v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/Vt;->A04:Lcom/facebook/ads/redexgen/X/Vt;

    const/4 v0, 0x1

    aput-object v1, v2, v0

    return-object v2
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Vt;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 69807
    const-class v0, Lcom/facebook/ads/redexgen/X/Vt;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Vt;

    return-object v0
.end method

.method public static values()[Lcom/facebook/ads/redexgen/X/Vt;
    .locals 1

    .line 69808
    sget-object v0, Lcom/facebook/ads/redexgen/X/Vt;->A02:[Lcom/facebook/ads/redexgen/X/Vt;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/ads/redexgen/X/Vt;

    return-object v0
.end method
