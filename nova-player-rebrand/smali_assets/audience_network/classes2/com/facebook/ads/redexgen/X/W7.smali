.class public final Lcom/facebook/ads/redexgen/X/W7;
.super Lcom/facebook/ads/redexgen/X/Wc;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/W6;->A04(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A07:[B


# instance fields
.field public final synthetic A00:J

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/W6;

.field public final synthetic A02:Ljava/lang/String;

.field public final synthetic A03:Ljava/lang/String;

.field public final synthetic A04:Ljava/lang/String;

.field public final synthetic A05:Z

.field public final synthetic A06:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/W7;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/W6;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 70188
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/W7;->A01:Lcom/facebook/ads/redexgen/X/W6;

    iput-boolean p2, p0, Lcom/facebook/ads/redexgen/X/W7;->A06:Z

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/W7;->A02:Ljava/lang/String;

    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/W7;->A04:Ljava/lang/String;

    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/W7;->A03:Ljava/lang/String;

    iput-wide p6, p0, Lcom/facebook/ads/redexgen/X/W7;->A00:J

    iput-boolean p8, p0, Lcom/facebook/ads/redexgen/X/W7;->A05:Z

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Wc;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/W7;->A07:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x52

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

    const/16 v0, 0x69

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/W7;->A07:[B

    return-void

    :array_0
    .array-data 1
        0x15t
        0x21t
        0x1ft
        -0x20t
        0x18t
        0x13t
        0x15t
        0x17t
        0x14t
        0x21t
        0x21t
        0x1dt
        -0x20t
        0x1dt
        0x13t
        0x26t
        0x13t
        0x20t
        0x13t
        -0x20t
        0x22t
        0x24t
        0x21t
        0x28t
        0x1bt
        0x16t
        0x17t
        0x24t
        -0x20t
        -0x5t
        0x20t
        0x25t
        0x26t
        0x13t
        0x1et
        0x1et
        0x4t
        0x17t
        0x18t
        0x17t
        0x24t
        0x24t
        0x17t
        0x24t
        0x2t
        0x24t
        0x21t
        0x28t
        0x1bt
        0x16t
        0x17t
        0x24t
        -0x4at
        -0x3et
        -0x40t
        -0x7ft
        -0x44t
        -0x3ft
        -0x3at
        -0x39t
        -0x4ct
        -0x46t
        -0x3bt
        -0x4ct
        -0x40t
        -0x7ft
        -0x4at
        -0x3et
        -0x3ft
        -0x39t
        -0x48t
        -0x3ft
        -0x39t
        -0x3dt
        -0x3bt
        -0x3et
        -0x37t
        -0x44t
        -0x49t
        -0x48t
        -0x3bt
        -0x7ft
        -0x64t
        -0x3ft
        -0x3at
        -0x39t
        -0x4ct
        -0x41t
        -0x41t
        -0x5bt
        -0x48t
        -0x47t
        -0x48t
        -0x3bt
        -0x3bt
        -0x48t
        -0x3bt
        -0x5dt
        -0x3bt
        -0x3et
        -0x37t
        -0x44t
        -0x49t
        -0x48t
        -0x3bt
    .end array-data
.end method


# virtual methods
.method public final A07()V
    .locals 11

    .line 70189
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/W7;->A01:Lcom/facebook/ads/redexgen/X/W6;

    iget-boolean v5, p0, Lcom/facebook/ads/redexgen/X/W7;->A06:Z

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/W7;->A02:Ljava/lang/String;

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/W7;->A04:Ljava/lang/String;

    iget-object v8, p0, Lcom/facebook/ads/redexgen/X/W7;->A03:Ljava/lang/String;

    iget-wide v9, p0, Lcom/facebook/ads/redexgen/X/W7;->A00:J

    .line 70190
    const/4 v2, 0x0

    const/16 v1, 0x34

    const/16 v0, 0x60

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/W7;->A00(III)Ljava/lang/String;

    move-result-object v4

    invoke-static/range {v3 .. v10}, Lcom/facebook/ads/redexgen/X/W6;->A02(Lcom/facebook/ads/redexgen/X/W6;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z

    move-result v0

    .line 70191
    .local v0, "fb4aResult":Z
    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/W7;->A05:Z

    if-eqz v0, :cond_0

    .line 70192
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/W7;->A01:Lcom/facebook/ads/redexgen/X/W6;

    iget-boolean v5, p0, Lcom/facebook/ads/redexgen/X/W7;->A06:Z

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/W7;->A02:Ljava/lang/String;

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/W7;->A04:Ljava/lang/String;

    iget-object v8, p0, Lcom/facebook/ads/redexgen/X/W7;->A03:Ljava/lang/String;

    iget-wide v9, p0, Lcom/facebook/ads/redexgen/X/W7;->A00:J

    const/16 v2, 0x34

    const/16 v1, 0x35

    const/4 v0, 0x1

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/W7;->A00(III)Ljava/lang/String;

    move-result-object v4

    invoke-static/range {v3 .. v10}, Lcom/facebook/ads/redexgen/X/W6;->A02(Lcom/facebook/ads/redexgen/X/W6;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z

    .line 70193
    :cond_0
    return-void
.end method
