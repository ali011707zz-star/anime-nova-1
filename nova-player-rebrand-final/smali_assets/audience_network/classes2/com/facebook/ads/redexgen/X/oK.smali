.class public final Lcom/facebook/ads/redexgen/X/oK;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/8v;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/12;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "AudioSinkListener"
.end annotation


# static fields
.field public static A01:[B

.field public static A02:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/12;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 3325
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "W3zKx7uimPBnuqB79eRuk71Lq6Q9Tdtq"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "pdw5IcOEDsyx"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "PznYxCtiabQ1XXQUVp9BfEAYIGk6ZsUE"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "E1k4hPJKfb0MvebzJOZYusmHHBWvORO7"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "bmueFxdYYt0nqn8p"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "GRfRtgnBgmJZB0Qq"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "VS7ML1wDeymmTLeKFRcttz7uEm3bVRGQ"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/oK;->A02:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/oK;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/12;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 102217
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/oK;->A00:Lcom/facebook/ads/redexgen/X/12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/12;Lcom/facebook/ads/redexgen/X/9R;)V
    .locals 0

    .line 102218
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/oK;-><init>(Lcom/facebook/ads/redexgen/X/12;)V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/oK;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const/4 p0, 0x0

    :goto_0
    array-length p1, v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/oK;->A02:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/oK;->A02:[Ljava/lang/String;

    const-string v1, "fuFs1gweK6T0kCx4bj1F2DHsk5QuVwMS"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-ge p0, p1, :cond_1

    aget-byte v0, v3, p0

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x8

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

    const/16 v0, 0x36

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/oK;->A01:[B

    return-void

    :array_0
    .array-data 1
        0x2ft
        0x1bt
        0xat
        0x7t
        0x1t
        0x4et
        0x1dt
        0x7t
        0x0t
        0x5t
        0x4et
        0xbt
        0x1ct
        0x1ct
        0x1t
        0x1ct
        0x20t
        0x8t
        0x9t
        0x4t
        0xct
        0x2et
        0x2t
        0x9t
        0x8t
        0xet
        0x2ct
        0x18t
        0x9t
        0x4t
        0x2t
        0x3ft
        0x8t
        0x3t
        0x9t
        0x8t
        0x1ft
        0x8t
        0x1ft
        0x37t
        0x36t
        0xbt
        0x34t
        0x3dt
        0x3dt
        0x28t
        0x18t
        0x19t
        0x20t
        0x16t
        0x1ct
        0x12t
        0x2t
        0x7t
    .end array-data
.end method


# virtual methods
.method public final AD6(Ljava/lang/Exception;)V
    .locals 4

    .line 102219
    const/16 v2, 0x10

    const/16 v1, 0x17

    const/16 v0, 0x65

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/oK;->A00(III)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0x10

    const/16 v0, 0x66

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/oK;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, p1}, Lcom/facebook/ads/redexgen/X/4g;->A08(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 102220
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oK;->A00:Lcom/facebook/ads/redexgen/X/12;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/12;->A06(Lcom/facebook/ads/redexgen/X/12;)Lcom/facebook/ads/redexgen/X/8o;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/8o;->A0D(Ljava/lang/Exception;)V

    .line 102221
    return-void
.end method

.method public final AD7(Lcom/facebook/ads/redexgen/X/8r;)V
    .locals 1

    .line 102222
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oK;->A00:Lcom/facebook/ads/redexgen/X/12;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/12;->A06(Lcom/facebook/ads/redexgen/X/12;)Lcom/facebook/ads/redexgen/X/8o;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/8o;->A0B(Lcom/facebook/ads/redexgen/X/8r;)V

    .line 102223
    return-void
.end method

.method public final AD8(Lcom/facebook/ads/redexgen/X/8r;)V
    .locals 1

    .line 102224
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oK;->A00:Lcom/facebook/ads/redexgen/X/12;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/12;->A06(Lcom/facebook/ads/redexgen/X/12;)Lcom/facebook/ads/redexgen/X/8o;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/8o;->A0C(Lcom/facebook/ads/redexgen/X/8r;)V

    .line 102225
    return-void
.end method

.method public final AF2()V
    .locals 3

    .line 102226
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oK;->A00:Lcom/facebook/ads/redexgen/X/12;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/12;->A05(Lcom/facebook/ads/redexgen/X/12;)Lcom/facebook/ads/redexgen/X/7h;

    const/4 v0, 0x0

    if-eqz v0, :cond_0

    .line 102227
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oK;->A00:Lcom/facebook/ads/redexgen/X/12;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/12;->A05(Lcom/facebook/ads/redexgen/X/12;)Lcom/facebook/ads/redexgen/X/7h;

    const/16 v2, 0x2e

    const/16 v1, 0x8

    const/16 v0, 0x7f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/oK;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102228
    :cond_0
    return-void
.end method

.method public final AF3()V
    .locals 3

    .line 102229
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oK;->A00:Lcom/facebook/ads/redexgen/X/12;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/12;->A05(Lcom/facebook/ads/redexgen/X/12;)Lcom/facebook/ads/redexgen/X/7h;

    const/4 v0, 0x0

    if-eqz v0, :cond_0

    .line 102230
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oK;->A00:Lcom/facebook/ads/redexgen/X/12;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/12;->A05(Lcom/facebook/ads/redexgen/X/12;)Lcom/facebook/ads/redexgen/X/7h;

    const/16 v2, 0x27

    const/4 v1, 0x7

    const/16 v0, 0x50

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/oK;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102231
    :cond_0
    return-void
.end method

.method public final AFN(J)V
    .locals 1

    .line 102232
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oK;->A00:Lcom/facebook/ads/redexgen/X/12;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/12;->A06(Lcom/facebook/ads/redexgen/X/12;)Lcom/facebook/ads/redexgen/X/8o;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/8o;->A03(J)V

    .line 102233
    return-void
.end method

.method public final AFO()V
    .locals 1

    .line 102234
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oK;->A00:Lcom/facebook/ads/redexgen/X/12;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/12;->A26()V

    .line 102235
    return-void
.end method

.method public final AFy(Z)V
    .locals 1

    .line 102236
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oK;->A00:Lcom/facebook/ads/redexgen/X/12;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/12;->A06(Lcom/facebook/ads/redexgen/X/12;)Lcom/facebook/ads/redexgen/X/8o;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/8o;->A0I(Z)V

    .line 102237
    return-void
.end method

.method public final AGJ(IJJ)V
    .locals 6

    .line 102238
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oK;->A00:Lcom/facebook/ads/redexgen/X/12;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/12;->A06(Lcom/facebook/ads/redexgen/X/12;)Lcom/facebook/ads/redexgen/X/8o;

    move-result-object v0

    move-wide v4, p4

    move-wide v2, p2

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/8o;->A01(IJJ)V

    .line 102239
    return-void
.end method
