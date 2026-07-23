.class public final Lcom/facebook/ads/redexgen/X/6f;
.super Lcom/facebook/ads/redexgen/X/PW;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Z2;->A02(Lcom/facebook/ads/redexgen/X/jd;)Lcom/facebook/ads/redexgen/X/Ow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A01:[B

.field public static A02:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Z2;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 441
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "69whQSJFXzC5tMS1mvBQof2SK7ErE5ZD"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "1jHEgafKgZ1qGtZeFln5jYEaZuoTSi1L"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "X7dL0uEA8hI8yFDxVjmpGWGPGaRf3imC"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "xkNxR1N5ht6u5HrBYV6Jaj9BRbbqvvjX"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "FzWiIV8jsRMCATg74qRy8XJg"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "NPgeBhkCK5cdUCtVbQG3V7Bzbyz9qF6p"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "wkBgnizDM2wMuU"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "fQJYdDBiu8hI0YoMzyDMv7ESaoH1tCRU"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/6f;->A02:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/6f;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Z2;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 17700
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/6f;->A00:Lcom/facebook/ads/redexgen/X/Z2;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/PW;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/6f;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const/4 p0, 0x0

    :goto_0
    array-length p1, v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/6f;->A02:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v2, v2, v0

    const/16 v0, 0x1e

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/6f;->A02:[Ljava/lang/String;

    const-string v1, "zFlqgUHcpRBmVFunDUsFQIo1zDN3Ly6W"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "vgtBZdmtnd3XTM9GsG6r3isUaM0HNLHl"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-ge p0, p1, :cond_0

    aget-byte v0, v3, p0

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x4

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

    const/4 v0, 0x1

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/6f;->A01:[B

    return-void

    nop

    :array_0
    .array-data 1
        -0x66t
    .end array-data
.end method


# virtual methods
.method public final A4j(Ljava/lang/String;)V
    .locals 4

    .line 17701
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v0, 0x5c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/6f;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6f;->A00:Lcom/facebook/ads/redexgen/X/Z2;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Z2;->A0A(Lcom/facebook/ads/redexgen/X/Z2;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 17702
    .local v0, "intent":Landroid/content/Intent;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6f;->A00:Lcom/facebook/ads/redexgen/X/Z2;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Z2;->A00(Lcom/facebook/ads/redexgen/X/Z2;)Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/P2;->A00(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/P2;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/P2;->A07(Landroid/content/Intent;)Z

    .line 17703
    return-void
.end method
