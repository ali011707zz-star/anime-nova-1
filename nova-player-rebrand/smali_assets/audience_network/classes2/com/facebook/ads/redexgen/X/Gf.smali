.class public final Lcom/facebook/ads/redexgen/X/Gf;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Ya;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Ge;->A07()Lcom/facebook/ads/redexgen/X/Yb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A01:[B

.field public static A02:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Ge;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 754
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "csDJTKMsYdQDTZ6oaAKl5T8I2UfElmlw"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "ZPoBWwRbmlxJW4JBXeHiCznpgduRwX0R"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "YnHNxwrcL4VP2rzDabEPBpSRhKQlF70O"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "ZXjFBdL6N8QRVPocRq4T6yjW"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "DvDV4BG5U2fSuPxyYCt3atNQBem4gb3r"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "Lz5NxPzXDVZYAcKGP0xvxFjIAyYktO5Y"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "USLnjf5V4FwfzNcoOXwUO87ZM5qcDzRn"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "2jpbWPspWwKCP4YD7vZxOkEv1N6M1MwD"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Gf;->A02:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Gf;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Ge;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 37539
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Gf;->A00:Lcom/facebook/ads/redexgen/X/Ge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Gf;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x59

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
    .locals 4

    const/4 v3, 0x4

    sget-object v1, Lcom/facebook/ads/redexgen/X/Gf;->A02:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x32

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/Gf;->A02:[Ljava/lang/String;

    const-string v1, "dLINtRlzHu"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    new-array v0, v3, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Gf;->A01:[B

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :array_0
    .array-data 1
        0x75t
        0x6dt
        0x6ft
        0x76t
    .end array-data
.end method


# virtual methods
.method public final ACl(Lcom/facebook/ads/redexgen/X/Yb;)V
    .locals 4

    .line 37540
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Yb;->getToolbarActionMode()I

    move-result v1

    const/16 v0, 0x8

    if-ne v1, v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gf;->A00:Lcom/facebook/ads/redexgen/X/Ge;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ge;->A0B(Lcom/facebook/ads/redexgen/X/Ge;)Lcom/facebook/ads/redexgen/X/Ij;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 37541
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gf;->A00:Lcom/facebook/ads/redexgen/X/Ge;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ge;->A06(Lcom/facebook/ads/redexgen/X/Ge;)Lcom/facebook/ads/redexgen/X/VI;

    move-result-object v2

    sget-object v1, Lcom/facebook/ads/redexgen/X/VH;->A0Y:Lcom/facebook/ads/redexgen/X/VH;

    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VI;->A04(Lcom/facebook/ads/redexgen/X/VH;Ljava/util/Map;)V

    .line 37542
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gf;->A00:Lcom/facebook/ads/redexgen/X/Ge;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ge;->A0B(Lcom/facebook/ads/redexgen/X/Ge;)Lcom/facebook/ads/redexgen/X/Ij;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v1, 0x4

    const/16 v0, 0x5f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Gf;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/Ij;->A1D(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Mq;

    .line 37543
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gf;->A00:Lcom/facebook/ads/redexgen/X/Ge;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ge;->A0R(Lcom/facebook/ads/redexgen/X/Ge;)V

    .line 37544
    :goto_0
    return-void

    .line 37545
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gf;->A00:Lcom/facebook/ads/redexgen/X/Ge;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ge;->A0Q(Lcom/facebook/ads/redexgen/X/Ge;)V

    goto :goto_0
.end method
