.class public final Lcom/facebook/ads/redexgen/X/V6;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/V7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AdEventBuilder"
.end annotation


# instance fields
.field public A00:D

.field public A01:Lcom/facebook/ads/redexgen/X/VC;

.field public A02:Lcom/facebook/ads/redexgen/X/VD;

.field public A03:Ljava/lang/String;

.field public A04:Ljava/lang/String;

.field public A05:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public A06:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 69156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A00(D)Lcom/facebook/ads/redexgen/X/V6;
    .locals 0

    .line 69157
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/V6;->A00:D

    .line 69158
    return-object p0
.end method

.method public final A01(Lcom/facebook/ads/redexgen/X/VC;)Lcom/facebook/ads/redexgen/X/V6;
    .locals 0

    .line 69159
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/V6;->A01:Lcom/facebook/ads/redexgen/X/VC;

    .line 69160
    return-object p0
.end method

.method public final A02(Lcom/facebook/ads/redexgen/X/VD;)Lcom/facebook/ads/redexgen/X/V6;
    .locals 0

    .line 69161
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/V6;->A02:Lcom/facebook/ads/redexgen/X/VD;

    .line 69162
    return-object p0
.end method

.method public final A03(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/V6;
    .locals 0

    .line 69163
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/V6;->A03:Ljava/lang/String;

    .line 69164
    return-object p0
.end method

.method public final A04(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/V6;
    .locals 0

    .line 69165
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/V6;->A04:Ljava/lang/String;

    .line 69166
    return-object p0
.end method

.method public final A05(Ljava/util/Map;)Lcom/facebook/ads/redexgen/X/V6;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/facebook/ads/redexgen/X/V6;"
        }
    .end annotation

    .line 69167
    .local p1, "mData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/V6;->A05:Ljava/util/Map;

    .line 69168
    return-object p0
.end method

.method public final A06(Z)Lcom/facebook/ads/redexgen/X/V6;
    .locals 0

    .line 69169
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/V6;->A06:Z

    .line 69170
    return-object p0
.end method

.method public final A07(Lcom/facebook/ads/redexgen/X/T8;)Lcom/facebook/ads/redexgen/X/V7;
    .locals 10

    .line 69171
    new-instance v0, Lcom/facebook/ads/redexgen/X/V7;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/V6;->A04:Ljava/lang/String;

    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/V6;->A00:D

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/V6;->A03:Ljava/lang/String;

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/V6;->A05:Ljava/util/Map;

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/V6;->A01:Lcom/facebook/ads/redexgen/X/VC;

    iget-object v8, p0, Lcom/facebook/ads/redexgen/X/V6;->A02:Lcom/facebook/ads/redexgen/X/VD;

    iget-boolean v9, p0, Lcom/facebook/ads/redexgen/X/V6;->A06:Z

    move-object v1, p1

    invoke-direct/range {v0 .. v9}, Lcom/facebook/ads/redexgen/X/V7;-><init>(Lcom/facebook/ads/redexgen/X/T8;Ljava/lang/String;DLjava/lang/String;Ljava/util/Map;Lcom/facebook/ads/redexgen/X/VC;Lcom/facebook/ads/redexgen/X/VD;Z)V

    return-object v0
.end method
