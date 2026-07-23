.class public final Lcom/facebook/ads/redexgen/X/83;
.super Lcom/facebook/ads/redexgen/X/kH;
.source ""


# static fields
.field public static A02:[B

.field public static final A03:Ljava/lang/String;


# instance fields
.field public final A00:Landroid/net/Uri;

.field public final A01:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 492
    invoke-static {}, Lcom/facebook/ads/redexgen/X/83;->A01()V

    const-class v0, Lcom/facebook/ads/redexgen/X/83;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/83;->A03:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/VA;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Map;Lcom/facebook/ads/redexgen/X/N0;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/gi;",
            "Lcom/facebook/ads/redexgen/X/VA;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/facebook/ads/redexgen/X/N0;",
            "Z)V"
        }
    .end annotation

    .line 22160
    .local p5, "mExtraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object v0, p0

    move-object v3, p3

    move v5, p7

    move-object v2, p2

    move-object v4, p6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/kH;-><init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/VA;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/N0;Z)V

    .line 22161
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/83;->A00:Landroid/net/Uri;

    .line 22162
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/83;->A01:Ljava/util/Map;

    .line 22163
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/83;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x6c

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

    const/16 v0, 0x1d

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/83;->A02:[B

    return-void

    :array_0
    .array-data 1
        0x5dt
        0x7at
        0x72t
        0x77t
        0x7et
        0x7ft
        0x3bt
        0x6ft
        0x74t
        0x3bt
        0x74t
        0x6bt
        0x7et
        0x75t
        0x3bt
        0x77t
        0x72t
        0x75t
        0x70t
        0x3bt
        0x6et
        0x69t
        0x77t
        0x21t
        0x3bt
        0x43t
        0x46t
        0x41t
        0x44t
    .end array-data
.end method


# virtual methods
.method public final A0H()Lcom/facebook/ads/redexgen/X/Mq;
    .locals 2

    .line 22164
    sget-object v1, Lcom/facebook/ads/redexgen/X/Mq;->A09:Lcom/facebook/ads/redexgen/X/Mq;

    .line 22165
    .local v0, "actionOutcome":Lcom/facebook/ads/redexgen/X/Mq;
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/kH;->A03:Z

    if-eqz v0, :cond_0

    .line 22166
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/83;->A0M()Lcom/facebook/ads/redexgen/X/Mq;

    move-result-object v1

    .line 22167
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/83;->A01:Ljava/util/Map;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/kH;->A0J(Ljava/util/Map;Lcom/facebook/ads/redexgen/X/Mq;)V

    .line 22168
    return-object v1
.end method

.method public final A0M()Lcom/facebook/ads/redexgen/X/Mq;
    .locals 7

    .line 22169
    sget-object v6, Lcom/facebook/ads/redexgen/X/Mq;->A09:Lcom/facebook/ads/redexgen/X/Mq;

    .line 22170
    .local v0, "actionOutcome":Lcom/facebook/ads/redexgen/X/Mq;
    :try_start_0
    new-instance v5, Lcom/facebook/ads/redexgen/X/X6;

    invoke-direct {v5}, Lcom/facebook/ads/redexgen/X/X6;-><init>()V

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Mt;->A01:Lcom/facebook/ads/redexgen/X/gi;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/83;->A00:Landroid/net/Uri;

    const/16 v2, 0x19

    const/4 v1, 0x4

    const/16 v0, 0x43

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/83;->A00(III)Ljava/lang/String;

    move-result-object v0

    .line 22171
    invoke-virtual {v3, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XB;->A00(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Mt;->A03:Ljava/lang/String;

    .line 22172
    invoke-static {v5, v4, v1, v0}, Lcom/facebook/ads/redexgen/X/X6;->A0D(Lcom/facebook/ads/redexgen/X/X6;Lcom/facebook/ads/redexgen/X/gi;Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22173
    .local v1, "ex":Ljava/lang/Exception;
    :catch_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/16 v1, 0x19

    const/16 v0, 0x77

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/83;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/83;->A00:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22174
    sget-object v6, Lcom/facebook/ads/redexgen/X/Mq;->A04:Lcom/facebook/ads/redexgen/X/Mq;

    .line 22175
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_0
    return-object v6
.end method
