.class public final Lcom/facebook/ads/redexgen/X/AO;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/5Y;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/1k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# instance fields
.field public A00:I

.field public A01:I

.field public A02:Lcom/facebook/ads/redexgen/X/5t;

.field public A03:Lcom/facebook/ads/redexgen/X/kj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/kj<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public A04:Ljava/lang/String;

.field public A05:Z

.field public A06:Z

.field public final A07:Lcom/facebook/ads/redexgen/X/5o;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29020
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29021
    new-instance v0, Lcom/facebook/ads/redexgen/X/5o;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/5o;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/AO;->A07:Lcom/facebook/ads/redexgen/X/5o;

    .line 29022
    const/16 v0, 0x1f40

    iput v0, p0, Lcom/facebook/ads/redexgen/X/AO;->A00:I

    .line 29023
    iput v0, p0, Lcom/facebook/ads/redexgen/X/AO;->A01:I

    .line 29024
    return-void
.end method


# virtual methods
.method public final A00(Lcom/facebook/ads/redexgen/X/5t;)Lcom/facebook/ads/redexgen/X/AO;
    .locals 0

    .line 29025
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/AO;->A02:Lcom/facebook/ads/redexgen/X/5t;

    .line 29026
    return-object p0
.end method

.method public final A01(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/AO;
    .locals 0

    .line 29027
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/AO;->A04:Ljava/lang/String;

    .line 29028
    return-object p0
.end method

.method public final A02()Lcom/facebook/ads/redexgen/X/1k;
    .locals 10

    .line 29029
    new-instance v1, Lcom/facebook/ads/redexgen/X/1k;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/AO;->A04:Ljava/lang/String;

    iget v3, p0, Lcom/facebook/ads/redexgen/X/AO;->A00:I

    iget v4, p0, Lcom/facebook/ads/redexgen/X/AO;->A01:I

    iget-boolean v5, p0, Lcom/facebook/ads/redexgen/X/AO;->A05:Z

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/AO;->A07:Lcom/facebook/ads/redexgen/X/5o;

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/AO;->A03:Lcom/facebook/ads/redexgen/X/kj;

    iget-boolean v8, p0, Lcom/facebook/ads/redexgen/X/AO;->A06:Z

    const/4 v9, 0x0

    invoke-direct/range {v1 .. v9}, Lcom/facebook/ads/redexgen/X/1k;-><init>(Ljava/lang/String;IIZLcom/facebook/ads/redexgen/X/5o;Lcom/facebook/ads/redexgen/X/kj;ZLcom/facebook/ads/redexgen/X/5j;)V

    .line 29030
    .local v0, "dataSource":Lcom/facebook/ads/redexgen/X/1k;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AO;->A02:Lcom/facebook/ads/redexgen/X/5t;

    if-eqz v0, :cond_0

    .line 29031
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AO;->A02:Lcom/facebook/ads/redexgen/X/5t;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/AQ;->A43(Lcom/facebook/ads/redexgen/X/5t;)V

    .line 29032
    :cond_0
    return-object v1
.end method

.method public final bridge synthetic A5I()Lcom/facebook/ads/redexgen/X/pF;
    .locals 1

    .line 29033
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/AO;->A02()Lcom/facebook/ads/redexgen/X/1k;

    move-result-object v0

    return-object v0
.end method
