.class public final Lcom/facebook/ads/redexgen/X/cc;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/TW;


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/T8;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/T8;)V
    .locals 0

    .line 79262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79263
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/cc;->A00:Lcom/facebook/ads/redexgen/X/T8;

    .line 79264
    return-void
.end method


# virtual methods
.method public final A7z()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 79265
    invoke-static {}, Lcom/facebook/ads/redexgen/X/UG;->A00()Lcom/facebook/ads/redexgen/X/UG;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cc;->A00:Lcom/facebook/ads/redexgen/X/T8;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/UG;->A02(Lcom/facebook/ads/redexgen/X/T8;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final AAi()Z
    .locals 1

    .line 79266
    invoke-static {}, Lcom/facebook/ads/redexgen/X/XD;->A04()Z

    move-result v0

    return v0
.end method
