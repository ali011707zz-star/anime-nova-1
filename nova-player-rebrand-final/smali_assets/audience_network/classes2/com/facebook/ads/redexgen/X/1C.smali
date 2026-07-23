.class public final Lcom/facebook/ads/redexgen/X/1C;
.super Lcom/facebook/ads/redexgen/X/2S;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/CC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Is"
.end annotation


# static fields
.field public static A01:[B

.field public static A02:[Ljava/lang/String;


# instance fields
.field public final A00:C


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 74
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "9yE19"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "zOI7IBt"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "QcxtIsV3beme0fSshBZEiAbzAb"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "54lX5AjhAsj9h7"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "50Stt6"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "IBfS2nVlEcQ7MYOv0zA4iOMcJ"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "2Gh0ygEYZnFezhOBR"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "xA0qoezlN6x4dJxmGj9eAbu4w6XV572R"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/1C;->A02:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/1C;->A01()V

    return-void
.end method

.method public constructor <init>(C)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "match"
        }
    .end annotation

    .line 5028
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/2S;-><init>()V

    .line 5029
    iput-char p1, p0, Lcom/facebook/ads/redexgen/X/1C;->A00:C

    .line 5030
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/1C;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    const/4 p0, 0x0

    :goto_0
    array-length v0, p1

    if-ge p0, v0, :cond_1

    aget-byte v0, p1, p0

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x73

    int-to-byte v3, v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/1C;->A02:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1a

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/1C;->A02:[Ljava/lang/String;

    const-string v1, "Dls36CWZuql1"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    aput-byte v3, p1, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .locals 4

    const/16 v0, 0x12

    new-array v3, v0, [B

    fill-array-data v3, :array_0

    sget-object v1, Lcom/facebook/ads/redexgen/X/1C;->A02:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1b

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/1C;->A02:[Ljava/lang/String;

    const-string v1, "urSdB"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "hh6CYTzAaza6NCd4D"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    sput-object v3, Lcom/facebook/ads/redexgen/X/1C;->A01:[B

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    nop

    :array_0
    .array-data 1
        0x37t
        0x39t
        0x19t
        0x32t
        0x3bt
        0x28t
        0x17t
        0x3bt
        0x2et
        0x39t
        0x32t
        0x3ft
        0x28t
        0x74t
        0x33t
        0x29t
        0x72t
        0x7dt
    .end array-data
.end method


# virtual methods
.method public final A09(C)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "c"
        }
    .end annotation

    .line 5031
    iget-char v0, p0, Lcom/facebook/ads/redexgen/X/1C;->A00:C

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 5032
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x2

    const/16 v1, 0x10

    const/16 v0, 0x29

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1C;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-char v0, p0, Lcom/facebook/ads/redexgen/X/1C;->A00:C

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/CC;->A05(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v1, 0x2

    const/16 v0, 0x63

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1C;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
